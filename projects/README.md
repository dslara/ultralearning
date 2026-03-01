# 📁 Projects

Pasta contendo todos os módulos e projetos de aprendizado Ultralearning.

## Estrutura

```
projects/
├── README.md                    # Este arquivo
├── shared/                      # Recursos compartilhados entre módulos
│   ├── flashcards/              # Sistema SRS (Spaced Repetition)
│   ├── retrospectives/          # Templates de retrospectivas
│   ├── planning/                # Planejamento compartilhado
│   └── master-learning-map.md   # Mapa de aprendizado global
└── [modulo]/                    # Módulos individuais
    ├── README.md                # Landing page do módulo
    ├── meta/                    # Planos ativos (learning-map, weeks, phases)
    ├── planning/                # Planos de mudança do currículo
    ├── projects/                # Projetos práticos
    ├── logs/                    # Logs diários de estudo
    └── knowledge/               # Conceitos e flashcards
```

## O que é um Módulo?

Um módulo é uma unidade de aprendizado focada em um tema específico. Cada módulo:

- Tem seu próprio espaço isolado
- Mantém logs diários de estudo
- Contém projetos práticos
- Armazena conhecimento adquirido
- Pode ser arquivado quando concluído

## Módulos Atuais

| Módulo | Status | Descrição |
|--------|--------|-----------|
| foundations-of-computing | 🟢 Ativo | Fundamentos de Computação (CS Fundamentals) |

## Recursos Compartilhados

A pasta `shared/` contém recursos utilizados por todos os módulos:

### Flashcards (`shared/flashcards/`)
- `master-deck.csv` - Deck unificado para SRS
- `by-module/` - Cards organizados por módulo
- `sync-flashcards.sh` - Script de sincronização (em scripts/)

### Retrospectivas (`shared/retrospectives/`)
- Templates para retrospectivas trimestrais
- Relatórios de feedback

### Planejamento (`shared/planning/`)
- Documentos de planejamento relacionados a múltiplos módulos
- Guias de uso da estrutura

### Master Learning Map (`shared/master-learning-map.md`)
- Visão global de 88 semanas
- Timeline completa do plano
- Dependências entre módulos

## Como Criar um Novo Módulo

```bash
make module
# Digite o nome do módulo quando solicitado
```

O módulo será criado automaticamente em `projects/[nome-do-modulo]/`

## Como Alternar entre Módulos

```bash
make switch
# Escolha o módulo na lista
```

## Arquivamento

Quando um módulo é concluído:

```bash
make archive
```

O módulo será movido para `archived/` mantendo todo o histórico.

## Separação de Planejamento

| Domínio | Local |
|---------|-------|
| **Framework** (scripts, agentes, Makefile) | `planning/` (raiz do projeto) |
| **Módulo específico** (currículo, migração de linguagem) | `projects/{modulo}/planning/` |
| **Compartilhado** (múltiplos módulos) | `projects/shared/planning/` |
| **Planos ativos** (learning-map, weeks, phases) | `projects/{modulo}/meta/` |

---

*Cada módulo é uma jornada de aprendizado. Mantenha-os focados e bem documentados.*
