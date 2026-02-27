#!/bin/bash
# Sistema de Spaced Repetition (Algoritmo SM-2 simplificado)
# Baseado em: SuperMemo, Anki

source "$(dirname "$0")/common.sh"

check_module

# Verificar dependências
if ! command -v jq &> /dev/null; then
    print_error "'jq' não instalado. Execute: brew install jq"
    exit 1
fi

CARDS_DB="$TOPIC_PATH/knowledge/spaced-repetition.jsonl"
mkdir -p "$TOPIC_PATH/knowledge"
touch "$CARDS_DB"

# Função para calcular próxima revisão (algoritmo SM-2 simplificado)
calculate_next_review() {
    local quality=$1  # 0-5 (0=falhou, 5=perfeito)
    local interval=$2  # dias desde última revisão
    local easiness=$3  # fator de facilidade (1.3-2.5)
    
    # Atualizar easiness
    local new_easiness=$(echo "$easiness + 0.1 - (5 - $quality) * (0.08 + (5 - $quality) * 0.02)" | bc -l)
    
    # Limitar easiness entre 1.3 e 2.5
    new_easiness=$(echo "if ($new_easiness < 1.3) 1.3 else if ($new_easiness > 2.5) 2.5 else $new_easiness" | bc -l)
    
    # Calcular próximo intervalo
    local new_interval
    if [ "$quality" -lt 3 ]; then
        new_interval=1  # Falhou: revisar amanhã
    elif [ "$interval" -eq 0 ]; then
        new_interval=1  # Primeiro review: 1 dia
    elif [ "$interval" -eq 1 ]; then
        new_interval=3  # Segundo review: 3 dias
    else
        new_interval=$(echo "$interval * $new_easiness" | bc -l | cut -d. -f1)
    fi
    
    echo "$new_interval|$new_easiness"
}

# Função para adicionar card
add_card() {
    local front="$1"
    local back="$2"
    local category="${3:-geral}"
    
    local random_suffix=$(( RANDOM % 10000 ))
    local card_id="$(date +%s)${random_suffix}"
    local today=$(date +%Y-%m-%d)
    
    cat >> "$CARDS_DB" << EOF
{"id":"$card_id","front":"$front","back":"$back","category":"$category","created":"$today","next_review":"$today","interval":0,"easiness":2.5,"reviews":0}
EOF
    
    echo -e "${GREEN}✅ Card adicionado: #$card_id${NC}"
}

# Função para listar cards que vencem hoje
list_due_cards() {
    local today=$(date +%Y-%m-%d)
    local count=0
    
    echo -e "${BLUE}📅 Cards para revisar hoje ($today):${NC}"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    
    while IFS= read -r line; do
        if [ -z "$line" ]; then continue; fi
        
        local next_review=$(echo "$line" | jq -r '.next_review')
        
        # Comparar datas (formato YYYY-MM-DD é lexicograficamente comparável)
        if [[ "$next_review" < "$today" ]] || [[ "$next_review" == "$today" ]]; then
            count=$((count + 1))
            local id=$(echo "$line" | jq -r '.id')
            local front=$(echo "$line" | jq -r '.front')
            local category=$(echo "$line" | jq -r '.category')
            local interval=$(echo "$line" | jq -r '.interval')
            local reviews=$(echo "$line" | jq -r '.reviews')
            
            echo -e "${YELLOW}#$id${NC} [$category] (revisão $reviews, intervalo: ${interval}d)"
            echo "  Q: $front"
            echo ""
        fi
    done < "$CARDS_DB"
    
    if [ $count -eq 0 ]; then
        echo -e "${GREEN}🎉 Nenhum card para revisar hoje!${NC}"
    else
        echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
        echo -e "${YELLOW}Total: $count cards${NC}"
    fi
}

# Função para fazer review interativo
review_cards() {
    local today=$(date +%Y-%m-%d)
    local reviewed=0
    local temp_file=$(mktemp)
    
    echo -e "${BLUE}🧠 Iniciando sessão de revisão${NC}"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo ""
    
    while IFS= read -r line; do
        if [ -z "$line" ]; then continue; fi
        
        local next_review=$(echo "$line" | jq -r '.next_review')
        
        if [[ "$next_review" < "$today" ]] || [[ "$next_review" == "$today" ]]; then
            local id=$(echo "$line" | jq -r '.id')
            local front=$(echo "$line" | jq -r '.front')
            local back=$(echo "$line" | jq -r '.back')
            local category=$(echo "$line" | jq -r '.category')
            local interval=$(echo "$line" | jq -r '.interval')
            local easiness=$(echo "$line" | jq -r '.easiness')
            local reviews=$(echo "$line" | jq -r '.reviews')
            
            echo -e "${YELLOW}Card #$id${NC} [$category]"
            echo ""
            echo -e "${BLUE}❓ Pergunta:${NC}"
            echo "$front"
            echo ""
            read -p "Pressione ENTER para ver resposta..." 
            echo ""
            echo -e "${GREEN}✅ Resposta:${NC}"
            echo "$back"
            echo ""
            echo "Como você se saiu?"
            echo "  0 - Não lembro nada"
            echo "  1 - Lembrei pouco"
            echo "  2 - Lembrei com esforço"
            echo "  3 - Lembrei com alguma dificuldade"
            echo "  4 - Lembrei facilmente"
            echo "  5 - Perfeito, muito fácil"
            echo ""
            read -p "Nota (0-5): " quality
            
            # Validar entrada
            if [[ ! "$quality" =~ ^[0-5]$ ]]; then
                echo -e "${RED}Nota inválida. Usando 2 (padrão)${NC}"
                quality=2
            fi
            
            # Calcular próxima revisão
            local result=$(calculate_next_review "$quality" "$interval" "$easiness")
            local new_interval=$(echo "$result" | cut -d'|' -f1)
            local new_easiness=$(echo "$result" | cut -d'|' -f2)
            local new_next_review=$(date -v+${new_interval}d +%Y-%m-%d 2>/dev/null || date -d "+${new_interval} days" +%Y-%m-%d)
            local new_reviews=$((reviews + 1))
            
            # Atualizar card
            local updated_card=$(echo "$line" | jq \
                --arg next "$new_next_review" \
                --arg interval "$new_interval" \
                --arg easiness "$new_easiness" \
                --arg reviews "$new_reviews" \
                '.next_review = $next | .interval = ($interval | tonumber) | .easiness = ($easiness | tonumber) | .reviews = ($reviews | tonumber)')
            
            echo "$updated_card" >> "$temp_file"
            
            echo ""
            echo -e "${GREEN}✅ Próxima revisão: $new_next_review (em ${new_interval} dias)${NC}"
            echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
            echo ""
            
            reviewed=$((reviewed + 1))
        else
            echo "$line" >> "$temp_file"
        fi
    done < "$CARDS_DB"
    
    # Substituir arquivo original
    mv "$temp_file" "$CARDS_DB"
    
    echo ""
    echo -e "${GREEN}🎉 Sessão concluída! $reviewed cards revisados.${NC}"
}

# Função para importar do knowledge base
import_from_knowledge() {
    local concepts_dir="$TOPIC_PATH/knowledge/concepts"
    
    if [ ! -d "$concepts_dir" ]; then
        echo -e "${RED}❌ Diretório concepts/ não encontrado${NC}"
        return
    fi
    
    echo -e "${BLUE}📚 Procurando conceitos em knowledge/concepts/${NC}"
    
    # Buscar por arquivos .md
    local count=0
    for file in "$concepts_dir"/*.md; do
        if [ -f "$file" ]; then
            local concept_name=$(basename "$file" .md)
            
            # Extrair primeiro parágrafo como resposta
            local back=$(head -n 20 "$file" | grep -v "^#" | grep -v "^$" | head -n 3 | tr '\n' ' ')
            
            if [ -n "$back" ]; then
                add_card "Explique: $concept_name" "$back" "conceito"
                count=$((count + 1))
            fi
        fi
    done
    
    echo -e "${GREEN}✅ $count conceitos importados${NC}"
}

# Função para estatísticas
show_stats() {
    echo -e "${BLUE}📊 Estatísticas de Spaced Repetition${NC}"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    
    local total=0
    local due=0
    local mastered=0
    local today=$(date +%Y-%m-%d)
    
    while IFS= read -r line; do
        if [ -z "$line" ]; then continue; fi
        
        total=$((total + 1))
        
        local next_review=$(echo "$line" | jq -r '.next_review')
        local interval=$(echo "$line" | jq -r '.interval')
        
        if [[ "$next_review" < "$today" ]] || [[ "$next_review" == "$today" ]]; then
            due=$((due + 1))
        fi
        
        if [ "$interval" -ge 30 ]; then
            mastered=$((mastered + 1))
        fi
    done < "$CARDS_DB"
    
    echo "Total de cards:      $total"
    echo "Para revisar hoje:   $due"
    echo "Masterizados (30d+): $mastered"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
}

# Main
case "${1:-list}" in
    add)
        if [ -z "$2" ] || [ -z "$3" ]; then
            echo "Uso: $0 add \"pergunta\" \"resposta\" [categoria]"
            exit 1
        fi
        add_card "$2" "$3" "${4:-geral}"
        ;;
    list)
        list_due_cards
        ;;
    review)
        review_cards
        ;;
    import)
        import_from_knowledge
        ;;
    stats)
        show_stats
        ;;
    *)
        echo "Uso: $0 {add|list|review|import|stats}"
        echo ""
        echo "Comandos:"
        echo "  add \"Q\" \"A\" [cat]  - Adicionar card"
        echo "  list                - Listar cards para hoje"
        echo "  review              - Fazer revisão interativa"
        echo "  import              - Importar de knowledge/concepts/"
        echo "  stats               - Ver estatísticas"
        exit 1
        ;;
esac
