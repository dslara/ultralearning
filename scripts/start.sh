#!/bin/bash

# start.sh - Iniciar sessão + quiz automático

source "$(dirname "$0")/common.sh"

check_module

print_header "🚀 Iniciando Sessão de Ultralearning"

print_info "📦 Módulo: $CURRENT_TOPIC"
print_info "📅 Data: $TODAY"
echo ""

# Criar diretório de logs
if ! mkdir -p "$TOPIC_PATH/logs/daily"; then
    print_error "Falha ao criar diretório de logs"
    exit 1
fi

# Criar log diário se não existir
if [ ! -f "$TOPIC_PATH/logs/daily/$TODAY.md" ]; then
    safe_write "# 📅 $TODAY - $CURRENT_TOPIC" "$TOPIC_PATH/logs/daily/$TODAY.md" "overwrite" || exit 1
    safe_write "" "$TOPIC_PATH/logs/daily/$TODAY.md" || exit 1
    safe_write "## 🎯 Objetivo" "$TOPIC_PATH/logs/daily/$TODAY.md" || exit 1
    safe_write "" "$TOPIC_PATH/logs/daily/$TODAY.md" || exit 1
    safe_write "## 📝 Notas" "$TOPIC_PATH/logs/daily/$TODAY.md" || exit 1
    safe_write "" "$TOPIC_PATH/logs/daily/$TODAY.md" || exit 1
    safe_write "## ✅ Aprendizados" "$TOPIC_PATH/logs/daily/$TODAY.md" || exit 1
    print_success "📝 Log criado: $TOPIC_PATH/logs/daily/$TODAY.md"
fi

echo ""

echo -e "${PURPLE}🧠 Warm-up: iniciando sessão com contexto...${NC}"
echo ""

if check_opencode; then
    # Tentar carregar plano da semana actual como contexto
    WEEK_FILE=$(ls "$TOPIC_PATH/meta/week-"*.md 2>/dev/null | sort | tail -1)

    if [ -n "$WEEK_FILE" ]; then
        print_info "📅 Plano encontrado: $(basename "$WEEK_FILE")"
        WEEK_CONTEXT=$(cat "$WEEK_FILE")
        opencode run --agent @session "#session-start

Contexto do módulo: $CURRENT_TOPIC
Data: $TODAY

Plano da semana:
$WEEK_CONTEXT"
    else
        # Fallback: quiz genérico se não há plano da semana
        print_warning "Nenhum plano de semana encontrado — quiz genérico de aquecimento."
        print_info "Cria um plano com: @meta #create-weekly-plan"
        opencode run --agent @tutor "#quiz 3 perguntas sobre $CURRENT_TOPIC"
    fi
else
    print_warning "OpenCode não instalado. Quiz pulado."
    print_info "Instale com: npm install -g opencode"
fi

echo ""
print_success "Pronto! Use 'make study' para imersão"
