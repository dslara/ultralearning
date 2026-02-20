#!/bin/bash

# status.sh - Ver status geral (streak + módulo)

source "$(dirname "$0")/common.sh"

print_header "📊 Status Ultralearning"
echo ""

"$(dirname "$0")/streak.sh"

echo ""

if [ "$CURRENT_TOPIC" != "nenhum" ]; then
    print_info "📦 Módulo atual: $CURRENT_TOPIC"
    logs=$(ls -1 "$TOPIC_PATH/logs/daily"/*.md 2>/dev/null | wc -l | xargs)
    echo "   Dias de estudo: $logs"
else
    print_warning "Nenhum módulo ativo"
fi

echo ""
