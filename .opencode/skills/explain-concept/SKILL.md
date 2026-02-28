---
name: "explain-concept"
description: "Introduzir conceito completamente novo com analogias e exemplos mínimos. Diferente de #feynman onde o usuário explica."
license: MIT
compatibility: opencode
metadata:
  principle: "5-retrieval"
  agent: "@tutor"
  keywords: "explain, introduce, analogia, new-concept"
---

## O que é Explain-Concept

Introduzir um conceito que o usuário **NUNCA viu** de forma acessível:
- Analogia do mundo real → conectar ao que já conhece
- Exemplo prático mínimo → mais simples possível
- Aplicação real → onde e quando se usa

## Diferença de #feynman

| #explain | #feynman |
|----------|----------|
| Agente introduz o conceito | Usuário explica para validar |
| Use quando NUNCA viu | Use quando JÁ estudou |
| Usuário recebe informação | Usuário produz informação |
| Output: usuário entende | Output: usuário sabe se entendeu |

## Quando Usar

✅ **USE** para:
- Conceito completamente novo para o usuário
- "O que é X?" sem conhecimento prévio
- Introdução antes de qualquer prática

❌ **NÃO USE** para:
- Validar compreensão → use `#feynman`
- Praticar procedimento → use `#drill`
- Fazer projeto → use `#directness`

## Processo

### Passo 1: Analogia do Mundo Real (2 min)

Conecte a algo que o usuário já conhece:

```markdown
"🔗 Analogia: uma closure é como uma mochila.
A função carrega variáveis do contexto onde foi criada — 
mesmo depois desse contexto desaparecer."
```

**Regras da analogia**:
- Algo do dia-a-dia (cozinha, casa, escola, trabalho)
- Concreto, não abstrato
- Familiar, não exótico

### Passo 2: Exemplo Prático Mínimo (5 min)

O código/diagrama **mais simples possível** que demonstra o conceito:

```python
def contador():
    n = 0  # ← variável na mochila
    def incrementa():
        nonlocal n
        n += 1
        return n
    return incrementa

c = contador()
c()  # 1
c()  # 2  ← 'n' sobrevive porque está na mochila!
```

**Regras do exemplo**:
- Mínimo, não mais complexo que necessário
- Comentários explicativos nos pontos-chave
- Executável, não pseudocódigo

### Passo 3: Aplicação Real (2 min)

Onde e quando se usa:

```markdown
"Aplica-se em:
- Callbacks (passar função com contexto)
- Decoradores (envolver função com estado)
- Factories (criar funções especializadas)
- Event handlers (preservar variáveis)"
```

### Passo 4: Sugerir Feynman para Validar (1 min)

```markdown
"Consegue explicar com suas próprias palavras?
→ Use `#feynman closures` para testar se entendeu de verdade!"
```

## Exemplo de Interação

```
Usuário: "#explain monads"

Você: "🔗 Analogia: uma monad é como um pipeline de garantias.
Cada etapa da pipeline garante algo:
- Maybe: garante que null/undefined são tratados
- Result: garante que erros são capturados
- Async: garante que promessas são aguardadas

Exemplo mínimo (Maybe/Option em Rust):
```rust
fn divide(a: i32, b: i32) -> Option<i32> {
    if b == 0 { None } else { Some(a / b) }
}

// Pipeline — cada etapa pode falhar graciosamente
let result = divide(10, 2)
    .map(|x| x * 2)
    .filter(|x| *x > 5);

// result = Some(10)
```

Usada para:
- Tratar null/erro de forma elegante
- Encadear operações que podem falhar
- Evitar if/else aninhados

Entendeu? Use `#feynman monads` para validar!"
```

## Métricas de Sucesso

| Métrica | Verde ✅ | Vermelho 🔴 |
|---------|----------|-------------|
| Analogia usada | Clara e familiar | Abstrata ou confusa |
| Exemplo mínimo | <20 linhas | >50 linhas |
| Aplicação real | 2+ casos de uso | Vago ou ausente |
| Handoff sugerido | Feynman indicado | Não mencionou |

## Handoff

- Entendeu basicamente? → `#feynman [conceito]` para validar
- É um procedimento? → `#drill [conceito]` para praticar
- Quer aplicar em projeto? → `#directness` com esse conceito

## 📋 Makefile Integration

**Comandos relacionados**:
- `make study` — Continuar com Feynman ou Drill

**Quando sugerir**:
- Após introdução bem-sucedida → sugerir `#feynman` para validar
