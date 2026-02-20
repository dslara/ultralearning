#!/bin/bash

# setup.sh - Configuração inicial

source "$(dirname "$0")/common.sh"

print_header "⚙️ Configurando Ultralearning"
echo ""

echo "Verificando dependências..."

if command -v jq &> /dev/null; then
    echo -e "  ${GREEN}✓${NC} jq"
else
    echo -e "  ${RED}✗${NC} jq (instale: brew install jq)"
fi

if command -v bc &> /dev/null; then
    echo -e "  ${GREEN}✓${NC} bc"
else
    echo -e "  ${YELLOW}⚠️${NC} bc (opcional, para SRS)"
fi

if command -v opencode &> /dev/null; then
    echo -e "  ${GREEN}✓${NC} opencode"
else
    echo -e "  ${YELLOW}⚠️${NC} opencode (instale: npm install -g opencode)"
fi

echo ""

mkdir -p scripts .opencode/agents
chmod +x scripts/*.sh 2>/dev/null || true

if [ ! -f ".current-topic" ]; then
    echo "nenhum" > .current-topic
fi

print_success "Setup completo!"
echo ""
echo "Próximos passos:"
echo "  1. make module  → Criar módulo"
echo "  2. make start   → Começar estudo"
