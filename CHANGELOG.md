# Changelog

Todas as mudanças notáveis neste projeto serão documentadas neste arquivo.

O formato é baseado em [Keep a Changelog](https://keepachangelog.com/pt-BR/1.0.0/),
e este projeto adere ao [Versionamento Semântico](https://semver.org/lang/pt-BR/).

## [Não Publicado]

### Added
- Pasta `reviews/` com sistema de revisões do projeto
- README para pasta `reviews/` documentando propósito e estrutura
- README para pasta `planning/` com documentos de planejamento renomeados
- README para pasta `guides/` documentando princípios e técnicas
- Pasta `archived/` com sistema de arquivamento de projetos
- Comando `make archive` para automatizar arquivamento
- Template de relatório final para projetos arquivados (`_template-relatorio.md`)
- Índice de projetos arquivados (`indice.md`)

### Changed
- Nomenclatura padronizada na pasta `planning`:
  - `HOW-TO-USE-PROTOTYPE.md` → `howto-usar-prototipo.md`
  - `PROTOTYPE-PHASE0-REPORT.md` → `report-prototipo-fase0.md`
  - `plan-rust-to-zig.md` → `plano-migracao-rust-zig.md`
  - `module-structure-proposal.md` → `proposta-estrutura-modular.md`
- Total de comandos make: 13 → 14 (adicionado `make archive`)

## [2.4.0] - 2025-01-XX

### Added
- Revisão geral do plano CS Fundamentals v2.4
- Fase 5B (Systems) com 7 tópicos em 14 semanas
- Binary Search e Greedy algorithms
- Union-Find em Heaps
- Probabilidade na fase de matemática
- Error Handling em Memory
- Sistema de sustentabilidade com métricas de saúde do projeto
- Mini-projetos com escopo de 5 horas e stretch goals
- Capstone com 4 opções e checklists de MVP

### Changed
- Timeline ajustada para 88 semanas (~22 meses)
- Distribuição estratégica de 8 buffer weeks (~9% do tempo)
- Progressão pedagógica refinada: Math → Rust → DS → Algorithms

## [2.3.0] - 2025-01-XX

### Added
- Adicionados tópicos de Probabilidade
- Adicionados Error Handling

## [2.2.0] - 2024-XX-XX

### Changed
- Renomeação de arquivos para semanas reais (week-01, week-02, etc.)

## [2.1.0] - 2024-XX-XX

### Added
- Sistema de sustentabilidade implementado
- Ritual de retomada após pausas
- Revisão quinzenal obrigatória

## [2.0.0] - 2024-XX-XX

### Added
- Plano CS Fundamentals original
- Estrutura de 6 phases (0-6)
- 88 semanas de conteúdo
- Phase 0: Math Foundations (5 semanas)
- Phase 1: Rust Foundations (8 semanas)
- Phase 2: Data Structures (12 semanas)
- Phase 3: Algorithms (12 semanas)
- Phase 4: Advanced Rust (4 semanas)
- Phase 5A: Go Foundations (4 semanas)
- Phase 5B: Systems (14 semanas)
- Phase 6: Compilers + Capstone (18 semanas)

---

## Convenções de Versionamento

### Formato da Versão
`MAJOR.MINOR.PATCH`

- **MAJOR**: Mudanças arquiteturais significativas (ex: troca de linguagem, reestruturação completa)
- **MINOR**: Adições de funcionalidades ou fases (ex: novos módulos, técnicas)
- **PATCH**: Correções, ajustes menores, documentação

### Exemplos de Mudanças

**MAJOR (X.0.0)**:
- Migração Rust → Zig
- Reestruturação em módulos independentes
- Mudança na arquitetura do sistema

**MINOR (x.Y.0)**:
- Adição de nova fase/módulo
- Novas técnicas de estudo
- Novos benchmarks

**PATCH (x.y.Z)**:
- Correções em arquivos de semanas
- Ajustes de timelines
- Melhorias na documentação
- Renomeações de arquivos

---

## Roadmap

### [3.0.0] - Planejado
- [ ] Implementação da estrutura modular (8 módulos independentes)
- [ ] SRS unificado com master-deck.csv
- [ ] Retrieval cross-module entre módulos
- [ ] Retrospectivas trimestrais
- [ ] Sistema de flashcards agregado

### [2.5.0] - Planejado
- [ ] Revisão e ajuste da Fase 5B (reduzir densidade)
- [ ] Adicionar tópico dedicado de Testing
- [ ] Documentar Async Rust como estudo futuro
- [ ] Ajustar meta de LeetCode para ~100 problemas

---

## Notas

- As datas no formato "XX" indicam data aproximada ou não registrada
- Versões anteriores a 2.0 não foram documentadas sistematicamente
- Este changelog foi criado em 2026-02-19 e documenta o histórico retroativamente

