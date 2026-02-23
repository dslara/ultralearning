#!/bin/bash

# end.sh - Encerrar sessão (salva + streak)

source "$(dirname "$0")/common.sh"

check_module

print_header "🏁 Encerrando Sessão"

read -p "O que você aprendeu hoje? (breve): " learning

if [ -n "$learning" ]; then
    # Verificar se o arquivo de log existe antes de escrever
    if [ ! -f "$TOPIC_PATH/logs/daily/$TODAY.md" ]; then
        print_error "Arquivo de log não encontrado. Execute 'make start' primeiro."
        exit 1
    fi
    
    safe_write "" "$TOPIC_PATH/logs/daily/$TODAY.md" || exit 1
    safe_write "## 📊 Resumo da Sessão" "$TOPIC_PATH/logs/daily/$TODAY.md" || exit 1
    safe_write "" "$TOPIC_PATH/logs/daily/$TODAY.md" || exit 1
    safe_write "$learning" "$TOPIC_PATH/logs/daily/$TODAY.md" || exit 1
    safe_write "" "$TOPIC_PATH/logs/daily/$TODAY.md" || exit 1
    print_success "Resumo salvo"
fi

echo ""

# Atualizar streak
"$(dirname "$0")/streak.sh" session

echo ""
echo -e "${GREEN}📝 Log: $TOPIC_PATH/logs/daily/$TODAY.md${NC}"
print_success "Sessão encerrada! Bom trabalho! 🎉"
