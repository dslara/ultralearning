# 🏗️ Fase 2: Data Structures (Meses 4-7)

> **Semanas reais no timeline**: 17-28 (após Mini-Projeto 1 + Buffer 2)
> **Arquivos**: `week-17-18-arrays-vec.md` até `week-27-28-heaps.md`

## 📋 Visão Geral

**Duração**: 12 semanas (60 horas)
**Objetivo**: Implementar e dominar estruturas de dados clássicas

---

## 🎯 Pergunta Central

> Como escolher a estrutura certa para cada problema?

Não basta saber que HashMap tem O(1) lookup. Você precisa entender:
- Por que tem O(1)
- Quando não é O(1)
- Trade-offs de memória
- Quando usar alternativas

---

## 📅 Semanas

| Semana | Tema | Pergunta Guia | Arquivo |
|--------|------|---------------|---------|
| 17-18 | Arrays & Vec | Como Vec cresce? | `week-17-18-arrays-vec.md` |
| 19-20 | Linked Lists | Por que são difíceis em Rust? | `week-19-20-linked-lists.md` |
| 21-22 | Stacks & Queues | Quais problemas resolvem? | `week-21-22-stacks-queues.md` |
| 23-24 | Hash Tables | Como colisões são resolvidas? | `week-23-24-hash-tables.md` |
| 25-26 | Trees & BST | Por que O(log n) não é garantido? | `week-25-26-trees-bst.md` |
| 27-28 | Heaps & Union-Find | Como árvore vira array? Quando usar Union-Find? | `week-27-28-heaps.md` |

---

## 🧠 Estruturas a Dominar

### Lineares
- **Array/Vec**: Contíguo, acesso O(1)
- **Linked List**: Não-contíguo, inserção O(1)
- **Stack**: LIFO
- **Queue**: FIFO
- **Deque**: Double-ended

### Associativas
- **Hash Table**: Key-value O(1)
- **Tree Map**: Key-value ordenado

### Hierárquicas
- **Binary Tree**: Estrutura base
- **BST**: Busca ordenada
- **Heap**: Prioridade

### Conjuntos Disjuntos
- **Union-Find**: Componentes conectados, Kruskal MST

---

## 🎯 Para Cada Estrutura

Você deve ser capaz de:

1. **Implementar do zero** em Rust
2. **Analisar complexidade** de cada operação
3. **Explicar trade-offs** vs alternativas
4. **Identificar casos de uso** ideais
5. **Debugar problemas** relacionados

---

## ✅ Benchmark da Fase (Q1)

### Desafio: 90 minutos
Implementar do zero, sem consulta:

1. **Vec** com push, pop, get (20 min)
2. **Stack** usando Vec (10 min)
3. **Queue** usando VecDeque ou dois stacks (15 min)
4. **HashMap** básico com chaining (25 min)
5. **BST** com insert e search (20 min)

**Critério**: 4/5 funcionando = passou

### Projeto da Fase
**LRU Cache**: Estrutura que combina HashMap + Doubly Linked List
- get(key) O(1)
- put(key, value) O(1)
- Evict least recently used when full

---

## 📚 Recursos Principais

| Recurso | Uso |
|---------|-----|
| "Introduction to Algorithms" (CLRS) | Referência teórica |
| Visualgo.net | Visualizações |
| Rust std::collections | Implementações reais |
| LeetCode (Easy/Medium) | Prática |

---

## 🔗 Conexões

### Usa conhecimentos de
- **Fase 1**: Ownership para implementar em Rust
- **Fase 0**: Big O, logaritmos

### Prepara para
- **Fase 3**: Algoritmos sobre estruturas
- **Fase 5**: Databases (B-Trees, Hash indexes)

---

## 📊 Complexidades para Decorar

| Estrutura | Access | Search | Insert | Delete |
|-----------|--------|--------|--------|--------|
| Array | O(1) | O(n) | O(n) | O(n) |
| Linked List | O(n) | O(n) | O(1)* | O(1)* |
| Stack | O(n) | O(n) | O(1) | O(1) |
| Queue | O(n) | O(n) | O(1) | O(1) |
| Hash Table | - | O(1)** | O(1)** | O(1)** |
| BST | - | O(log n)*** | O(log n)*** | O(log n)*** |
| Heap | - | O(n) | O(log n) | O(log n) |
| Union-Find | - | O(α(n))† | O(α(n))† | - |

*Se você tem referência para o nó
**Amortizado, pior caso O(n)
***Médio, pior caso O(n) se desbalanceado
†α(n) é a inversa de Ackermann, praticamente O(1)

---

## 🎯 Tracking

- [ ] Semana 17-18 completa (Arrays & Vec)
- [ ] Semana 19-20 completa (Linked Lists)
- [ ] Semana 21-22 completa (Stacks & Queues)
- [ ] Semana 23-24 completa (Hash Tables)
- [ ] Semana 25-26 completa (Trees & BST)
- [ ] Semana 27-28 completa (Heaps)
- [ ] Benchmark Q1 passado
- [ ] LRU Cache implementado
- [ ] Cards SRS criados (mínimo 50)

**Confiança geral**: _/5

---

*"Uma boa estrutura de dados faz um algoritmo simples parecer genial."*
