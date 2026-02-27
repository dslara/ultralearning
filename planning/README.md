# 📐 Planejamento

Pasta destinada a documentos de planejamento estratégico, propostas arquiteturais, relatórios e guias técnicos.

## Propósito

Esta pasta centraliza documentação sobre:

- **Propostas de arquitetura** - Mudanças estruturais no projeto
- **Planos de migração** - Transições entre tecnologias/abordagens
- **Relatórios** - Documentação de fases, protótipos e experimentos
- **Guias práticos** - Instruções específicas de uso

## Convenção de Nomenclatura

Todos os documentos seguem o padrão:

```
[TIPO]-[descricao].md
```

### Tipos de Documento

| Tipo | Uso | Exemplo |
|------|-----|---------|
| `howto` | Guias práticos, tutoriais | `howto-usar-prototipo.md` |
| `report` | Relatórios de fases, protótipos | `report-prototipo-fase0.md` |
| `plano` | Planos de migração ou mudança | `plano-migracao-rust-zig.md` |
| `proposta` | Propostas de estrutura/arquitetura | `proposta-estrutura-modular.md` |

### Regras

- Nomes em **minúsculo**
- Palavras separadas por **hífen** (`-`)
- Sem acentos ou caracteres especiais
- Descrição curta e objetiva (máx. 4-5 palavras)

## Documentos Existentes

| Arquivo | Tipo | Descrição |
|---------|------|-----------|
| [howto-usar-prototipo.md](./howto-usar-prototipo.md) | howto | Guia de uso do protótipo M1 + estrutura shared |
| [report-prototipo-fase0.md](./report-prototipo-fase0.md) | report | Relatório da Fase 0 - validação da estrutura modular |
| [plano-migracao-rust-zig.md](./plano-migracao-rust-zig.md) | plano | **v2.0** Plano revisado para trocar Rust por Zig (não aplicado) |
| [plano-migracao-rust-zig-v1.0-archive.md](./plano-migracao-rust-zig-v1.0-archive.md) | plano | v1.0 arquivada (supersedida por v2.0) |
| [proposta-estrutura-modular.md](./proposta-estrutura-modular.md) | proposta | Proposta de divisão em 8 módulos independentes (aprovada) |

## Status dos Documentos

| Documento | Status | Decisão |
|-----------|--------|---------|
| Proposta de Estrutura Modular | ✅ **Aprovada** | Implementada com ajustes |
| Protótipo Fase 0 | ✅ **Validado** | Estrutura testada e aprovada |
| Migração Rust → Zig v2.0 | ⏸️ **Não Aplicado** | Planejamento revisado (2026-02-23) |

---

## 📋 Propostas e Planos do Agente @review

Esta pasta também armazena **propostas de mudança e planos de migração** gerados pelo agente `@review` durante suas análises do framework.

### Tipos de Documentos Gerados pelo @review

| Tipo | Descrição | Exemplo |
|------|-----------|---------|
| **proposta** | Proposta de mudança estrutural | `proposta-migracao-python-2026-02-20.md` |
| **plano** | Plano de migração detalhado | `plano-transicao-scripts-2026-02-20.md` |
| **roadmap** | Roadmap estratégico de melhorias | `roadmap-melhorias-6meses-2026-02-20.md` |

### Convenção de Nomenclatura

```
[TIPO]-[descricao]-YYYY-MM-DD.md

Exemplos:
- proposta-migracao-python-2026-02-20.md
- plano-transicao-scripts-2026-02-20.md
- roadmap-melhorias-6meses-2026-02-20.md
```

### Propostas e Planos Gerados

| Arquivo | Tipo | Data | Status |
|---------|------|------|--------|
| *[Exemplo: proposta-migracao-python-2026-02-20.md]* | proposta | 2026-02-20 | 🟡 Em análise |

### Como Gerar Propostas e Planos

Usando o agente `@review`:

```bash
# Análise arquitetural que identifica necessidade de mudança
opencode run --agent @review "#review-architecture"

# Auditoria completa que pode gerar recomendações
opencode run --agent @review "#audit-quality"

# Para criar documentos manualmente, use os templates disponíveis
# e siga a convenção de nomenclatura descrita acima
```

O @review recomenda mudanças através de análise, mas **não gera automaticamente** propostas ou planos. O fluxo é:
1. @review analisa o projeto (via `#audit-quality` ou `#review-architecture`)
2. Identifica necessidade de mudança estrutural
3. Gera recomendações no relatório
4. Usuário decide se quer criar proposta/plano manualmente usando templates

### Conteúdo dos Documentos

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

**Roadmaps** (`roadmap-[periodo]-YYYY-MM-DD.md`):
- 🧭 Direção estratégica
- 🎯 Prioridades
- 🏁 Milestones
- 📈 Métricas de sucesso

### Fluxo de Trabalho com @review

```
1. @review analisa o projeto (via #audit-quality ou #review-architecture)
2. Identifica necessidade de mudança estrutural no relatório
3. Usuário revisa recomendações
4. Se aprovada, usuário cria proposta manualmente usando template
5. Se aprovada, usuário cria plano manualmente usando template
6. Implementação segue o plano
```

### Templates Disponíveis

- [`_template-proposta.md`](./_template-proposta.md) - Para propostas de mudança
- [`_template-plano-migracao.md`](./_template-plano-migracao.md) - Para planos de migração

### Status dos Documentos Gerados

| Status | Emoji | Significado |
|--------|-------|-------------|
| Proposta | 🟡 | Aguardando análise/decisão |
| Aprovada | 🟢 | Aprovada para implementação |
| Rejeitada | 🔴 | Não será implementada |
| Em análise | ⏸️ | Sob revisão/feedback |
| Implementada | ✅ | Já executada/concluída |

---

*Documentos de planejamento são referências históricas das decisões arquiteturais. Sempre que possível, mantenha-os atualizados com o status atual.*
