#!/bin/bash

# end.sh - Encerrar sessão (salva + streak)

source "$(dirname "$0")/common.sh"

check_module

print_header "🏁 Encerrando Sessão"

read -p "O que você aprendeu hoje? (breve): " learning

if [ -n "$learning" ]; then
    echo "" >> "$TOPIC_PATH/logs/daily/$TODAY.md"
    echo "## 📊 Resumo da Sessão" >> "$TOPIC_PATH/logs/daily/$TODAY.md"
    echo "" >> "$TOPIC_PATH/logs/daily/$TODAY.md"
    echo "$learning" >> "$TOPIC_PATH/logs/daily/$TODAY.md"
    echo "" >> "$TOPIC_PATH/logs/daily/$TODAY.md"
    print_success "Resumo salvo"
fi

echo ""

# Atualizar streak
"$(dirname "$0")/streak.sh" session

echo ""
echo -e "${GREEN}📝 Log: $TOPIC_PATH/logs/daily/$TODAY.md${NC}"
print_success "Sessão encerrada! Bom trabalho! 🎉"
