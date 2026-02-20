#!/bin/bash

# module.sh - Criar novo módulo

source "$(dirname "$0")/common.sh"

print_header "🆕 Criando novo módulo"
echo ""

read -p "Nome do módulo (ex: python-backend): " topic

TOPIC_SLUG=$(echo "$topic" | tr '[:upper:]' '[:lower:]' | tr ' ' '-')

if [ -d "projects/$TOPIC_SLUG" ]; then
    print_warning "Módulo já existe!"
    exit 1
fi

mkdir -p "projects/$TOPIC_SLUG"/{meta,projects,logs/daily,knowledge}

echo "# 📦 $topic" > "projects/$TOPIC_SLUG/README.md"
echo "" >> "projects/$TOPIC_SLUG/README.md"
echo "**Status**: 🟢 Ativo" >> "projects/$TOPIC_SLUG/README.md"
echo "**Criado**: $TODAY" >> "projects/$TOPIC_SLUG/README.md"

echo "$TOPIC_SLUG" > .current-topic

print_success "Módulo criado: projects/$TOPIC_SLUG/"
echo ""
print_info "Use @meta para planejar:"
echo "opencode run --agent @meta \"#decompose-goal $topic\""
