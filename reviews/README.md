# 📋 Revisões

Pasta destinada a todas as revisões e avaliações críticas do projeto.

## Propósito

As revisões servem para:

- **Validar** a qualidade e coerência do plano
- **Identificar** riscos, gaps e pontos de melhoria
- **Documentar** decisões e mudanças importantes
- **Acompanhar** a evolução do projeto ao longo do tempo

## Estrutura das Revisões

Cada revisão deve incluir:

| Seção | Descrição |
|-------|-----------|
| **Resumo Executivo** | Veredito geral e nota |
| **Pontos Fortes** | O que funciona bem |
| **Pontos de Atenção** | Riscos e problemas identificados |
| **Sugestões de Melhoria** | Ações concretas (imediatas e futuras) |
| **Avaliação Final** | Notas por aspecto e veredito geral |

## Convenção de Nomenclatura

```
review-v{versão}.md
```

Exemplos:
- `review-v2.4.md` - Revisão da versão 2.4 do plano
- `review-v3.0.md` - Revisão da versão 3.0

## Revisões Existentes

| Arquivo | Versão | Data | Veredito |
|---------|--------|------|----------|
| [review-v2.4.md](./review-v2.4.md) | 2.4 | 2025-01-XX | ⭐⭐⭐⭐½ - Pronto para execução |

---

## 🔍 Revisões Técnicas do Framework

Além das revisões de plano de estudos, esta pasta também armazena **revisões técnicas do próprio framework**, geradas pelo agente `@review`.

### Tipos de Revisões Técnicas

| Tipo | Descrição | Exemplo |
|------|-----------|---------|
| **structure** | Organização de pastas e arquivos | `structure-review-2026-02-20-v2.7.0.md` |
| **scripts** | Qualidade dos scripts bash | `scripts-audit-2026-02-20-v2.7.0.md` |
| **docs** | Coerência da documentação | `docs-review-2026-02-20-v2.7.0.md` |
| **makefile** | Comandos e orquestração | `makefile-review-2026-02-20-v2.7.0.md` |
| **agents** | Efetividade dos agentes @meta e @tutor | `agents-review-2026-02-20-v2.7.0.md` |
| **consistency** | Consistência geral do projeto | `consistency-review-2026-02-20-v2.7.0.md` |
| **architecture** | Análise arquitetural profunda | `architecture-review-2026-02-20-v2.7.0.md` |
| **complete** | Auditoria completa de qualidade | `complete-audit-2026-02-20-v2.7.0.md` |

### Convenção de Nomenclatura

```
[tipo]-[descricao]-YYYY-MM-DD-v[X.Y.Z].md

Exemplos:
- scripts-audit-2026-02-20-v2.7.0.md
- architecture-review-2026-02-20-v2.7.0.md
- complete-audit-2026-02-20-v2.7.0.md
```

### Revisões Técnicas Realizadas

| Arquivo | Tipo | Data | Versão | Aspecto | Status |
|---------|------|------|--------|---------|--------|
| [agents-review-2026-02-23-v2.8.0.md](./agents-review-2026-02-23-v2.8.0.md) | agents | 2026-02-23 | v2.8.0 | Revisão completa dos agentes @meta, @tutor e @review | ✅ Concluída |
| [phase1-implementation-2026-02-20-v2.8.0.md](./phase1-implementation-2026-02-20-v2.8.0.md) | implementation | 2026-02-20 | v2.8.0 | Fase 1: Arquitetura Híbrida | ✅ Implementada |
| [audit-complete-v2.7.0-2026-02-20.md](./audit-complete-v2.7.0-2026-02-20.md) | audit | 2026-02-20 | v2.7.0 | Auditoria Completa | ✅ Concluída |

### Como Gerar Revisões Técnicas

Usando o agente `@review`:

```bash
# Revisão em memória (não salva arquivo)
opencode run --agent @review "#review-scripts"

# Revisão e salvar automaticamente
opencode run --agent @review "#save-review scripts"
# ou
opencode run --agent @review "#review-and-save scripts"

# Auditoria completa do framework
opencode run --agent @review "#audit-quality"

# Análise arquitetural profunda
opencode run --agent @review "#review-architecture"

# Verificar prontidão para release
opencode run --agent @review "#check-readiness 3.0.0"
```

### Template Disponível

- [`_template-framework-review.md`](./_template-framework-review.md) - Template para revisões técnicas

### Diferença: Revisões de Plano vs Revisões Técnicas

| Aspecto | Revisões de Plano | Revisões Técnicas |
|---------|-------------------|-------------------|
| **Foco** | Plano de estudos (CS Fundamentals) | Código, arquitetura, scripts |
| **Gerado por** | Humano | Agente @review |
| **Convenção** | `review-v{X.Y}.md` | `[tipo]-[desc]-YYYY-MM-DD-v{X.Y.Z}.md` |
| **Público** | Estudante revisando próprio progresso | Mantenedor revisando qualidade do sistema |

---

*As revisões são checkpoints estratégicos. Quando uma revisão é concluída, as ações identificadas devem ser priorizadas ou adicionadas ao backlog.*
