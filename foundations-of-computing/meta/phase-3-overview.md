# ⚡ Fase 3: Algorithms (Meses 8-11)

> **Semanas reais no timeline**: 31-42 (após Mini-Projeto 2 + Buffer 3)
> **Arquivos**: `week-31-32-sorting-basic.md` até `week-41-42-graphs-algo.md`

## 📋 Visão Geral

**Duração**: 12 semanas (60 horas)
**Objetivo**: Dominar análise e implementação de algoritmos clássicos

---

## 🎯 Pergunta Central

> Como analisar e comparar algoritmos?

Não basta saber que quicksort é O(n log n). Você precisa entender:
- Por que é O(n log n)?
- Quando é O(n²)?
- Quando usar vs mergesort?
- Como analisar algoritmo novo?

---

## 📅 Semanas

| Semana | Tema | Pergunta Guia | Arquivo |
|--------|------|---------------|---------|
| 31-32 | Sorting Básico | Por que O(n²) é aceitável às vezes? | `week-31-32-sorting-basic.md` |
| 33-34 | Sorting Avançado | Qual o trade-off de cada algoritmo? | `week-33-34-sorting-advanced.md` |
| 35-36 | Binary Search & Greedy | Quando usar BS? Quando greedy funciona? | `week-35-36-binary-search-greedy.md` |
| 37-38 | Recursão | Como a call stack funciona? | `week-37-38-recursion.md` |
| 39-40 | Grafos: Representação | Matriz vs Lista: quando usar? | `week-39-40-graphs-repr.md` |
| 41-42 | Grafos: Algoritmos | Como Dijkstra garante caminho mínimo? | `week-41-42-graphs-algo.md` |

---

## 🧠 Algoritmos a Dominar

### Sorting
- **Bubble Sort**: O mais simples, O(n²)
- **Selection Sort**: Mínimo de swaps
- **Insertion Sort**: Bom para quase-ordenados
- **Merge Sort**: Divide and conquer, estável
- **Quick Sort**: In-place, cache-friendly
- **Heap Sort**: Garantido O(n log n)

### Busca
- **Linear Search**: O(n), qualquer array
- **Binary Search**: O(log n), array ordenado
- **Binary Search Variações**: lower_bound, upper_bound, search on answer

### Greedy
- **Activity Selection**: Escolha local ótima
- **Fractional Knapsack**: Greedy funciona
- **Interval Scheduling**: Maximizar intervalos

### Grafos
- **BFS**: Menor caminho (não-ponderado)
- **DFS**: Exploração, ciclos
- **Dijkstra**: Menor caminho (ponderado)
- **Topological Sort**: Ordenação de dependências

---

## 🎯 Para Cada Algoritmo

Você deve ser capaz de:

1. **Implementar do zero** sem consulta
2. **Analisar complexidade** (tempo e espaço)
3. **Explicar funcionamento** com exemplo
4. **Identificar casos de uso** ideais
5. **Comparar trade-offs** vs alternativas

---

## ✅ Benchmark da Fase (Q2)

### Desafio: 10 Problemas
Resolver em 2 horas, 7/10 para passar:

1. Binary search em array rotacionado
2. Merge two sorted arrays
3. Quick select (Kth element)
4. Detect cycle in linked list
5. Valid parentheses
6. BFS - shortest path in grid
7. DFS - number of islands
8. Topological sort
9. Two sum
10. Maximum subarray

### Projeto da Fase
**Visualizador de Algoritmos**: Implementar sorting algorithms com output visual (ASCII ou GUI simples)

---

## 📚 Recursos Principais

| Recurso | Uso |
|---------|-----|
| CLRS | Referência teórica |
| Visualgo.net | Visualizações |
| LeetCode | Prática |
| Rust std::slice | Implementações reais |

---

## 🔗 Conexões

### Usa conhecimentos de
- **Fase 0**: Big O, logaritmos, indução
- **Fase 1**: Implementação em Rust
- **Fase 2**: Estruturas de dados

### Prepara para
- **Fase 4**: Dynamic Programming
- **Fase 5**: Algoritmos de sistemas

---

## 📊 Complexidades para Decorar

### Sorting
| Algoritmo | Melhor | Médio | Pior | Espaço | Estável |
|-----------|--------|-------|------|--------|---------|
| Bubble | O(n) | O(n²) | O(n²) | O(1) | ✓ |
| Selection | O(n²) | O(n²) | O(n²) | O(1) | ✗ |
| Insertion | O(n) | O(n²) | O(n²) | O(1) | ✓ |
| Merge | O(n log n) | O(n log n) | O(n log n) | O(n) | ✓ |
| Quick | O(n log n) | O(n log n) | O(n²) | O(log n) | ✗ |
| Heap | O(n log n) | O(n log n) | O(n log n) | O(1) | ✗ |

### Grafos
| Algoritmo | Complexidade | Estrutura |
|-----------|-------------|-----------|
| BFS | O(V + E) | Queue |
| DFS | O(V + E) | Stack/Recursão |
| Dijkstra | O((V + E) log V) | Priority Queue |

---

## 🎯 Tracking

- [ ] Semana 31-32 completa (Sorting Básico)
- [ ] Semana 33-34 completa (Sorting Avançado)
- [ ] Semana 35-36 completa (Binary Search & Greedy)
- [ ] Semana 37-38 completa (Recursão)
- [ ] Semana 39-40 completa (Grafos: Rep)
- [ ] Semana 41-42 completa (Grafos: Alg)
- [ ] Benchmark Q2 passado (7/10)
- [ ] Visualizador implementado
- [ ] Cards SRS criados (mínimo 60)

**Confiança geral**: _/5

---

*"Um algoritmo deve ser visto para ser acreditado." - Donald Knuth*
