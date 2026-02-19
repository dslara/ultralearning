# 🗺️ Learning Map: M1 - Math Foundations

> **Plano tático para 5 semanas**. Para visão estratégica global, veja [Master Learning Map](../../shared/master-learning-map.md).

---

## 📋 Índice
- [Meta](#meta) - Objetivo específico do módulo
- [Framework 3D](#framework-3d) - Conceitos, Fatos, Procedimentos
- [Roadmap](#roadmap) - 5 semanas detalhadas
- [Recursos](#recursos) - Tier 1/2/3
- [Benchmark](#benchmark-final) - Como saber que dominou
- [Tracking](#tracking) - Progresso semanal

---

## Meta
- **Objetivo**: Construir base matemática mínima para entender CS
- **Prazo**: 5 semanas (Semanas 1-5 do timeline global)
- **Disponibilidade**: 1h/dia, 5 dias/semana (25h total)
- **Pergunta central**: "Que matemática preciso para entender algoritmos?"

**Não é sobre**: Virar matemático, decorar fórmulas, provas formais complexas  
**É sobre**: Ler e entender conceitos que aparecem em análise de algoritmos

---

## 🧠 Framework 3D

### 📚 Conceitos (40%) - Entender o "por quê"
| Conceito | Prioridade | Por quê importante | Método | Status |
|----------|------------|-------------------|---------|--------|
| Big O notation | ⭐⭐⭐ | Aparece em TODO algoritmo | #feynman | ⬜ |
| Logaritmos | ⭐⭐⭐ | Binary search, árvores | #intuition | ⬜ |
| Indução matemática | ⭐⭐ | Provar recursão funciona | #feynman | ⬜ |
| Conjuntos | ⭐⭐ | Base de structures | #feynman | ⬜ |
| Funções | ⭐⭐ | Abstração em programação | #intuition | ⬜ |
| Combinatória | ⭐ | Contar possibilidades | #drill | ⬜ |
| Probabilidade | ⭐ | Análise de caso médio | #drill | ⬜ |

**Método**:
- `#feynman [conceito]` → Explicar sem consulta
- `#intuition [conceito]` → Entender "por quê" profundo

---

### 🧠 Fatos (30%) - Memorizar
| Fato | Método | Onde usar | Status |
|------|--------|-----------|--------|
| Símbolos: ∑, ∀, ∃, ∈, ⊂, ∪, ∩ | SRS | Ler papers, docs | ⬜ |
| log₂(n) para n = [8, 16, 32, 64, 128, 256] | SRS | Binary search mental | ⬜ |
| Leis de De Morgan | SRS | Simplificar lógica | ⬜ |
| Propriedades de log: log(a×b) = log(a) + log(b) | SRS | Análise de complexidade | ⬜ |
| Fórmulas de somatório: ∑i=1..n i = n(n+1)/2 | SRS | Análise de loops | ⬜ |

**Método**:
- Criar flashcards em `knowledge/flashcards-source.csv`
- Revisar diariamente com `make review`

---

### 🔧 Procedimentos (30%) - Automatizar
| Skill | Tempo-alvo | Como treinar | Status |
|-------|------------|--------------|--------|
| Ler expressão matemática complexa | <30s | #drill símbolos | ⬜ |
| Calcular log₂(n) mentalmente | <10s | #drill logs | ⬜ |
| Traduzir somatório → loop | <2min | #drill 10x | ⬜ |
| Traduzir loop → somatório | <2min | #drill 10x | ⬜ |
| Fazer prova por indução | <15min | #drill 5x | ⬜ |
| Analisar complexidade de loop | <5min | #drill 10x | ⬜ |

**Método**:
- `#drill [skill]` com @tutor → 5-10 repetições

---

## 📅 Roadmap

### Semana 1: Notação & Lógica
**Objetivo**: Ler símbolos matemáticos sem travar

**Perguntas guia**:
- O que significam ∑, ∀, ∃, ∈?
- O que são operadores lógicos (∧, ∨, ¬)?
- Como lógica se traduz para código?

**Entregas**:
- [ ] Cheat sheet pessoal de símbolos
- [ ] Tabelas verdade de AND, OR, NOT, XOR
- [ ] 5 traduções de expressões lógicas → código

**Recursos**: 
- Khan Academy - Logic and Proofs
- MIT 6.042J - Lecture 1

**Arquivo**: `meta/week-01-notation-logic.md`

---

### Semana 2: Conjuntos & Funções
**Objetivo**: Entender coleções e mapeamentos

**Perguntas guia**:
- O que é um conjunto? Como operar (∪, ∩, −)?
- O que define uma função?
- Função injetiva, sobrejetiva, bijetiva - por quê importa?

**Entregas**:
- [ ] 10 exercícios de operações com conjuntos
- [ ] Explicar "função" sem consulta
- [ ] Identificar tipo de 5 funções

**Recursos**: 
- Khan Academy - Sets and Functions
- MIT 6.042J - Lecture 2

**Arquivo**: `meta/week-02-sets-functions.md`

---

### Semana 3: Logaritmos & Exponenciais
**Objetivo**: Entender por quê O(log n) é rápido

**Perguntas guia**:
- O que é log₂(n)? Como calcular mentalmente?
- Por que log aparece em árvores balanceadas?
- Como comparar O(n) vs O(log n) vs O(n²)?

**Entregas**:
- [ ] Calcular log₂ para n = [8, 16, 32, 64, 128, 256] sem calculadora
- [ ] Analisar 5 algoritmos e identificar Big O
- [ ] Explicar "por que binary search é O(log n)"

**Recursos**: 
- Khan Academy - Logarithms
- 3Blue1Brown - Logarithms (YouTube)

**Arquivo**: `meta/week-03-log-exp.md`

---

### Semana 4: Somatórios & Indução
**Objetivo**: Analisar loops e provar recursão

**Perguntas guia**:
- Como traduzir ∑ᵢ₌₁ⁿ i para loop?
- O que é prova por indução?
- Como provar que algoritmo recursivo funciona?

**Entregas**:
- [ ] 5 traduções somatório ↔ loop
- [ ] 3 provas por indução completas
- [ ] Provar corretude de soma recursiva

**Recursos**: 
- MIT 6.042J - Induction
- Khan Academy - Summation

**Arquivo**: `meta/week-04-summation-induction.md`

---

### Semana 5: Combinatória & Probabilidade
**Objetivo**: Contar possibilidades e analisar caso médio

**Perguntas guia**:
- Quando usar permutação vs combinação?
- Como calcular probabilidades básicas?
- O que é análise de caso médio vs pior caso?

**Entregas**:
- [ ] 5 problemas de combinatória aplicados a CS
- [ ] Calcular probabilidade de colisão em hash table
- [ ] Comparar caso médio vs pior caso em 3 algoritmos

**Recursos**: 
- Khan Academy - Combinatorics
- MIT 6.042J - Probability

**Arquivo**: `meta/week-05-combinatorics-graphs.md`

---

## 📚 Recursos

### 🥇 Tier 1 - Essenciais (USE ESTES)
| Recurso | Tipo | Tempo | Custo | Por quê |
|---------|------|-------|-------|---------|
| **Khan Academy - Discrete Math** | Curso online | 15h | Grátis | Explicações visuais, exercícios interativos |
| **MIT 6.042J** (Lectures 1-5) | Vídeos | 5h | Grátis | Foco em CS, exemplos práticos |
| **Exercícios próprios** | Prática | 5h | Grátis | Aplicação direta em análise de algoritmos |

**Total Tier 1**: ~25h (exato para o módulo)

---

### 🥈 Tier 2 - Aprofundamento (se precisar)
| Recurso | Quando usar |
|---------|-------------|
| Wikipedia - Mathematical Symbols | Quando esquecer um símbolo |
| 3Blue1Brown - Logarithms (YouTube) | Se logaritmos não fizeram sentido |
| Rosen - Discrete Math (cap. 1-3) | Se quiser mais exercícios |

---

### 🥉 Tier 3 - Avançado (PULAR por enquanto)
- Concrete Mathematics (Knuth)
- Cursos formais de matemática discreta
- Provas formais complexas

**Por quê pular**: Você precisa do mínimo viável agora. Pode voltar depois se necessário.

---

### ⚠️ Evitar
- ❌ Livros de cálculo (não é necessário para CS fundamentals)
- ❌ Cursos de matemática pura (muito teórico)
- ❌ Decorar fórmulas sem entender

---

## 🎯 Benchmark Final

**Nome**: "Ler e Entender Análise de Algoritmo"

**Nível**: 🟢 Básico

**Desafio**: 
Será dado um algoritmo com análise matemática completa (similar ao que você encontra em papers). Você deve:

1. **Explicar cada símbolo matemático** usado na análise
2. **Traduzir somatórios** para código (loops)
3. **Justificar a complexidade final** (Big O) com raciocínio lógico

**Exemplo de entrada**:
```
Análise do Bubble Sort:
Número de comparações = ∑ᵢ₌₁ⁿ⁻¹ (n - i) = n(n-1)/2
Portanto, T(n) ∈ O(n²)
```

**Requisitos**:
- [ ] Explicar o que significa ∑, n, i
- [ ] Traduzir o somatório para loop em pseudocódigo
- [ ] Justificar por que n(n-1)/2 resulta em O(n²)
- [ ] Tempo máximo: 15 minutos

**Critério de sucesso**:
- ✅ Passou: 80%+ dos símbolos explicados + justificativa correta
- ⚠️ Parcial: Entendeu mas não conseguiu explicar claramente
- ❌ Falhou: Não entendeu os símbolos ou não justificou

**Se falhou**: Revisar semanas 1, 3 e 4 antes de avançar para M2.

---

## 📈 Tracking

### Progresso Semanal
- [ ] Semana 1: Notação & Lógica (0/5 dias)
- [ ] Semana 2: Conjuntos & Funções (0/5 dias)
- [ ] Semana 3: Logaritmos & Exponenciais (0/5 dias)
- [ ] Semana 4: Somatórios & Indução (0/5 dias)
- [ ] Semana 5: Combinatória & Probabilidade (0/5 dias)

### Entregas Principais
- [ ] Cheat sheet de símbolos (Semana 1)
- [ ] 10 exercícios de conjuntos (Semana 2)
- [ ] Análise de 5 algoritmos (Semana 3)
- [ ] 3 provas por indução (Semana 4)
- [ ] 5 problemas de combinatória (Semana 5)
- [ ] **Benchmark final** (Fim Semana 5)

### Métricas do Módulo
| Métrica | Meta | Atual | % |
|---------|------|-------|---|
| Horas estudadas | 25h | 0h | 0% |
| Dias de streak | 25 | 0 | 0% |
| Exercícios resolvidos | 30 | 0 | 0% |
| Flashcards criados | 30 | 0 | 0% |
| Benchmark | Passou | - | - |

---

## 🔗 Conexões

### Este módulo prepara você para:
- **M2 (Rust)**: Análise de complexidade de Vec::push(), HashMap::get()
- **M3 (Data Structures)**: Big O de operações, provas de balanceamento
- **M4 (Algorithms)**: Análise formal de sorting, grafos, DP
- **M6 (Systems)**: Probabilidade de cache miss, análise de performance

### Conceitos-chave que reaparecerão:
- **Big O notation**: Literalmente em todo algoritmo
- **Logaritmos**: Árvores balanceadas (M3), binary search (M4)
- **Indução**: Provas de corretude em recursão (M4)
- **Combinatória**: Análise de grafos (M4), permutações

---

## 📝 Retrospectivas

### Semanais
Arquivos em `meta/retrospectives/retro-semana-XX.md`

Ao final de cada semana, responda:
1. O que funcionou esta semana?
2. O que não funcionou?
3. O que vai fazer diferente na próxima?

### Final do Módulo
Arquivo: `meta/retrospectives/final-retrospective.md`

Ao completar M1:
1. Nível de confiança (1-5) em cada tópico
2. Tópicos que precisam revisão
3. Lições aprendidas
4. Preparação para M2

---

## ⏭️ Próximos Passos

Ao completar M1:
1. **Fazer Benchmark** - Valide que dominou
2. **Retrospectiva final** - Reflita sobre o módulo
3. **Buffer Week** (Semana 6) - Use se necessário
4. **Iniciar M2** (Semana 7) - Rust Foundations

**Link para M2**: [02-rust-foundations/README.md](../../02-rust-foundations/README.md) _(será criado)_

---

**Última atualização**: 2026-02-08 (Protótipo Fase 0)
**Versão**: 1.0 (Estrutura Modular)
