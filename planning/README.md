# 📐 Planejamento do Framework

Pasta destinada a documentos de planejamento estratégico do **framework Ultralearning** — propostas de mudança em arquitetura, agentes, scripts e configuração.

> **Nota**: Planos relacionados a projetos de estudo (currículo, fases, migração de linguagem) ficam em `projects/{modulo}/planning/`.

---

## Estrutura

```
planning/
├── README.md
├── _template-proposta.md
├── _template-plano-migracao.md
├── archived/                    # Documentos implementados/supersedidos
│   └── README.md
└── [documentos ativos]
```

---

## Documentos Ativos

| Arquivo | Tipo | Descrição | Status |
|---------|------|-----------|--------|
| [consolidated-analysis-2026-02-28-v1.0.0.md](./consolidated-analysis-2026-02-28-v1.0.0.md) | análise | Consolidação de todos os plannings | ✅ Ativo |
| [proposta-memoria-automatica-2026-02-28.md](./proposta-memoria-automatica-2026-02-28.md) | proposta | Carregamento automático de contexto no `make start` | 🟡 Proposta |

---

## Documentos Arquivados

Documentos implementados ou supersedidos são movidos para [`archived/`](./archived/).

Consulte [`archived/README.md`](./archived/README.md) para o histórico completo.

| Arquivo | Status |
|---------|--------|
| `plano-implementacao-skills-2026-02-27.md` | ✅ Implementado |
| `plano-migracao-glm-2026-02-27.md` | ✅ Implementado |
| `proposta-estrutura-modular.md` | ⚠️ Parcial (40%) |
| `report-prototipo-fase0.md` | ✅ Validado |

---

## Separação de Responsabilidades

| Domínio | Local |
|---------|-------|
| **Framework** (scripts, agentes, Makefile, arquitetura) | `planning/` (esta pasta) |
| **Projeto de estudo** (currículo, fases, migração de linguagem) | `projects/{modulo}/planning/` |
| **Guias compartilhados** | `projects/shared/planning/` |
| **Planos ativos do projeto** | `projects/{modulo}/meta/` |

---

## Convenção de Nomenclatura

```
[TIPO]-[descricao]-YYYY-MM-DD.md
```

### Tipos de Documento

| Tipo | Uso | Exemplo |
|------|-----|---------|
| `proposta` | Propostas de mudança no framework | `proposta-memoria-automatica-2026-02-28.md` |
| `plano` | Planos de migração ou implementação | `plano-migracao-glm-2026-02-27.md` |
| `report` | Relatórios de fases, protótipos | `report-prototipo-fase0.md` |
| `consolidated-analysis` | Análise consolidada de múltiplos documentos | `consolidated-analysis-2026-02-28-v1.0.0.md` |

### Regras

- Nomes em **minúsculo**
- Palavras separadas por **hífen** (`-`)
- Sem acentos ou caracteres especiais
- Descrição curta e objetiva (máx. 4-5 palavras)

---

## Status dos Documentos

| Status | Emoji | Significado |
|--------|-------|-------------|
| Proposta | 🟡 | Aguardando análise/decisão |
| Aprovada | 🟢 | Aprovada para implementação |
| Rejeitada | 🔴 | Não será implementada |
| Em análise | ⏸️ | Sob revisão/feedback |
| Implementada | ✅ | Já executada/concluída |
| Parcial | ⚠️ | Implementada parcialmente |

---

## Como Gerar Documentos

Usando o agente `@review`:

```bash
# Análise arquitetural que identifica necessidade de mudança
opencode run --agent @review "#review-architecture"

# Auditoria completa que pode gerar recomendações
opencode run --agent @review "#audit-quality"
```

O @review recomenda mudanças através de análise, mas **não gera automaticamente** propostas ou planos. O fluxo é:

1. @review analisa o projeto
2. Identifica necessidade de mudança estrutural
3. Gera recomendações no relatório
4. Usuário decide se quer criar proposta/plano manualmente

---

## Templates Disponíveis

- [`_template-proposta.md`](./_template-proposta.md) - Para propostas de mudança
- [`_template-plano-migracao.md`](./_template-plano-migracao.md) - Para planos de migração

---

## Conteúdo dos Documentos

**Propostas** (`proposta-[nome]-YYYY-MM-DD.md`):
- 🎯 Problema identificado
- 💡 Solução proposta
- 🗺️ Plano de transição
- ⚖️ Análise de impacto vs benefício
- ✅ Checklist de implementação

**Planos** (`plano-[nome]-YYYY-MM-DD.md`):
- 📅 Cronograma detalhado por fases
- ⚠️ Riscos e mitigações
- 🔄 Plano de rollback
- 📊 Métricas de acompanhamento

**Análises Consolidadas** (`consolidated-analysis-[data]-v[X.Y.Z].md`):
- 📊 Resumo de todos os documentos analisados
- ✅ Checklist de implementação por documento
- 📋 Pontos pendentes priorizados
- 🎯 Roadmap de ações

---

## Histórico de Consolidacões

| Data | Documento | Documentos Analisados | Veredito |
|------|-----------|----------------------|----------|
| 2026-02-28 | `consolidated-analysis-2026-02-28-v1.0.0.md` | 5 | 7/10, 60% implementado |

---

*Documentos de planejamento são referências históricas das decisões arquiteturais. Sempre que possível, mantenha-os atualizados com o status atual.*
