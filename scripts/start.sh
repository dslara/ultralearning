#!/bin/bash

# start.sh - Iniciar sessão + quiz automático

source "$(dirname "$0")/common.sh"

check_module

print_header "🚀 Iniciando Sessão de Ultralearning"

print_info "📦 Módulo: $CURRENT_TOPIC"
print_info "📅 Data: $TODAY"
echo ""

mkdir -p "$TOPIC_PATH/logs/daily"

if [ ! -f "$TOPIC_PATH/logs/daily/$TODAY.md" ]; then
    echo "# 📅 $TODAY - $CURRENT_TOPIC" > "$TOPIC_PATH/logs/daily/$TODAY.md"
    echo "" >> "$TOPIC_PATH/logs/daily/$TODAY.md"
    echo "## 🎯 Objetivo" >> "$TOPIC_PATH/logs/daily/$TODAY.md"
    echo "" >> "$TOPIC_PATH/logs/daily/$TODAY.md"
    echo "## 📝 Notas" >> "$TOPIC_PATH/logs/daily/$TODAY.md"
    echo "" >> "$TOPIC_PATH/logs/daily/$TODAY.md"
    echo "## ✅ Aprendizados" >> "$TOPIC_PATH/logs/daily/$TODAY.md"
    print_success "📝 Log criado: $TOPIC_PATH/logs/daily/$TODAY.md"
fi

echo ""

echo -e "${PURPLE}🧠 Warm-up: 3 perguntas rápidas...${NC}"
echo ""

if check_opencode; then
    opencode run --agent @tutor "#quiz 3 perguntas sobre $CURRENT_TOPIC baseado no que estudei ontem"
else
    print_warning "OpenCode não instalado. Quiz pulado."
    print_info "Instale com: npm install -g opencode"
fi

echo ""
print_success "Pronto! Use 'make study' para imersão"
