#!/bin/bash
# Script para agregar flashcards de todos os módulos ao master-deck.csv

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
MASTER_DECK="$SCRIPT_DIR/master-deck.csv"
BY_MODULE_DIR="$SCRIPT_DIR/by-module"

echo "🔄 Sincronizando flashcards ao master-deck..."

# Criar backup do master-deck
if [ -f "$MASTER_DECK" ]; then
    cp "$MASTER_DECK" "$MASTER_DECK.backup"
    echo "✅ Backup criado: master-deck.csv.backup"
fi

# Criar header se master-deck não existe
if [ ! -f "$MASTER_DECK" ]; then
    echo "front,back,module,difficulty,last_reviewed,next_review,interval_days" > "$MASTER_DECK"
    echo "✅ Master-deck criado com header"
fi

# Agregar cards de cada módulo
MODULES_FOUND=0
CARDS_ADDED=0

if [ -d "$BY_MODULE_DIR" ]; then
    for module_file in "$BY_MODULE_DIR"/*.csv; do
        if [ -f "$module_file" ]; then
            MODULE_NAME=$(basename "$module_file" .csv)
            echo "📚 Processando: $MODULE_NAME"
            
            # Pular header e adicionar cards ao master
            tail -n +2 "$module_file" >> "$MASTER_DECK"
            
            CARDS_COUNT=$(tail -n +2 "$module_file" | wc -l)
            CARDS_ADDED=$((CARDS_ADDED + CARDS_COUNT))
            MODULES_FOUND=$((MODULES_FOUND + 1))
            
            echo "   ✅ $CARDS_COUNT cards adicionados"
        fi
    done
fi

# Remover duplicatas (mantém primeira ocorrência)
if [ -f "$MASTER_DECK" ]; then
    awk '!seen[$1]++' "$MASTER_DECK" > "$MASTER_DECK.tmp"
    mv "$MASTER_DECK.tmp" "$MASTER_DECK"
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ Sincronização completa!"
echo "📊 Módulos processados: $MODULES_FOUND"
echo "📇 Total de cards no master-deck: $(tail -n +2 "$MASTER_DECK" | wc -l)"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
