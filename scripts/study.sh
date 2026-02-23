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
        challenge=$(sanitize_input "$challenge")
        if [ -n "$challenge" ]; then
            opencode run --agent @tutor "#directness $challenge"
        else
            print_error "Desafio inválido"
        fi
        ;;
    2|drill)
        read -p "Qual conceito? " concept
        concept=$(sanitize_input "$concept")
        if [ -n "$concept" ]; then
            opencode run --agent @tutor "#drill $concept"
        else
            print_error "Conceito inválido"
        fi
        ;;
    3|feynman)
        read -p "Qual conceito explicar? " concept
        concept=$(sanitize_input "$concept")
        if [ -n "$concept" ]; then
            opencode run --agent @tutor "#feynman $concept"
        else
            print_error "Conceito inválido"
        fi
        ;;
    4|scaffold)
        read -p "Descreva o projeto: " project
        project=$(sanitize_input "$project")
        if [ -n "$project" ]; then
            opencode run --agent @tutor "#scaffold $project"
        else
            print_error "Descrição de projeto inválida"
        fi
        ;;
    5|experiment)
        read -p "Qual conceito explorar? " concept
        concept=$(sanitize_input "$concept")
        if [ -n "$concept" ]; then
            opencode run --agent @tutor "#experiment $concept"
        else
            print_error "Conceito inválido"
        fi
        ;;
    6|feedback)
        echo "Cole seu código e pressione Ctrl+D:"
        code=$(cat)
        if [ -n "$code" ]; then
            opencode run --agent @tutor "#feedback $code"
        else
            print_error "Nenhum código fornecido"
        fi
        ;;
    q|Q)
        echo "Saindo..."
        ;;
    *)
        print_warning "Opção inválida"
        ;;
esac
