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
echo "  0. 🎯 Session   - Sugestão baseada no plano da semana"
echo "  ──────────────────────────────────────────"
echo "  1. 💻 Code      - Projeto prático"
echo "  2. 🎯 Drill     - Exercícios focados"
echo "  3. 💡 Feynman   - Validar compreensão"
echo "  4. 🏗️  Scaffold  - Criar estrutura"
echo "  5. 🧪 Experiment- Comparar soluções"
echo "  6. 📝 Feedback  - Revisar código"
echo "  7. 🔍 Explain   - Introdução a conceito novo"
echo "  8. 🧠 Intuition - Entender o 'por quê'"
echo "  9. 🐛 Debug     - Debug socrático"
echo "  z. 🧟 Zombie    - Superar procrastinação"
echo "  d. 🌊 Diffuse   - Modo difuso (bloqueado)"
echo "  q. Sair"
echo ""

read -p "Opção [0]: " mode
mode=${mode:-0}

case $mode in
    0|session)
        WEEK_FILE=$(ls "$TOPIC_PATH/meta/week-"*.md 2>/dev/null | sort | tail -1)
        if [ -n "$WEEK_FILE" ]; then
            WEEK_CONTEXT=$(cat "$WEEK_FILE")
            opencode run --agent @session "#session-start

Contexto do módulo: $CURRENT_TOPIC
Data: $TODAY

Plano da semana:
$WEEK_CONTEXT"
        else
            opencode run --agent @session "#session-start"
        fi
        ;;
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
    7|explain)
        read -p "Qual conceito introduzir? " concept
        concept=$(sanitize_input "$concept")
        if [ -n "$concept" ]; then
            opencode run --agent @tutor "#explain $concept"
        else
            print_error "Conceito inválido"
        fi
        ;;
    8|intuition)
        read -p "Qual conceito aprofundar? " concept
        concept=$(sanitize_input "$concept")
        if [ -n "$concept" ]; then
            opencode run --agent @tutor "#intuition $concept"
        else
            print_error "Conceito inválido"
        fi
        ;;
    9|debug)
        read -p "Descreve o problema: " problem
        problem=$(sanitize_input "$problem")
        if [ -n "$problem" ]; then
            opencode run --agent @tutor "#debug $problem"
        else
            print_error "Problema inválido"
        fi
        ;;
    z|zombie)
        opencode run --agent @tutor "#zombie"
        ;;
    d|diffuse)
        opencode run --agent @tutor "#diffuse"
        ;;
    q|Q)
        echo "Saindo..."
        ;;
    *)
        print_warning "Opção inválida"
        ;;
esac
