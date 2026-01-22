# 🚀 Ultralearning

Sistema de aprendizado autodirigido baseado em **Scott Young**, otimizado para OpenCode.

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

## 📋 Comandos (13 total)

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

### Utilitários
| Comando | Descrição |
|---------|-----------|
| `make status` | Ver streak e info do módulo |
| `make help` | Lista todos os comandos |
| `make setup` | Configuração inicial |
| `make backup` | Backup dos dados |

---

## 🤖 Agentes

| Agente | Função |
|--------|--------|
| **@meta** | Planejamento estratégico, decomposição de objetivos |
| **@tutor** | Mentor socrático, quiz, drills, feedback |

### Keywords do @tutor
| Keyword | Uso |
|---------|-----|
| `#directness [desafio]` | Projeto prático guiado |
| `#drill [conceito]` | Exercícios repetitivos (5-10x) |
| `#quiz N perguntas` | Retrieval practice rápido |
| `#feynman [conceito]` | Explicar para validar compreensão |
| `#scaffold [projeto]` | Criar estrutura base |
| `#experiment [conceito]` | Comparar 3 soluções diferentes |
| `#feedback` | Revisão de código |
| `#debug` | Guia de debug socrático |
| `#intuition [conceito]` | Entender o "por quê" profundo |

### Keywords do @meta
| Keyword | Uso |
|---------|-----|
| `#decompose-goal [objetivo]` | Decompor objetivo em plano acionável |
| `#map-resources [tópico]` | Curar recursos em 3 tiers |
| `#create-weekly-plan semana N` | Gerar plano semanal |
| `#adjust-plan [situação]` | Reajustar cronograma |
| `#benchmark-test` | Criar teste de proficiência |

---

## 📁 Estrutura

```
ultralearning/
├── .opencode/agents/       # @meta, @tutor
├── shared/scripts/         # streak.sh, spaced-repetition.sh
├── [seu-modulo]/
│   ├── logs/daily/         # Logs diários
│   ├── meta/               # Planos, retrospectivas
│   ├── projects/           # Projetos práticos
│   └── knowledge/          # Conceitos aprendidos
└── Makefile                # 13 comandos
```

---

## 🔥 Workflow Diário

```
┌─────────────────────────────────────┐
│  make start    (5 min)              │
│  └── Quiz automático (3 perguntas)  │
├─────────────────────────────────────┤
│  make study    (50 min)             │
│  ├── 1. Code      → Projeto prático │
│  ├── 2. Drill     → Exercícios      │
│  ├── 3. Feynman   → Explicar        │
│  ├── 4. Scaffold  → Estrutura       │
│  ├── 5. Experiment→ Comparar        │
│  └── 6. Feedback  → Revisar código  │
├─────────────────────────────────────┤
│  make end      (5 min)              │
│  └── Salva log + atualiza streak    │
└─────────────────────────────────────┘
```

---

## 💰 Custo Estimado

- **Por sessão (1h)**: ~0.02€
- **Por mês (30 dias)**: ~0.60€
- **Orçamento**: 15€/mês

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
- Quiz automático testa o que você estudou ontem
- Ativa memória antes de aprender novo conteúdo

**📚 Estudo (50 min)**
```bash
make study
```
Escolha baseado no que precisa:

| Situação | Opção | Por quê |
|----------|-------|--------|
| Aprender algo novo | 1. Code | Aprende fazendo |
| Praticar sintaxe | 2. Drill | Repetição = automatização |
| Revisar conceito | 3. Feynman | Se não explica, não entendeu |
| Começar projeto | 4. Scaffold | Estrutura pronta, foco no código |
| Comparar abordagens | 5. Experiment | Entender trade-offs |
| Revisar seu código | 6. Feedback | Identificar melhorias |

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
# Verifique se OpenCode está instalado
opencode --version
```

**Streak não atualiza?**
```bash
./shared/scripts/streak.sh reset  # Resetar stats
```

---

Feito com 🧠 para aprender melhor.
