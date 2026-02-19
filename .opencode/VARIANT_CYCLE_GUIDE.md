# 🎛️ Guia de Uso: Variant Cycle

## O que é?

O **Variant Cycle** permite alternar rapidamente entre diferentes "modos" do modelo Claude Sonnet 4.5:

| Variante | Pensamento | Uso Ideal | Velocidade | Custo |
|----------|-----------|-----------|------------|-------|
| **deep** | 32K tokens | `#feynman`, `#debug`, `#intuition`, `@meta` | ⏳ Profundo | $$ |
| **padrão** | 16K tokens | Tarefas gerais, `#scaffold`, `#experiment` | ⚖️ Balanceado | $$ |
| **fast** | Desativado | `#quiz`, `#drill`, código simples | ⚡ Rápido | $ |

---

## 🚀 Como Usar

### Método 1: Tecla de Atalho (Recomendado)

Durante qualquer sessão do OpenCode, pressione:

```
Ctrl + V
```

Isso cicla entre as variantes:
```
deep → padrão → fast → deep → ...
```

### Método 2: Comando Manual

```bash
# Ver variante atual
/models

# Alterar variante
/variant deep
/variant fast
/variant default
```

### Método 3: Configuração por Agente

Os agentes já vêm pré-configurados:

| Agente | Variante Padrão | Por quê |
|--------|-----------------|---------|
| `@tutor` | **deep** | Ensino socrático precisa de reflexão profunda |
| `@meta` | **deep** | Planejamento estratégico exige análise completa |

---

## 💡 Workflow Recomendado

### 📚 Sessão de Estudo Típica (60 min)

**1. Início rápido (5 min)**
```bash
make start
# Usa variante: fast (quiz é rápido)
```

**2. Estudo principal (45 min)**
```bash
make study

# Escolha 1: Scaffold (use fast - Ctrl+V)
#directness [desafio]

# Escolha 2: Debug complexo (mantenha deep)
#debug

# Escolha 3: Drill simples (mude para fast)
#drill [conceito]
→ Ctrl+V (muda para fast)

# Escolha 4: Feynman profundo (volte para deep)
#feynman [conceito]
→ Ctrl+V (muda para deep)
```

**3. Finalização (10 min)**
```bash
make end
# Usa variante: fast (log é simples)
```

---

## 🎯 Quando Usar Cada Variante

### 🔵 Deep (Pensamento Máximo)
**Pressione `Ctrl+V` até ver: `Variant: deep`**

Use para:
- ✅ `#feynman` - Explicações complexas
- ✅ `#debug` - Problemas difíceis
- ✅ `#intuition` - Entender conceitos profundos
- ✅ `@meta` - Planejamento estratégico
- ✅ Primeira vez aprendendo um tópico novo
- ✅ Código com múltiplos arquivos

**Custo:** ~0.03€ por interação

---

### 🟢 Fast (Sem Pensamento)
**Pressione `Ctrl+V` até ver: `Variant: fast`**

Use para:
- ✅ `#quiz` - Perguntas rápidas
- ✅ `#drill` - Repetição de exercícios
- ✅ `#scaffold` - Gerar boilerplate
- ✅ Revisar código simples
- ✅ Perguntas factuais

**Custo:** ~0.01€ por interação (66% de economia!)

---

### 🟡 Padrão (Pensamento Moderado)
**Pressione `Ctrl+V` até ver: `Variant: default`**

Use para:
- ✅ `#directness` - Projetos práticos
- ✅ `#experiment` - Comparar soluções
- ✅ `#feedback` - Revisão de código médio
- ✅ Tarefas gerais

**Custo:** ~0.02€ por interação

---

## 📊 Economia Estimada

Sem variantes (sempre deep):
- 60 interações/mês × 0.03€ = **1.80€**

Com variantes (inteligente):
- 20 deep × 0.03€ = 0.60€
- 30 default × 0.02€ = 0.60€
- 10 fast × 0.01€ = 0.10€
- **Total: 1.30€** (28% de economia!)

---

## ⚡ Dicas Pro

### 1. Atalho de Teclado Customizado

Edite `~/.config/opencode/config.json` (se existir):
```json
{
  "keybinds": {
    "variant_cycle": "ctrl+shift+v"
  }
}
```

### 2. Ver Variante Atual

Sempre que você alternar, o OpenCode mostra:
```
[Variant: deep]  → Pensamento profundo ativado
[Variant: fast]  → Respostas rápidas
```

### 3. Workflow Automático

Crie aliases no seu shell:
```bash
# ~/.bashrc ou ~/.zshrc
alias tutor-deep='opencode run --agent @tutor --variant deep'
alias tutor-fast='opencode run --agent @tutor --variant fast'
```

### 4. Regras de Ouro

```
❓ Pergunta simples? → FAST
🧠 Explicação profunda? → DEEP
🐛 Bug complicado? → DEEP
📝 Boilerplate? → FAST
🎯 Primeira vez? → DEEP
🔄 Revisão? → FAST ou DEFAULT
```

---

## 🎓 Exemplos Práticos

### Exemplo 1: Aprendendo Recursão

```bash
# Passo 1: Entender profundamente (DEEP)
#intuition recursão
→ Aguarda resposta reflexiva

# Passo 2: Praticar (mude para FAST)
Ctrl+V → [Variant: fast]
#drill recursão
→ Resposta rápida, economiza tokens

# Passo 3: Explicar para validar (volte para DEEP)
Ctrl+V → [Variant: deep]
#feynman recursão
→ Explicação completa e socrática
```

### Exemplo 2: Debug Session

```bash
# Bug complicado (DEEP)
#debug
→ Mantém deep para análise completa

# Correção simples (FAST)
Ctrl+V → [Variant: fast]
"Como aplico essa correção?"
→ Resposta direta e rápida
```

### Exemplo 3: Planejamento com @meta

```bash
# Sempre DEEP para @meta
opencode run --agent @meta
#decompose-goal "Aprender Python em 3 meses"
→ @meta já usa deep por padrão
```

---

## 🔧 Troubleshooting

**"Variant não muda"**
```bash
# Verifique se está no modo TUI
opencode

# Ou use comando explícito
/variant deep
```

**"Quero sempre usar fast por padrão"**
Edite `opencode.json`:
```json
{
  "model": "opencode/claude-sonnet-4-5",
  "options": {
    "variant": "fast"
  }
}
```

**"Custo ainda alto"**
- Use `kimi-k2.5-free` para tarefas simples
- Reserve `claude-sonnet-4-5` apenas para ensino profundo

---

## 🎯 Resumo

| Comando | Ação |
|---------|------|
| `Ctrl+V` | Alternar variante |
| `/models` | Ver modelo/variante atual |
| `/variant deep` | Pensamento máximo |
| `/variant fast` | Resposta rápida |
| `/variant default` | Balanceado |

**Regra de ouro:** Use `Ctrl+V` sempre que sentir que a resposta está muito rápida (mude para deep) ou muito lenta (mude para fast)!

---

Configuração salva em: `opencode.json` 🚀
