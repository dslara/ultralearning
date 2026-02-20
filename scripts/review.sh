#!/bin/bash

# review.sh - Spaced repetition (SRS)

source "$(dirname "$0")/common.sh"

print_header "📚 Spaced Repetition"
echo ""

echo "  1. 📅 Ver cards para hoje"
echo "  2. 🎯 Sessão de revisão"
echo "  3. ➕ Adicionar card"
echo "  4. 📊 Estatísticas"
echo ""

read -p "Opção [1]: " opt
opt=${opt:-1}

case $opt in
    1)
        "$(dirname "$0")/spaced-repetition.sh" list
        ;;
    2)
        "$(dirname "$0")/spaced-repetition.sh" review
        ;;
    3)
        read -p "Pergunta: " q
        read -p "Resposta: " a
        "$(dirname "$0")/spaced-repetition.sh" add "$q" "$a" "geral"
        ;;
    4)
        "$(dirname "$0")/spaced-repetition.sh" stats
        ;;
    *)
        print_warning "Opção inválida"
        ;;
esac
