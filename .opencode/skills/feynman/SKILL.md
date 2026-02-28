---
name: "feynman"
description: "Técnica de explicação — validar compreensão profunda explicando como para criança de 12 anos."
license: MIT
compatibility: opencode
metadata:
  principle: "5-retrieval, 8-intuition"
  agent: "@tutor"
  keywords: "feynman, explain, understand, validate, analogy"
---

## O que é Feynman

Explicar um conceito complexo de forma simples, como se estivesse ensinando para uma **criança de 12 anos** ou alguém sem conhecimento prévio.

**Frase de Richard Feynman**:
> "Se você não consegue explicar de forma simples, você não entendeu bem o suficiente."

**Benefícios**:
- ✅ Identifica gaps — Se não consegue explicar, não entendeu
- ✅ Solidifica memória — Explicar = reprocessar informação
- ✅ Cria conexões — Analogias conectam novo → conhecido
- ✅ Previne ilusão de competência — "Achava que sabia, mas não sei explicar"

## Quando Usar

✅ **USE** para:
- Conceitos abstratos ("O que é ownership em Rust?")
- Entender "por quê" ("Por que Big O ignora constantes?")
- Relações entre ideias ("Como hash table usa array internamente?")
- Teorias ("Como funciona garbage collection?")
- Trade-offs ("Por que Rust é mais difícil que Python?")

❌ **NÃO USE** para:
- Fatos isolados ("Quanto é log₂(64)?") → use flashcards (`make review`)
- Sintaxe ("Como declarar Vec?") → use flashcards
- Procedimentos ("Implementar binary search") → use `#drill`
- Projetos → use `#directness`

## Processo

### Passo 1: Escolher o Conceito (2 min)

Pergunte ao usuário:
- Escolha **1 conceito** que estudou recentemente
- Algo que "acha" que entendeu
- Pode explicar sem consultar?

**Regra**: Conceito que ainda não estudou → estude PRIMEIRO, depois use Feynman.

### Passo 2: Escrever Explicação SEM Consultar (15-20 min)

**REGRAS**:
1. NÃO consulte material
2. Escreva como se fosse para criança de 12 anos
3. Use analogias do dia-a-dia
4. Evite jargão técnico (ou defina em linguagem simples)

**Template de explicação**:
```markdown
# [Conceito]: Explicação Feynman

## O que é?
[Defina em 1-2 frases simples]

## Por que existe?
[Qual problema resolve?]

## Como funciona?
[Explique o mecanismo, passo a passo]

## Analogia do dia-a-dia
[Compare com algo que todos conhecem]

## Exemplo prático
[Mostre em código ou situação real]

## Por que importa?
[Quando você vai usar isso?]
```

### Passo 3: Identificar Gaps (5-10 min)

Releia a explicação e marque:
- 🚩 Partes confusas
- 🚩 Onde usou jargão sem explicar
- 🚩 Onde não conseguiu simplificar
- 🚩 Onde ficou vago

**Perguntas para identificar gaps**:
- Uma criança de 12 anos entenderia?
- Usei jargão sem definir?
- Consegui criar analogia clara?
- Ficou algo vago ou abstrato demais?

### Passo 4: Revisar e Simplificar (10-15 min)

**Agora PODE consultar material**:
1. Estude de novo nos gaps identificados
2. Reescreva partes fracas
3. Adicione analogia/exemplo

**Técnicas de simplificação**:
- Jargão → Linguagem simples: "assintótico" → "quando n fica muito grande"
- Abstrato → Concreto: "complexidade" → "quantas operações executa"
- Formal → Analogia: "O(n²)" → "como checar todos os pares em uma lista"

### Passo 5: Testar (Opcional, 10 min)

Explique para:
- Amigo/colega (melhor opção)
- Pato de borracha (rubber duck debugging)
- **@tutor** via chat

## Diferença de #explain

| #explain | #feynman |
|----------|----------|
| Agente introduz o conceito | Usuário explica para validar |
| Use quando NUNCA viu | Use quando JÁ estudou |
| Pode consultar material | NÃO pode consultar |
| Output: usuário entende | Output: usuário sabe se entendeu |

## Exemplo de Interação

```
Usuário: "#feynman closures"

Você: "Vamos validar sua compreensão de closures!

Escreva uma explicação como se fosse para uma criança de 12 anos. NÃO consulte nenhum material.

Template:
- O que é? (1-2 frases)
- Por que existe?
- Como funciona?
- Analogia do dia-a-dia
- Exemplo prático

Pode escrever aqui mesmo. Quando terminar, vou fazer perguntas socráticas para identificar gaps."
```

## Métricas de Sucesso

| Métrica | Verde ✅ | Vermelho 🔴 |
|---------|----------|-------------|
| Explicou sem consultar | 80%+ do conceito | <50% |
| Usou analogias | 2+ analogias claras | Nenhuma |
| Evitou jargão | Linguagem simples | Muitos jargões |
| Criou exemplos | 2+ exemplos práticos | Nenhum |
| Respondeu "por quê" | 3 níveis de profundidade | 1 nível |

## Handoff

- Conceito validado? → `#drill` se for procedimento
- Definições importantes? → `make review` para criar flashcards
- Ainda confuso? → Repita `#feynman` com analogia diferente
- Entendeu e é procedimento? → `#drill` para automatizar

## 📋 Makefile Integration

**Comandos relacionados**:
- `make review` — Criar flashcards de definições/importantes
- `make study` — Continuar com outra técnica

**Quando sugerir**:
- Explicação validada com sucesso → sugerir `#drill` (se for procedimento)
- Conceito tem definições importantes → sugerir `make review` para flashcards
- Ainda não entendeu → sugerir repetir Feynman ou usar `#explain`
