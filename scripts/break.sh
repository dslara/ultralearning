#!/bin/bash

# break.sh - Pausa de 15 min para modo difuso (Oakley)

source "$(dirname "$0")/common.sh"

print_header "🧠 Modo Difuso ATIVADO"

print_info "💡 Deixe o cérebro processar..."
echo ""

echo "Atividades que ativam modo difuso:"
echo "  🚶 Caminhar (sem celular)"
echo "  🚿 Tomar banho"
echo "  🧘 Meditar 10 min"
echo "  🧹 Limpar algo (mecânico)"
echo ""

print_warning "IMPORTANTE: Não olhe telas!"
echo ""
echo "Dica: Insights frequentemente surgem na pausa."
echo "Quando voltar, tente resolver o problema novamente."
echo ""

print_success "⏱️  Pausa de 15 min recomendada"
print_info "Use: sleep 15m && echo 'Hora de voltar!'"
