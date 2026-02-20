#!/bin/bash

# study.sh - Loop de estudo: code → drill → feynman

source "$(dirname "$0")/common.sh"

check_module

if ! check_opencode; then
    echo "Modo offline: edite $TOPIC_PATH/logs/daily/$TODAY.md"
    echo "Instale: npm install -g opencode"
    exit 0
fi

print_header "💻 Modo Estudo - $CURRENT_TOPIC"

echo "Escolha o modo:"
echo "  1. 💻 Code      - Projeto prático"
echo "  2. 🎯 Drill     - Exercícios focados"
echo "  3. 💡 Feynman   - Explicar conceito"
echo "  4. 🏗️  Scaffold  - Criar estrutura"
echo "  5. 🧪 Experiment- Comparar soluções"
echo "  6. 📝 Feedback  - Revisar código"
echo "  q. Sair"
echo ""

read -p "Opção [1]: " mode
mode=${mode:-1}

case $mode in
    1|code)
        read -p "Qual desafio? " challenge
        opencode run --agent @tutor "#directness $challenge"
        ;;
    2|drill)
        read -p "Qual conceito? " concept
        opencode run --agent @tutor "#drill $concept"
        ;;
    3|feynman)
        read -p "Qual conceito explicar? " concept
        opencode run --agent @tutor "#feynman $concept"
        ;;
    4|scaffold)
        read -p "Descreva o projeto: " project
        opencode run --agent @tutor "#scaffold $project"
        ;;
    5|experiment)
        read -p "Qual conceito explorar? " concept
        opencode run --agent @tutor "#experiment $concept"
        ;;
    6|feedback)
        echo "Cole seu código e pressione Ctrl+D:"
        code=$(cat)
        opencode run --agent @tutor "#feedback $code"
        ;;
    q|Q)
        echo "Saindo..."
        ;;
    *)
        print_warning "Opção inválida"
        ;;
esac
