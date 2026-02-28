---
name: "decomposition"
description: "Dividir objetivos complexos em partes gerenciáveis e ordenadas. Implementa Metalearning."
license: MIT
compatibility: opencode
metadata:
  principle: "1-metalearning"
  agent: "@meta"
  keywords: "decomposition, breakdown, hierarchy, planning, metalearning"
---

## O que é Decomposition

Dividir objetivos complexos em partes menores, gerenciáveis e acionáveis, organizadas hierarquicamente.

**Benefícios**:
- ✅ Torna grande em pequeno (gerenciável)
- ✅ Permite estimar tempo por parte
- ✅ Mostra próximos passos claros
- ✅ Acompanha progresso incremental

## Quando Usar

✅ **USE** para:
- Objetivo parece grande demais ("Aprender Rust")
- Não sabe por onde começar
- Estimativa de tempo difícil
- Múltiplos componentes
- Dependências entre tópicos

❌ **NÃO USE** para:
- Tarefa já simples (over-engineering)
- Exploração livre (prematura)
- Tempo extremamente curto

## Processo

### Passo 1: Definir Objetivo Claro (5 min)

Pergunte ao usuário:
- "Qual seu objetivo final em 1 frase?"
- "Em quanto tempo quer alcançar?"
- "Qual seu nível atual?"
- "Qual nível quer atingir?"

**Exemplo**:
```markdown
Objetivo: "Dominar estruturas de dados e algoritmos"
Tempo: 6 meses
Nível atual: Básico (sintaxe, loops)
Nível alvo: Intermediário (implementar do zero, analisar Big O)
```

### Passo 2: Decompor em 5 Níveis (20 min)

**Nível 1: Módulo** (meses)
- Unidade maior de aprendizado
- Ex: "Algoritmos de ordenação"

**Nível 2: Phase** (semanas)
- Subdivisão do módulo
- Ex: "Sorting básico" (2 semanas)

**Nível 3: Week** (dias)
- Entregas semanais
- Ex: "Bubble sort + selection sort"

**Nível 4: Day** (sessões)
- Escopo de 1 sessão de estudo
- Ex: "Implementar bubble sort 5x"

**Nível 5: Session** (entregas)
- Resultados mensuráveis
- Ex: "Código funcionando + 3 testes passando"

### Passo 3: Framework 3D (10 min)

Distribuir conteúdo em 3 dimensões:

| Dimensão | O quê | % Tempo | Método |
|----------|-------|----------|--------|
| **Conceitos** | Entender o "por quê" | 40% | `#feynman` |
| **Fatos** | Memorizar | 20% | Flashcards/SRS |
| **Procedimentos** | Automatizar | 40% | `#drill` |

**Exemplo de decomposição**:

```markdown
## Módulo: Sorting Algorithms (4 semanas)

### Semana 1: Sorting Básico
- Conceitos (40%): #feynman "Como bubble sort funciona?"
- Fatos (20%): Flashcards de complexidades
- Procedimentos (40%): #drill implementar bubble sort 5x

### Semana 2: Sorting Eficiente
- Merge sort + quick sort
- #feynman "Por que merge sort é O(n log n)?"
- #drill quick sort partition

### Semana 3: Comparação e Análise
- Comparar 5 algoritmos
- #directness: Visualizer de sorting
- #feedback: Code review

### Semana 4: Aplicação
- #directness: Projeto real usando sorting
- #drill: Edge cases
- Benchmarking
```

### Passo 4: Output (10 min)

Gerar `learning-map.md`:

```markdown
# Learning Map: Sorting Algorithms

## Objetivo
Dominar algoritmos de ordenação, implementar do zero, analisar Big O.

## Tempo Total
4 semanas (40h)

## Decomposição

### Semana 1: Sorting Básico (10h)
- [ ] Feynman: Bubble sort, Selection sort
- [ ] Drill: Implementar 5x cada
- [ ] Quiz: Complexidades básicas

### Semana 2: Sorting Eficiente (10h)
- [ ] Feynman: Merge sort, Quick sort
- [ ] Drill: Implementar 5x cada
- [ ] Debug: Edge cases

### Semana 3: Análise (10h)
- [ ] Directness: Sorting visualizer
- [ ] Feedback: Code review
- [ ] Comparação: Trade-offs

### Semana 4: Aplicação (10h)
- [ ] Directness: Projeto real
- [ ] Drill: Otimizações
- [ ] Review: Flashcards finais

## Métricas de Sucesso
- [ ] Implementar 5 algoritmos do zero
- [ ] Analisar Big O corretamente
- [ ] Escolher algoritmo adequado por contexto
```

## Exemplo de Interação

```
Usuário: "#decompose-goal Aprender segurança de APIs REST"

Você: "Vamos decompor!

1. Qual seu objetivo em 1 frase?
2. Quanto tempo tem?
3. Qual seu nível atual? (beginner/intermediate)
4. O que já sabe sobre o tema?"

[Após respostas]

"Baseado no que disse:

## Módulo: API Security (8 semanas)

### Phase 1: Fundamentos (2 semanas)
- Autenticação vs Autorização
- HTTP security basics
- OWASP Top 10

### Phase 2: Autenticação (3 semanas)
- JWT, OAuth 2.0, Sessions
- Implementar cada um

### Phase 3: Prática (3 semanas)
- Projeto: API segura end-to-end
- Vulnerabilidades comuns
- Pen testing básico

Quer que eu gere o learning-map.md completo?"
```

## Métricas de Sucesso

| Métrica | Verde ✅ | Vermelho 🔴 |
|---------|----------|-------------|
| Objetivo claro | 1 frase, mensurável | Vago ("aprender") |
| Decomposição completa | 5 níveis | <3 níveis |
| Framework 3D aplicado | Conceitos+Fatos+Procedimentos | Só 1 dimensão |
| Output gerado | learning-map.md criado | Sem output |

## Handoff

- Plano criado? → `#map-resources` para curar materiais
- Próximo passo claro? → Usuário pode começar semestre/dia

## 📋 Makefile Integration

**Comandos relacionados**:
- `make plan` — Planejar semana com @meta
- `make resources` — Mapear recursos para o módulo

**Quando sugerir**:
- Learning map criado → sugerir `#map-resources` ou `make resources`
- Pronto para começar → sugerir `make start`
