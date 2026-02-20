#!/bin/bash

# common.sh - Funções e variáveis compartilhadas entre scripts

# Cores
export BLUE='\033[0;34m'
export GREEN='\033[0;32m'
export YELLOW='\033[1;33m'
export RED='\033[0;31m'
export PURPLE='\033[0;35m'
export NC='\033[0m'

# Variáveis
export TODAY=$(date +%Y-%m-%d)
export CURRENT_TOPIC=$(cat .current-topic 2>/dev/null || echo "nenhum")
export TOPIC_PATH="projects/$CURRENT_TOPIC"

# Carregar .env se existir
[ -f .env ] && source .env

# Função: Verificar se há módulo ativo
check_module() {
    if [ "$CURRENT_TOPIC" = "nenhum" ]; then
        echo -e "${RED}❌ Nenhum módulo ativo. Use: make switch${NC}"
        exit 1
    fi
}

# Função: Verificar se OpenCode está instalado
check_opencode() {
    if ! command -v opencode &> /dev/null; then
        echo -e "${YELLOW}⚠️  OpenCode não instalado${NC}"
        return 1
    fi
    return 0
}

# Função: Verificar dependências básicas
check_deps() {
    local deps_ok=true
    
    if ! command -v jq &> /dev/null; then
        echo -e "${RED}✗ jq não instalado (brew install jq)${NC}"
        deps_ok=false
    fi
    
    if ! command -v opencode &> /dev/null; then
        echo -e "${YELLOW}⚠️  opencode não instalado (npm install -g opencode)${NC}"
    fi
    
    $deps_ok
}

# Função: Header padrão
print_header() {
    local title="$1"
    echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo -e "${GREEN}$title${NC}"
    echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo ""
}

# Função: Sucesso
print_success() {
    echo -e "${GREEN}✅ $1${NC}"
}

# Função: Erro
print_error() {
    echo -e "${RED}❌ $1${NC}"
}

# Função: Aviso
print_warning() {
    echo -e "${YELLOW}⚠️  $1${NC}"
}

# Função: Info
print_info() {
    echo -e "${YELLOW}$1${NC}"
}
