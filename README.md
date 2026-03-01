# 🚀 Ultralearning System

Sistema de aprendizado autodirigido integrando três abordagens científicas:

| Abordagem | Autor | Foco |
|-----------|-------|------|
| **Ultralearning** | Scott Young | Intensidade e imersão profunda |
| **A Mind for Numbers** | Dra. Barbara Oakley | Eficiência cognitiva para exatas |
| **Atomic Habits** | James Clear | Consistência e rituais sustentáveis |

Otimizado para aprendizado acelerado de Ciência da Computação.

## ⚡ Quick Start

```bash
# 1. Criar módulo
make module
# Digite: python-basics

# 2. Começar estudo (3 comandos)
make start   # Inicia + quiz automático
make study   # Loop de estudo interativo
make end     # Salva + atualiza streak
```

---

## 📋 Comandos (16 total)

### Sessão Diária
| Comando | Descrição |
|---------|-----------|
| `make start` | Inicia sessão + quiz automático |
| `make study` | Loop interativo (code/drill/feynman/scaffold) |
| `make end` | Encerra, salva log, atualiza streak |

### Módulos
| Comando | Descrição |
|---------|-----------|
| `make module` | Criar novo módulo |
| `make switch` | Alternar módulo ativo |
| `make plan` | Planejar semana com @meta |
| `make resources` | Mapear recursos para o módulo |

### Revisão
| Comando | Descrição |
|---------|-----------|
| `make review` | Spaced repetition (SRS) |
| `make retro` | Retrospectiva semanal (3 perguntas) |
| `make break` | Pausa de 15 min para modo difuso (Oakley) |
| `make drill-extra` | Overlearning: 5 variações de drill (Oakley) |

### Utilitários
| Comando | Descrição |
|---------|-----------|
| `make status` | Ver streak e info do módulo |
| `make help` | Lista todos os comandos |
| `make setup` | Configuração inicial |
| `make backup` | Backup dos dados |
| `make archive` | Arquivar projeto finalizado |

---

## 🤖 Agentes & Skills

### Arquitetura

```
┌─────────────────────────────────────────────────────────────┐
│  AGENTES (.opencode/agents/)                                │
│  ════════════════════════════════════════════════════════    │
│  @meta (primary) → Planejamento estratégico                 │
│  @tutor (subagent) → Execução de sessões                    │
│  @review (subagent, hidden) → Auditoria do framework        │
│  @session (subagent) → Orquestração início/fim              │
│                                                              │
│  Carregam skills ON-DEMAND → reduzem tokens permanentes      │
└─────────────────────────────────────────────────────────────┘
                            │
                            │ skill({ name: "drill" })
                            ▼
┌─────────────────────────────────────────────────────────────┐
│  SKILLS (.opencode/skills/)                                  │
│  ════════════════════════════════════════════════════════    │
│  10 Skills carregadas sob demanda:                          │
│  - drill → Prática deliberada 5-10x                         │
│  - feynman → Validar compreensão explicando                 │
│  - directness → Projetos reais                              │
│  - explain-concept → Introduzir conceito novo               │
│  - quiz → Retrieval practice rápido                         │
│  - zombie-mode → Superar procrastinação                     │
│  - debug-socratic → Guia socrático de bugs                  │
│  - scaffold → Criar boilerplate                            │
│  - decomposition → Dividir objetivos (@meta)               │
│  - benchmarking → Testes de proficiência (@meta)           │
│                                                              │
│  Skills SUGEREM comandos → NÃO executam scripts             │
└─────────────────────────────────────────────────────────────┘
                            │
                            │ Handoff para
                            ▼
┌─────────────────────────────────────────────────────────────┐
│  MAKEFILE & SCRIPTS                                          │
│  ════════════════════════════════════════════════════════    │
│  16 comandos make → 19 scripts bash                          │
│                                                              │
│  Scripts são a INTERFACE → Agentes executam o comportamento  │
└─────────────────────────────────────────────────────────────┘
```

### Separação de Responsabilidades

| Camada | Responsabilidade | Executa? |
|--------|------------------|----------|
| **Skills** | Instruções de comportamento (O QUE) | ❌ Só sugerem |
| **Agentes** | Executam comportamento com tools | ✅ Com permissions |
| **Scripts** | Interface bash para usuário | ✅ |

### Agentes

| Agente | Modelo | Função |
|--------|--------|--------|
| **@meta** | GLM-5 | Planejamento estratégico, decomposição de objetivos |
| **@tutor** | GLM-5 | Mentor socrático, quiz, drills, feedback |
| **@review** | GLM-5 | Revisão arquitetural, auditoria (hidden) |
| **@session** | opencode/glm-4.7 | Orquestrador de sessões — lightweight |

### Skills do @tutor

| Skill | Keyword | Uso |
|-------|---------|-----|
| `directness` | `#directness [desafio]` | Projeto prático guiado |
| `drill` | `#drill [conceito]` | Exercícios repetitivos (5-10x) |
| `feynman` | `#feynman [conceito]` | Explicar para validar compreensão |
| `explain-concept` | `#explain [conceito]` | Introdução a conceito novo |
| `quiz` | `#quiz N [tópico]` | Retrieval practice rápido |
| `scaffold` | `#scaffold [projeto]` | Criar estrutura base |
| `debug-socratic` | `#debug` | Guia socrático de bugs |
| `zombie-mode` | `#zombie` | Superar procrastinação |

**Outras keywords** (mantidas inline no agente):
- `#experiment [conceito]` — Comparar 3 soluções diferentes
- `#feedback` — Revisão de código
- `#intuition [conceito]` — Entender o "por quê" profundo
- `#diffuse` — Usar modo difuso quando travado
- `#wrap-up` — Consolidar sessão antes de `make end`

### Skills do @meta

| Skill | Keyword | Uso |
|-------|---------|-----|
| `decomposition` | `#decompose-goal [objetivo]` | Decompor objetivo em plano acionável |
| `benchmarking` | `#benchmark-test` | Criar teste de proficiência |

**Outras keywords** (mantidas inline):
- `#map-resources [tópico]` — Curar recursos em 3 tiers
- `#create-weekly-plan semana N` — Gerar plano semanal
- `#update-plan semana [N]` — Registar progresso
- `#adjust-plan [situação]` — Reajustar cronograma
- `#habit-stack` — Criar cadeia de hábitos

### Keywords do @review (Consultor Estratégico)

**Papel**: Analisa o framework e **sugere** melhorias. Cria arquivos em `reviews/` quando pedido explicitamente.

| Keyword | O que faz |
|---------|-----------|
| `#review-structure` | Analisa organização de pastas |
| `#review-scripts` | Avalia qualidade dos scripts bash |
| `#review-docs` | Verifica coerência da documentação |
| `#review-makefile` | Revisa orquestração de comandos |
| `#review-agents` | Analisa efetividade dos agentes |
| `#review-consistency` | Verifica consistência geral |
| `#review-architecture` | Análise arquitetural profunda |
| `#review-costs` | Auditoria de otimização de tokens |
| `#audit-quality` | Auditoria completa (executa todas as anteriores) |
| `#check-readiness [versão]` | Prontidão para release |
| `#meta-review [arquivo]` | Revisa documento gerado pelo @review |

### Keywords do @session
| Keyword | Uso |
|---------|-----|
| `#session-start` | Inicia sessão com contexto do plano — sugere keyword do @tutor |
| `#session-end` | Consolida sessão — gera reflexão + texto para `make end` |
| `#session-plan` | Consulta progresso das entregas da semana |

---

## 📚 Fundamentação Científica

Este sistema integra três abordagens complementares:

| Abordagem | Autor | Foco | Implementação |
|-----------|-------|------|---------------|
| **Ultralearning** | Scott Young | Intensidade e imersão | 9 princípios + 23 técnicas |
| **A Mind for Numbers** | Dra. Barbara Oakley | Eficiência cognitiva | Chunking, Foco/Difuso, Overlearning |
| **Atomic Habits** | James Clear | Consistência e rituais | Cue-Routine-Reward, Habit Stacking, Two-Minute Rule |

### Técnicas de James Clear (Atomic Habits)

**Cue-Routine-Reward (Loop do Hábito):**
Os comandos `make` implementam o loop completo:
- **Cue**: Configurar ambiente (`environment-design.md`)
- **Routine**: `make start` → `make study` → `make end`
- **Reward**: Streak atualizado (`make status`)

**Habit Stacking (Empilhamento):**
Acople ao seu dia existente:
```bash
# Após café da manhã:
make start  # 25 min de estudo

# Após almoço:
make review # SRS de 10 min
```

**Two-Minute Rule:**
Comece ridicularmente pequeno:
- "Vou abrir só o VS Code" (5 segundos)
- "Vou ler 1 linha de código" (10 segundos)
- Naturalmente continua além dos 2 minutos

---

### Técnicas da Dra. Barbara Oakley

**Chunking (Blocos de Conhecimento):**
- `drill.md` → Chunks de procedimentos
- `feynman.md` → Chunks conceituais
- `flashcards.md` → Chunks de fatos

**Modos de Pensamento:**
- `pomodoro.md` → Alternância foco/difuso
- `focused-diffuse.md` → Gestão intencional dos modos

**Transferência & Overlearning:**
- `chunk-transfer.md` → Conectar entre domínios
- `drill.md` → Praticar além do básico

**Procrastinação:**
- `procrastination-zombie.md` → Zombie Mode

---

## 📁 Estrutura do Projeto

```
ultralearning/
├── .opencode/
│   ├── agents/           # @meta, @tutor, @review, @session
│   ├── skills/           # 10 skills carregadas on-demand
│   └── opencode.json     # Config de modelos + agents
├── scripts/              # 19 scripts bash (streak, SRS, etc.)
├── projects/            # Módulos de aprendizado
│   ├── [modulo]/
│   │   ├── logs/daily/   # Logs diários
│   │   ├── meta/         # Planos ativos (learning-map, weeks)
│   │   ├── planning/     # Planos de mudança do currículo
│   │   ├── projects/     # Projetos práticos
│   │   └── knowledge/    # Conceitos aprendidos
│   └── shared/           # Recursos compartilhados
│       └── planning/     # Planejamento multi-módulo
├── guides/               # 9 princípios + 23 técnicas
├── reviews/              # Revisões técnicas do framework
├── planning/             # Propostas de mudança do FRAMEWORK
└── Makefile              # 16 comandos
```

O projeto está organizado em pastas especializadas:

| Pasta | Propósito | Documentação |
|-------|-----------|--------------|
| `.opencode/agents/` | Agentes opencode com frontmatter YAML | — |
| `.opencode/skills/` | Skills carregadas on-demand pelos agentes | [Template](.opencode/skills/_template-skill/SKILL.md) |
| `projects/` | Módulos e projetos de aprendizado | [README](projects/README.md) |
| `guides/` | Biblioteca de técnicas e princípios de aprendizado | [README](guides/README.md) |
| `planning/` | Propostas de mudança do framework (scripts, agentes) | [README](planning/README.md) |
| `reviews/` | Revisões técnicas do framework (consolidadas) | [README](reviews/README.md) |
| `archived/` | Projetos finalizados e arquivados | [README](archived/README.md) |
| `scripts/` | Scripts utilitários (streak, SRS) | - |

### Separação de Planejamento

| Domínio | Local |
|---------|-------|
| **Framework** (scripts, agentes, Makefile) | `planning/` |
| **Módulo específico** (currículo, migração de linguagem) | `projects/{modulo}/planning/` |
| **Compartilhado** (múltiplos módulos) | `projects/shared/planning/` |
| **Planos ativos** (learning-map, weeks, phases) | `projects/{modulo}/meta/` |

## 📦 Arquivamento de Projetos

Quando um projeto é concluído, use `make archive` para:
- Mover todos os arquivos para `archived/[modulo]/[data]-[nome]/`
- Preservar logs, código, conhecimento e metadados
- Criar um relatório final de lições aprendidas
- Manter o módulo ativo limpo

O projeto arquivado mantém todo o histórico e pode ser consultado futuramente.

---

## 🔥 Workflow Diário

```
┌─────────────────────────────────────┐
│  make start    (5 min)              │
│  └── Quiz automático (3 perguntas)  │
├─────────────────────────────────────┤
│  make study    (50 min)             │
│  ├── 0. Session   → Sugestão do plano│
│  ├── 1. Code      → Projeto prático │
│  ├── 2. Drill     → Exercícios      │
│  ├── 3. Feynman   → Explicar        │
│  ├── 4. Scaffold  → Estrutura       │
│  ├── 5. Experiment→ Comparar        │
│  ├── 6. Feedback  → Revisar código  │
│  ├── 7. Explain   → Introdução      │
│  ├── 8. Intuition → Por quê         │
│  ├── 9. Debug     → Debug socrático │
│  ├── z. Zombie    → Procrastinação  │
│  └── d. Diffuse   → Modo difuso     │
├─────────────────────────────────────┤
│  make end      (5 min)              │
│  └── Salva log + atualiza streak    │
└─────────────────────────────────────┘
```

---

## 💰 Custo Estimado (GLM-5 via opencode Zen)

| Modelo | Input | Output | Cached |
|--------|-------|--------|--------|
| **GLM-5** | $1.00/M | $3.20/M | $0.20/M |
| **GLM-4.7** | $0.60/M | $2.20/M | $0.10/M |

**Economia vs Claude**: ~70% mais barato

- **Por sessão (1h)**: ~0.01€
- **Por mês (30 dias)**: ~0.30€
- **Orçamento**: 15€/mês (margem generosa)

---

## 📚 Metodologia

Baseado em **Ultralearning** de Scott Young:
1. **Metalearning**: Planeje antes de executar (@meta)
2. **Focus**: Sessões de 1h focadas
3. **Directness**: Aprenda fazendo projetos reais
4. **Drill**: Repita pontos fracos
5. **Retrieval**: Quiz diário (não releia, recupere)
6. **Feedback**: Feedback honesto (@tutor)
7. **Retention**: Spaced repetition (SRS)
8. **Intuition**: Entenda o "por quê"
9. **Experimentation**: Teste múltiplas abordagens

---

## 🎓 Como Estudar (Guia Passo a Passo)

### Primeira Vez? Comece Aqui:

```bash
# 1. Configure o sistema
make setup

# 2. Crie seu primeiro módulo
make module
# Digite o tema: ex "python-basics"

# 3. Planeje com @meta (opcional mas recomendado)
make plan
# Ou direto: opencode run --agent @meta "#decompose-goal Python básico"
```

### Rotina Diária (1 hora)

**🌅 Início (5 min)**
```bash
make start
```
- @session carrega skill automaticamente
- Quiz automático testa o que você estudou ontem
- Ativa memória antes de aprender novo conteúdo

**📚 Estudo (50 min)**
```bash
make study
```
Escolha baseado no que precisa (skills carregadas automaticamente):

| Situação | Opção | Skill carregada | Por quê |
|----------|-------|-----------------|--------|
| Não sabe o que fazer hoje | 0. Session | — | @session lê o plano e sugere |
| Conceito completamente novo | 7. Explain | `explain-concept` | Analogia primeiro |
| Aprender fazendo | 1. Code | `directness` | Projeto real |
| Praticar sintaxe | 2. Drill | `drill` | Repetição = automatização |
| Revisar conceito | 3. Feynman | `feynman` | Se não explica, não entendeu |
| Começar projeto | 4. Scaffold | `scaffold` | Estrutura pronta |
| Bug difícil | 9. Debug | `debug-socratic` | Guia socrático |
| Sem vontade de estudar | z. Zombie | `zombie-mode` | Two-Minute Rule |
| Travado há >30min | d. Diffuse | — (inline) | Deixar cérebro processar |

**🏁 Fim (5 min)**
```bash
make end
```
- Anota o que aprendeu
- Atualiza seu streak 🔥

### Rotina Semanal

**Domingo (30 min)**
```bash
make retro    # O que funcionou? O que não?
make plan     # Planejar próxima semana
```

**Qualquer dia**
```bash
make review   # Revisar flashcards (SRS)
make status   # Ver progresso
```

### Dicas de Ouro 💡

1. **Consistência > Intensidade**: 1h/dia todo dia > 5h no fim de semana
2. **Não releia, recupere**: Quiz diário força memória ativa
3. **Projetos reais**: Não fique só em tutoriais
4. **Seja honesto**: Se não entendeu, use `#feynman` para testar
5. **Mantenha o streak**: A gamificação funciona!

---

## 🔧 Troubleshooting

**Módulo não encontrado?**
```bash
make switch  # Lista módulos disponíveis
```

**Quiz não funciona?**
```bash
# Verifique se opencode está instalado
opencode --version

# Verifique se GLM-5 está selecionado
# No TUI: /models → deve mostrar opencode/glm-5
```

**Skills não carregam?**
```bash
# Verifique se as skills existem
ls .opencode/skills/*/SKILL.md

# Teste manual
opencode run --agent @tutor "#drill binary search"
```

**Streak não atualiza?**
```bash
./scripts/streak.sh reset  # Resetar stats
```

---

## 🏗️ Arquitetura & Design

### Por que Skills?

**Antes** (sem skills):
```
@tutor: 584 linhas carregadas SEMPRE
→ Mesmo se só vai usar #zombie (5 linhas relevantes)
→ Tokens desperdiçados
```

**Depois** (com skills):
```
@tutor: ~150 linhas (identity + quick reference)
→ #drill invocado → skill carrega +130 linhas
→ Tokens economizados em sessões simples
```

### Benefícios

| Benefício | Antes | Depois |
|-----------|-------|--------|
| Manutenção | Editar agente (584 linhas) | Editar skill (130 linhas) |
| Guias conectados | Não usados | Derivam de guides/ |
| Makefile Integration | Não existia | Handoffs documentados |
| Extensibilidade | +50 linhas no agente | Criar nova SKILL.md |

### Model Routing

| Situação | Modelo | Por quê |
|----------|--------|--------|
| Default | GLM-5 | Melhor raciocínio |
| @session | GLM-4.7 | Orquestração simples |
| small_model | GLM-4.7 | Títulos, sumarização |
| #zombie, #quiz | GLM-4.7 | Tarefas leves |

---

Feito com 🧠 para aprender melhor.
