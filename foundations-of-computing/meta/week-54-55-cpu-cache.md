# 📅 Semana 54-55: CPU & Cache 🔬

## 🎯 Objetivo
Ao final destas duas semanas, você será capaz de:
- Entender ciclo fetch-decode-execute
- Explicar hierarquia de cache
- Otimizar código para cache locality
- Medir impacto de cache misses

---

## ❓ Perguntas Guia

### CPU Basics
1. O que é uma CPU?
2. O que são registradores?
3. O que é o ciclo fetch-decode-execute?
4. O que é clock speed?
5. O que são cores?

### Memória
6. Por que não usar só registradores?
7. Por que RAM é lenta comparada a CPU?
8. O que é latência de memória?
9. Quantos ciclos de clock para acessar RAM?

### Cache
10. O que é cache?
11. Por que cache existe?
12. O que são L1, L2, L3 cache?
13. Quais os tamanhos típicos de cada nível?
14. Qual a latência de cada nível?
15. O que é cache line?
16. Qual o tamanho típico de cache line?

### Cache Locality
17. O que é temporal locality?
18. O que é spatial locality?
19. Por que acessar array sequencialmente é rápido?
20. Por que linked list é cache-unfriendly?
21. O que é false sharing?

### Cache Misses
22. O que é cache hit vs miss?
23. O que é hit rate?
24. Quais os tipos de cache miss?
25. Como medir cache misses?

### Otimização
26. O que é loop tiling?
27. Como otimizar matrix multiplication para cache?
28. Por que ordem de loop importa?
29. O que é data-oriented design?

---

## 📚 Recursos

### Leitura Obrigatória
| Recurso | Seção | Propósito |
|---------|-------|-----------|
| "What Every Programmer Should Know About Memory" | Ulrich Drepper | Deep dive |
| CSAPP | Chapter 6 - Memory Hierarchy | Fundamentos |

### 📖 Leitura Complementar (Recomendado)
**"Code: The Hidden Language of Computer Hardware and Software"** - Charles Petzold (2022 Edition)
- **Quando ler**: Antes ou durante esta semana
- **Foco**: Capítulos sobre portas lógicas, relés, construção de CPU
- **Por quê**: Dá intuição bottom-up de como CPUs funcionam desde o hardware
- **Timing**: ~5-10h de leitura (pode dividir em 2 semanas)
- **Link**: https://www.amazon.es/dp/B0B123P5GV (€20.49)
- **Nota**: Não é obrigatório, mas complementa MUITO bem esta fase

### Ferramentas
| Recurso | Propósito |
|---------|-----------|
| `perf` (Linux) | Medir cache misses |
| Instruments (Mac) | Profiling |

---

## 📋 Entregas

### Semana 54: Fundamentos

**Dia 1: CPU Basics**
- [ ] Responder perguntas 1-5
- [ ] Pesquisar: specs do seu CPU
- [ ] O que são instruction pipelines?
- [ ] O que é out-of-order execution?

**Dia 2: Memória**
- [ ] Responder perguntas 6-9
- [ ] Pesquisar: latência típica de RAM
- [ ] Calcular: quantas instruções CPU executa durante um acesso a RAM?
- [ ] Por que isso é problema?

**Dia 3: Cache Hierarchy**
- [ ] Responder perguntas 10-16
- [ ] Descobrir tamanhos de cache do seu CPU
- [ ] Desenhar diagrama da hierarquia
- [ ] Comparar latências de cada nível

**Dia 4: Cache Locality**
- [ ] Responder perguntas 17-21
- [ ] Exemplo de temporal locality
- [ ] Exemplo de spatial locality
- [ ] Por que arrays são cache-friendly?

**Dia 5: Experimento**
- [ ] Benchmark: acessar array sequencial vs random
- [ ] Benchmark: row-major vs column-major em matrix
- [ ] Medir diferença de tempo
- [ ] Explicar resultados

### Semana 55: Otimização

**Dia 1: Cache Misses**
- [ ] Responder perguntas 22-25
- [ ] Aprender a usar profiler
- [ ] Medir cache misses em programa
- [ ] Identificar hotspots

**Dia 2: Otimizações Básicas**
- [ ] Responder perguntas 26-28
- [ ] Implementar matrix multiplication naive
- [ ] Implementar com loop tiling
- [ ] Medir diferença

**Dia 3: Data-Oriented Design**
- [ ] Responder pergunta 29
- [ ] Comparar: Array of Structs vs Struct of Arrays
- [ ] Quando cada um é melhor?
- [ ] Exemplo prático

**Dia 4: Projeto**
- [ ] Implementar programa cache-optimized
- [ ] Comparar: linked list vs array
- [ ] Medir com profiler
- [ ] Documentar findings

**Dia 5: Consolidação**
- [ ] Responder TODAS as perguntas guia
- [ ] Criar cheat sheet de otimização
- [ ] Cards SRS para latências e conceitos
- [ ] Resumo: como pensar sobre cache

---

## ✅ Critérios de Sucesso

### Você dominou se consegue:
1. [ ] Explicar hierarquia de cache
2. [ ] Prever se código é cache-friendly
3. [ ] Medir cache misses
4. [ ] Otimizar loop para cache
5. [ ] Explicar por que arrays são rápidos

### Latências para Lembrar

| Operação | Latência (aprox) |
|----------|------------------|
| L1 cache | ~1 ns |
| L2 cache | ~4 ns |
| L3 cache | ~20 ns |
| RAM | ~100 ns |
| SSD | ~100 µs |
| HDD | ~10 ms |

### Red flags (precisa revisar):
- Não sabe o que é cache line
- Não entende spatial locality
- Não consegue medir performance

---

## 🔄 Reflexão

### Trade-offs
_Como cache afeta design de estruturas de dados?_

### Prática
_Como você pensa diferente sobre performance agora?_

### Conexão
_Como isso explica performance de Vec vs LinkedList?_

---

## ⏭️ Próximo

**Semana 56-57**: OS - Processos
- O que é um processo?
- O que é um thread?
- Como OS decide quem executa?
