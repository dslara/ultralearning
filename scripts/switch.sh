#!/bin/bash

# switch.sh - Alternar módulo ativo

source "$(dirname "$0")/common.sh"

print_header "📋 Módulos disponíveis"
echo ""

found=0
for dir in projects/*/; do
    if [ -d "$dir/meta" ] || [ -d "$dir/logs" ]; then
        found=1
        topic=$(basename "$dir")
        current=""
        if [ "$topic" = "$CURRENT_TOPIC" ]; then
            current=" ${YELLOW}← atual${NC}"
        fi
        logs=$(ls -1 "$dir/logs/daily"/*.md 2>/dev/null | wc -l | xargs)
        echo -e "  📦 $topic ($logs dias)$current"
    fi
done

if [ $found -eq 0 ]; then
    print_warning "Nenhum módulo. Use: make module"
    exit 0
fi

echo ""
read -p "Ativar módulo: " topic

if [ -d "projects/$topic" ]; then
    mkdir -p "projects/$topic"/{meta,projects,logs/daily,knowledge}
    echo "$topic" > .current-topic
    print_success "Ativo: $topic"
else
    print_error "Módulo não existe"
fi
