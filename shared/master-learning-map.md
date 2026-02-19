# 🗺️ Master Learning Map: CS Fundamentals (88 semanas)

> **Visão estratégica global de 22 meses**. Para detalhes táticos, veja o learning-map de cada módulo.

---

## 📋 Índice Rápido
- [Meta](#meta) - Objetivo e filosofia
- [Módulos](#módulos-8-total) - Visão geral dos 8 módulos
- [Timeline Visual](#timeline-visual) - 88 semanas em uma tabela
- [Dependências](#dependências-entre-módulos) - Grafo de pré-requisitos
- [Milestones Trimestrais](#milestones-trimestrais) - Benchmarks Q1-Q4
- [Perguntas Centrais](#perguntas-centrais-de-cada-módulo) - Uma pergunta por módulo
- [Tracking Global](#tracking-global) - Progresso de 22 meses

---

## Meta
- **Objetivo**: Dominar fundamentos profundos de CS
- **Prazo**: ~22 meses (88 semanas)
- **Disponibilidade**: 1h/dia, 5 dias/semana (~440h total)
- **Abordagem**: Math → Rust → Data Structures → Algorithms → Advanced Rust → Go/Systems → Compilers → Capstone
- **Filosofia**: **Sustentabilidade > Velocidade**

---

## 📦 Módulos (8 total)

| # | Módulo | Semanas | Duração | Horas | Status |
|---|--------|---------|---------|-------|--------|
| M1 | [math-foundations](../01-math-foundations/) | 1-5 | 5w | 25h | ⬜ |
| M2 | [rust-foundations](../02-rust-foundations/) | 7-14 | 8w | 40h | ⬜ |
| M3 | [data-structures](../03-data-structures/) | 17-28 | 12w | 60h | ⬜ |
| M4 | [algorithms](../04-algorithms/) | 31-42 | 12w | 60h | ⬜ |
| M5 | [advanced-rust](../05-advanced-rust/) | 45-48 | 4w | 20h | ⬜ |
| M6 | [go-systems](../06-go-systems/) | 50-67 | 18w | 90h | ⬜ |
| M7 | [compilers](../07-compilers/) | 69-72 | 4w | 20h | ⬜ |
| M8 | [capstone-project](../08-capstone-project/) | 73-86 | 14w | 70h | ⬜ |

**Buffers**: Semanas 6, 16, 30, 44, 49, 68, 87-88 (8 semanas de buffer)

---

## 📅 Timeline Visual

```
Mês 1   [M1: Math]━━━━━━━━━━━━━━━━━━━━━ ■
Mês 2   [Buffer] [M2: Rust━━━━━━━━━━━━━━
Mês 3   ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Mês 4   ━━━━━━━━━━━━━━■ [Mini-P1] [Buf]
Mês 5   [M3: Data Structures━━━━━━━━━━━━
Mês 6   ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Mês 7   ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Mês 8   ━━━━━━■ [Mini-P2] [Buffer] [M4: 
Mês 9   Algorithms━━━━━━━━━━━━━━━━━━━━━━
Mês 10  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Mês 11  ━━━━━━━━━━━━━━━━━━■ [Mini-P3][B]
Mês 12  [M5: Adv Rust━━■ [B] [M6: Go+Sys
Mês 13  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Mês 14  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Mês 15  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Mês 16  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Mês 17  ━━━━━━━━━━━━━━━━━━━━━━━■ [Buffer]
Mês 18  [M7: Compilers■ [M8: Capstone━━━
Mês 19  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Mês 20  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Mês 21  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Mês 22  ━━━━━━━━━━━━━━━━━━━━■ [Buffers]
```

---

## 🔗 Dependências entre Módulos

```
M1 (Math) ─────┬─────────────────────┐
               ↓                     ↓
M2 (Rust) ─────┼──────┬─────┬───────┼──────┐
               ↓      ↓     ↓       ↓      ↓
         M3 (DS) ─┐  M5    M6     M7      │
                  ↓                        │
              M4 (Algo)                    │
                                           ↓
                                    M8 (Capstone)
```

**Legenda**:
- **Forte** (→): Pré-requisito obrigatório
- **Fraco** (⇢): Recomendado mas não obrigatório

**Flexibilidade**:
- M5 pode ser feito antes de M3/M4 (só depende de M2)
- M6 é independente de M3/M4/M5 (só precisa M2 conceitual)

---

## 🎯 Milestones Trimestrais

| Trimestre | Semana | Benchmark | Critério de Sucesso |
|-----------|--------|-----------|---------------------|
| **Q1** | 16 | Mini-Projeto 1 | Memory Allocator funcional |
| **Q2** | 44 | Algoritmos | 7/10 problemas LeetCode corretos |
| **Q3** | 68 | Systems | HTTP server do zero explicado |
| **Q4** | 86 | Capstone | Projeto final + documentação |

**Retrospectivas obrigatórias**: 
- `shared/retrospectives/quarterly/Q1-review.md` (após semana 16)
- `shared/retrospectives/quarterly/Q2-review.md` (após semana 44)
- `shared/retrospectives/quarterly/Q3-review.md` (após semana 68)
- `shared/retrospectives/quarterly/Q4-review.md` (após semana 86)

---

## ❓ Perguntas Centrais de Cada Módulo

| Módulo | Pergunta Central | Habilidade-Chave |
|--------|------------------|------------------|
| **M1** | Que matemática preciso para algoritmos? | Ler Big O, provas por indução |
| **M2** | Como Rust gerencia memória sem GC? | Ownership, borrowing, lifetimes |
| **M3** | Como escolher estrutura certa? | Implementar DS do zero, analisar trade-offs |
| **M4** | Como analisar algoritmos? | Complexidade, resolver problemas |
| **M5** | Como abstrair código em Rust? | Traits, generics, DP |
| **M6** | Como computadores executam código? | Go concorrência, CPU, OS, redes, DB |
| **M7** | Como linguagens funcionam? | Lexer, parser, interpreter |
| **M8** | Como integrar tudo? | Projeto real com arquitetura sólida |

---

## 📈 Tracking Global

### Progresso por Módulo
- [ ] M1: Math Foundations (0/5 semanas)
- [ ] M2: Rust Foundations (0/8 semanas)
- [ ] M3: Data Structures (0/12 semanas)
- [ ] M4: Algorithms (0/12 semanas)
- [ ] M5: Advanced Rust (0/4 semanas)
- [ ] M6: Go + Systems (0/18 semanas)
- [ ] M7: Compilers (0/4 semanas)
- [ ] M8: Capstone (0/14 semanas)

### Métricas Globais

| Métrica | Meta | Atual | % |
|---------|------|-------|---|
| Módulos completados | 8 | 0 | 0% |
| Semanas estudadas | 88 | 0 | 0% |
| Horas acumuladas | 440h | 0h | 0% |
| Mini-projetos | 4 | 0 | 0% |
| Problemas LeetCode | ~100 | 0 | 0% |

### Saúde do Projeto

| Indicador | Verde ✅ | Amarelo ⚠️ | Vermelho 🔴 | Atual |
|-----------|----------|------------|-------------|-------|
| Dias/semana | 4-5 | 3 | <3 | - |
| SRS diário | Sim | 3x/sem | <3x/sem | - |
| Atraso | 0 sem | 1-2 sem | >2 sem | - |

---

## 🧭 Como Usar Este Map

### Durante o estudo
1. **Use learning-map modular** do módulo atual para tática diária
2. **Volte aqui** para lembrar da visão geral e próximos passos

### Finais de semana
1. **Atualize progresso** neste arquivo
2. **Verifique saúde do projeto**
3. **Planeje ajustes** se necessário

### Final de trimestre
1. **Faça retrospectiva trimestral** (`shared/retrospectives/quarterly/`)
2. **Revise conexões** entre módulos completados
3. **Ajuste cronograma** se necessário

---

## 🔗 Links Rápidos

### Módulos
- [M1: Math Foundations](../01-math-foundations/README.md)
- [M2: Rust Foundations](../02-rust-foundations/README.md) (futuro)
- [M3: Data Structures](../03-data-structures/README.md) (futuro)
- [M4: Algorithms](../04-algorithms/README.md) (futuro)
- [M5: Advanced Rust](../05-advanced-rust/README.md) (futuro)
- [M6: Go + Systems](../06-go-systems/README.md) (futuro)
- [M7: Compilers](../07-compilers/README.md) (futuro)
- [M8: Capstone](../08-capstone-project/README.md) (futuro)

### Recursos
- [SRS Master Deck](./flashcards/master-deck.csv)
- [Script de Sincronização](./flashcards/sync-script.sh)
- [Retrospectivas Trimestrais](./retrospectives/quarterly/)

---

**Última atualização**: 2026-02-08 (Protótipo Fase 0)
**Versão**: 3.0 (Estrutura Modular)
