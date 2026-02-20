#!/bin/bash

# plan.sh - Planejar semana com @meta

source "$(dirname "$0")/common.sh"

check_module

if ! check_opencode; then
    echo "Crie o plano manualmente em: $TOPIC_PATH/meta/"
    exit 0
fi

print_header "📅 Planejando semana para: $CURRENT_TOPIC"
echo ""

WEEK=$(date +%U)
mkdir -p "$TOPIC_PATH/meta"

opencode run --agent @meta "#create-weekly-plan semana $WEEK" | tee "$TOPIC_PATH/meta/week-$WEEK.md"

echo ""
print_success "Plano salvo: $TOPIC_PATH/meta/week-$WEEK.md"
