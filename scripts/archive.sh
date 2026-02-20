#!/bin/bash

# archive.sh - Arquivar projeto finalizado

source "$(dirname "$0")/common.sh"

check_module

print_header "📦 Arquivando Projeto"

print_warning "Atenção: O projeto será removido do módulo ativo"
echo ""

read -p "Nome do projeto (ex: cli-tool): " proj_name

if [ -z "$proj_name" ]; then
    print_error "Nome não pode ser vazio"
    exit 1
fi

DATE=$(date +%Y-%m-%d)
ARCHIVE_DIR="archived/$CURRENT_TOPIC/$DATE-$proj_name"

if [ -d "$ARCHIVE_DIR" ]; then
    print_error "Projeto já existe: $ARCHIVE_DIR"
    exit 1
fi

mkdir -p "$ARCHIVE_DIR"
cp -r "$TOPIC_PATH/"* "$ARCHIVE_DIR/" 2>/dev/null || true
cp archived/_template-relatorio.md "$ARCHIVE_DIR/relatorio-final.md"

print_success "Projeto copiado para: $ARCHIVE_DIR"
echo ""
print_info "📝 Ações necessárias:"
echo "  1. Preencha o relatório: $ARCHIVE_DIR/relatorio-final.md"
echo "  2. Edite o índice: archived/indice.md"
echo ""

read -p "Remover projeto do módulo ativo? [s/N]: " confirm

if [ "$confirm" = "s" ] || [ "$confirm" = "S" ]; then
    rm -rf "$TOPIC_PATH"
    echo "nenhum" > .current-topic
    print_success "Projeto removido do módulo"
else
    print_warning "Projeto mantido no módulo (remova manualmente)"
fi

echo ""
print_success "🎉 Projeto arquivado com sucesso!"
