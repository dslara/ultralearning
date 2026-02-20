#!/bin/bash

# retro.sh - Retrospectiva semanal

source "$(dirname "$0")/common.sh"

check_module

print_header "📝 Retrospectiva Semanal"
echo ""

# Resumo semanal automático
echo -e "${YELLOW}📊 Resumo da Semana:${NC}"

WEEK_START=$(date -v-7d +%Y-%m-%d 2>/dev/null || date -d '7 days ago' +%Y-%m-%d)
LOGS_THIS_WEEK=$(ls -1 "$TOPIC_PATH/logs/daily"/*.md 2>/dev/null | while read f; do
    FDATE=$(basename "$f" .md)
    if [[ "$FDATE" > "$WEEK_START" ]] || [[ "$FDATE" == "$WEEK_START" ]]; then
        echo "$f"
    fi
done | wc -l | xargs)

echo "   📅 Dias estudados esta semana: $LOGS_THIS_WEEK"

if [ "$LOGS_THIS_WEEK" -ge 6 ]; then
    echo -e "   ${GREEN}✅ Excelente! Meta de 6 dias atingida!${NC}"
elif [ "$LOGS_THIS_WEEK" -ge 4 ]; then
    echo -e "   ${YELLOW}⚠️  Bom! $(( 6 - $LOGS_THIS_WEEK )) dias para meta${NC}"
else
    echo -e "   ${RED}❌ Faltaram $(( 6 - $LOGS_THIS_WEEK )) dias${NC}"
fi

echo ""

WEEK=$(date +%U)
RETRO_FILE="$TOPIC_PATH/meta/retro-week-$WEEK.md"

echo "# Retro Semana $WEEK - $CURRENT_TOPIC" > "$RETRO_FILE"
echo "" >> "$RETRO_FILE"
echo "**Data**: $TODAY" >> "$RETRO_FILE"
echo "" >> "$RETRO_FILE"

read -p "✅ O que funcionou? " worked
echo "## ✅ O que funcionou" >> "$RETRO_FILE"
echo "$worked" >> "$RETRO_FILE"
echo "" >> "$RETRO_FILE"

read -p "❌ O que não funcionou? " failed
echo "## ❌ O que não funcionou" >> "$RETRO_FILE"
echo "$failed" >> "$RETRO_FILE"
echo "" >> "$RETRO_FILE"

read -p "🎯 Foco próxima semana? " next
echo "## 🎯 Próxima semana" >> "$RETRO_FILE"
echo "$next" >> "$RETRO_FILE"
echo "" >> "$RETRO_FILE"

print_success "Salvo: $RETRO_FILE"
