# 🗺️ Learning Map: CS Fundamentals (~22 meses)

## Meta
- **Objetivo**: Dominar fundamentos profundos de CS
- **Prazo**: ~22 meses (88 semanas)
- **Disponibilidade**: 1h/dia, 5 dias/semana (~440h total)
- **Abordagem**: Math → RUST → GO → Systems → Capstone
- **Filosofia**: Sustentabilidade > velocidade

---

## 📅 Timeline Visual

```
Mês:  1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18  19  20  21  22
      |---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
      F0  B |  FASE 1  |B|    FASE 2     |B|    FASE 3     |B| F4  B|   FASE 5A+5B    |B| FASE 6 |B
     Math   |   Rust   |P|  DataStruct   |P|  Algorithms   |P| DP   |  Go + Systems   |P| Comp+Cap

Legenda: B = Buffer Week | P = Mini-Projeto

Semanas detalhadas:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Fase 0: Math Foundations         [Sem 01-05]    5w    25h
Buffer 1                         [Sem 06]       1w     5h
Fase 1: Rust Foundations         [Sem 07-14]    8w    40h
Mini-Projeto 1: Memory Allocator [Sem 15]       1w     5h
Buffer 2                         [Sem 16]       1w     5h
Fase 2: Data Structures          [Sem 17-28]   12w    60h
Mini-Projeto 2: CLI com DS       [Sem 29]       1w     5h
Buffer 3                         [Sem 30]       1w     5h
Fase 3: Algorithms               [Sem 31-42]   12w    60h
Mini-Projeto 3: Sorting Viz      [Sem 43]       1w     5h
Buffer 4                         [Sem 44]       1w     5h
Fase 4: Advanced Rust + DP       [Sem 45-48]    4w    20h
Buffer 5                         [Sem 49]       1w     5h
Fase 5A: Go Foundations          [Sem 50-53]    4w    20h  ← ESTENDIDO
Fase 5B: Systems                 [Sem 54-67]   14w    70h
Buffer 6                         [Sem 68]       1w     5h
Fase 6: Compilers + Capstone     [Sem 69-86]   18w    90h
Buffer 7-8 (Reserva Final)       [Sem 87-88]    2w    10h
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
TOTAL:                                         88w   440h (~22 meses)
```

---

## 🛡️ Sistema de Sustentabilidade

### Buffer Weeks (8 semanas distribuídas)
Use para:
- ✅ Recuperar atrasos
- ✅ Revisão profunda (spaced repetition)
- ✅ Descanso mental
- ✅ Imprevistos da vida

### Mini-Projetos (3 semanas)
Projetos de integração entre fases:
1. **Memory Allocator** (após Fase 1) - Aplica ownership
2. **CLI Tool** (após Fase 2) - Usa todas as DS aprendidas
3. **Sorting Visualizer** (após Fase 3) - Demonstra algoritmos

### 🔄 Ritual de Retomada (após pausas)
```
Dia 1: Apenas revisar SRS cards (30 min)
Dia 2: Reler resumo da última semana (30 min)
Dia 3: Refazer 1 exercício da última semana (1h)
Dia 4: Retomar normalmente
```

---

## 🎯 Visão Geral das Fases

### FASE 0: Math Foundations (Semanas 1-5)
**Pergunta central**: Que matemática preciso para entender algoritmos?

| Semana | Tema | Pergunta Guia |
|--------|------|---------------|
| 0.1 | Notação & Lógica | Como ler e escrever afirmações matemáticas? |
| 0.2 | Conjuntos & Funções | O que define uma função? |
| 0.3 | Logaritmos & Exponenciais | Por que log aparece em complexidade? |
| 0.4 | Somatórios & Indução | Como provar que algo funciona para N? |
| 0.5 | Combinatória, Probabilidade & Grafos | Como contar possibilidades? Como analisar caso médio? |

**Benchmark**: Ler análise de algoritmo e entender cada termo

---

### FASE 1: Rust Foundations (Semanas 7-14)
**Pergunta central**: Como Rust gerencia memória sem garbage collector?

| Semana | Tema | Pergunta Guia |
|--------|------|---------------|
| 7-8 | Ownership & Borrowing | Por que Rust não permite dois donos? |
| 9-10 | Lifetimes | Quando o compilador precisa de anotações? |
| 11-12 | Stack vs Heap & Error Handling | Onde cada tipo vive? Como usar Result/Option? |
| 13-14 | Smart Pointers & Vec | Como implementar Vec do zero? |

**Benchmark**: Explicar modelo de memória de Rust sem consulta

**Mini-Projeto 1** (Semana 15): Memory Allocator simplificado

---

### FASE 2: Data Structures (Semanas 17-28)
**Pergunta central**: Como escolher a estrutura certa para cada problema?

| Semana | Tema | Pergunta Guia |
|--------|------|---------------|
| 17-18 | Arrays & Vec | Como Vec cresce dinamicamente? |
| 19-20 | Linked Lists | Por que são difíceis em Rust? |
| 21-22 | Stacks & Queues | Quais problemas resolvem naturalmente? |
| 23-24 | Hash Tables | Como colisões são resolvidas? |
| 25-26 | Trees & BST | Por que O(log n) não é garantido? |
| 27-28 | Heaps & Union-Find | Como representar árvore em array? Quando usar Union-Find? |

**Benchmark Q1**: Implementar 5 estruturas do zero em 90 minutos

**Mini-Projeto 2** (Semana 29): CLI tool usando principais DS (4 estruturas)

---

### FASE 3: Algorithms (Semanas 31-42)
**Pergunta central**: Como analisar e comparar algoritmos?

| Semana | Tema | Pergunta Guia | LeetCode Meta |
|--------|------|---------------|---------------|
| 31-32 | Sorting Básico | Por que O(n²) é aceitável às vezes? | 3 Easy |
| 33-34 | Sorting Avançado | Qual o trade-off de cada algoritmo? | 3 Easy/Med |
| 35-36 | Binary Search & Greedy | Quando usar binary search? Quando greedy funciona? | 6 Med |
| 37-38 | Recursão | Como a call stack funciona? | 4 Medium |
| 39-40 | Grafos: Representação | Matriz vs Lista: quando usar cada? | 4 Medium |
| 41-42 | Grafos: Algoritmos | Como Dijkstra garante caminho mínimo? | 5 Med/Hard |

**Meta de Prática**: ~25 problemas durante a fase (3-4/semana)

**Benchmark Q2**: Resolver 10 problemas (7/10 para passar)

**Mini-Projeto 3** (Semana 43): Sorting Visualizer simples (println!)

---

### FASE 4: Advanced Rust + DP (Semanas 45-48)
**Pergunta central**: Como abstrair e reutilizar código em Rust?

| Semana | Tema | Pergunta Guia | LeetCode Meta |
|--------|------|---------------|---------------|
| 45-46 | Traits & Generics | Como Rust faz polimorfismo? | 3 Medium |
| 47-48 | Dynamic Programming | Como identificar subproblemas sobrepostos? | 5 Medium |

---

### FASE 5A: Go Foundations (Semanas 50-53) ← ESTENDIDO
**Pergunta central**: Como Go difere de Rust em modelo de memória?

| Semana | Tema | Pergunta Guia |
|--------|------|---------------|
| 50-51 | Go Basics | Sintaxe, tipos, structs, interfaces |
| 52-53 | Go Concurrency | Goroutines, channels, select |

**Benchmark**: Explicar diferenças Rust vs Go em memória/concorrência

---

### FASE 5B: Systems (Semanas 54-67)
**Pergunta central**: Como computadores realmente executam código?

| Semana | Tema | Pergunta Guia | LeetCode Meta |
|--------|------|---------------|---------------|
| 54-55 | CPU & Cache | Por que ordem de acesso importa? | 2 Medium |
| 56-57 | OS: Processos | Como OS decide quem executa? | 2 Medium |
| 58-59 | Concorrência Avançada | Como evitar race conditions? | 3 Medium |
| 60-61 | TCP/IP | Como dados chegam de um computador a outro? | - |
| 62-63 | HTTP | O que acontece quando você acessa um site? | - |
| 64-65 | DB: Storage | Como databases armazenam bilhões de registros? | - |
| 66-67 | DB: Transactions | Como garantir consistência? | - |

**Benchmark Q3**: HTTP server do zero, explicando cada camada

---

### FASE 6: Compilers + Capstone (Semanas 69-86)
**Pergunta central**: Como linguagens de programação funcionam?

| Semana | Tema | Pergunta Guia |
|--------|------|---------------|
| 69-70 | Lexer & Parser | Como texto vira estrutura? |
| 71-72 | Interpreter | Como código é executado? |
| 73-86 | Capstone | Como integrar tudo em um sistema real? |

**Capstone: Escopo Realista** (14 semanas = 70h)

| Projeto | Escopo Ajustado |
|---------|-----------------|
| **Database** | Storage engine + queries simples (SEM transactions complexas) |
| **Distributed KV** | Replicação básica (SEM Raft completo) |
| **Language** | Interpreter apenas (SEM bytecode/VM) |
| **HTTP Framework** | Router + middleware (SEM template engine) |

**Benchmark Q4**: Projeto completo + documentação de arquitetura

---

## 📊 Critérios de Sucesso (~22 meses)

Ao final, você será capaz de:

### Matemática
- [ ] Ler e entender análise de complexidade
- [ ] Provar corretude com indução
- [ ] Calcular probabilidades e combinações
- [ ] Entender análise de caso médio

### Memória
- [ ] Olhar código e dizer onde cada variável vive
- [ ] Explicar ownership/borrowing sem hesitar
- [ ] Escolher smart pointer correto para cada situação

### Estruturas de Dados
- [ ] Implementar qualquer DS clássica do zero
- [ ] Justificar escolha de estrutura para um problema
- [ ] Analisar trade-offs de tempo vs espaço

### Algoritmos
- [ ] Analisar complexidade de qualquer código
- [ ] Resolver problemas medium/hard com estratégia
- [ ] Explicar funcionamento de algoritmos clássicos
- [ ] Implementar binary search e variações sem bugs
- [ ] Identificar quando usar greedy vs DP
- [ ] **~100 problemas LeetCode resolvidos** (foco em Fases 3-4)

### Sistemas
- [ ] Explicar como CPU executa código
- [ ] Descrever camadas de rede TCP/IP
- [ ] Entender internals de databases

### Linguagens
- [ ] Escrever Rust e Go idiomáticos
- [ ] Criar sistemas concorrentes seguros
- [ ] Explicar como código fonte vira execução

### 📌 Tópicos para Estudo Futuro (não incluídos)
> Estes tópicos são importantes mas ficam para após o curso:
- **Async Rust** (tokio, async/await) - útil para web servers
- **Rust macros** - metaprogramming
- **Kubernetes/Docker** - orquestração
- **Cloud providers** - AWS/GCP/Azure
- **Frontend** - se necessário para projetos

---

## 📈 Tracking

### Progresso por Fase
- [ ] FASE 0 completa (Sem 5)
- [ ] Buffer 1 (Sem 6)
- [ ] FASE 1 completa (Sem 14)
- [ ] Mini-Projeto 1 (Sem 15)
- [ ] Buffer 2 (Sem 16)
- [ ] FASE 2 completa (Sem 28)
- [ ] Mini-Projeto 2 (Sem 29)
- [ ] Buffer 3 (Sem 30)
- [ ] FASE 3 completa (Sem 42)
- [ ] Mini-Projeto 3 (Sem 43)
- [ ] Buffer 4 (Sem 44)
- [ ] FASE 4 completa (Sem 48)
- [ ] Buffer 5 (Sem 49)
- [ ] FASE 5A completa (Sem 53)
- [ ] FASE 5B completa (Sem 67)
- [ ] Buffer 6 (Sem 68)
- [ ] FASE 6 completa (Sem 86)
- [ ] Buffers finais (Sem 87-88)

### Benchmarks Trimestrais
- [ ] Q1: Data Structures (Sem 28)
- [ ] Q2: Algorithms (Sem 42)
- [ ] Q3: Systems (Sem 67)
- [ ] Q4: Capstone (Sem 86)

### Checkpoints Mensais
- [ ] Mês 1: Math completo?
- [ ] Mês 2-3: Rust ownership sólido?
- [ ] Mês 4-5: Primeiras DS implementadas?
- [ ] Mês 6-7: Todas DS + Mini-projeto?
- [ ] Mês 8-9: Sorting + Big O dominados?
- [ ] Mês 10-11: Grafos + DP + Mini-projeto?
- [ ] Mês 12: Go basics + concurrency?
- [ ] Mês 13-15: Systems fundamentals?
- [ ] Mês 16-17: HTTP server funcional?
- [ ] Mês 18-19: Interpreter funcional?
- [ ] Mês 20-22: Capstone finalizado?

### Métricas
- Horas estudadas: 0/440
- Semanas completadas: 0/88
- Projetos completados: 0/4 (3 mini + 1 capstone)
- LeetCode resolvidos: 0/100
- Streak atual: 0 dias

### 📊 Métricas de Saúde do Projeto

| Métrica | Verde ✅ | Amarelo ⚠️ | Vermelho 🔴 |
|---------|----------|------------|-------------|
| Dias/semana | 4-5 | 3 | < 3 |
| SRS cards revisados | Diário | 3x/semana | < 3x/semana |
| Atraso acumulado | 0 semanas | 1-2 semanas | > 2 semanas |
| Confiança média | ≥ 4/5 | 3/5 | < 3/5 |

**Sinais de alerta**:
- 🔴 < 3 dias/semana por 2+ semanas → Use buffer, reavalie carga
- 🔴 SRS abandonado → Priorize revisão sobre conteúdo novo
- 🔴 Atraso > 2 semanas → Ajuste timeline ou escopo

---

## 🗂️ Arquivos por Fase

> ✅ Os nomes dos arquivos agora refletem as **semanas reais** do timeline.
> Ex: `week-17-18-arrays-vec.md` = Semanas 17-18 do curso.

### Fase 0: Math Foundations (Semanas 1-5)
- `week-01-notation-logic.md`
- `week-02-sets-functions.md`
- `week-03-log-exp.md`
- `week-04-summation-induction.md`
- `week-05-combinatorics-graphs.md` ← Inclui Probabilidade

### Buffer 1 (Semana 6)
- `buffer-week.md`

### Fase 1: Rust Foundations (Semanas 7-14)
- `week-07-08-ownership.md`
- `week-09-10-lifetimes.md`
- `week-11-12-memory.md` ← Inclui Error Handling (Result/Option)
- `week-13-14-smart-pointers.md`

### Mini-Projeto 1 (Semana 15)
- `mini-project-1-allocator.md`

### Buffer 2 (Semana 16)
- `buffer-week.md`

### Fase 2: Data Structures (Semanas 17-28)
- `week-17-18-arrays-vec.md`
- `week-19-20-linked-lists.md`
- `week-21-22-stacks-queues.md`
- `week-23-24-hash-tables.md`
- `week-25-26-trees-bst.md`
- `week-27-28-heaps.md` ← Inclui Union-Find

### Mini-Projeto 2 (Semana 29)
- `mini-project-2-cli.md`

### Buffer 3 (Semana 30)
- `buffer-week.md`

### Fase 3: Algorithms (Semanas 31-42)
- `week-31-32-sorting-basic.md`
- `week-33-34-sorting-advanced.md`
- `week-35-36-binary-search-greedy.md` ← Binary Search + Greedy (substitui Big O)
- `week-37-38-recursion.md`
- `week-39-40-graphs-repr.md`
- `week-41-42-graphs-algo.md`

### Mini-Projeto 3 (Semana 43)
- `mini-project-3-visualizer.md`

### Buffer 4 (Semana 44)
- `buffer-week.md`

### Fase 4: Advanced Rust + DP (Semanas 45-48)
- `week-45-46-traits-generics.md`
- `week-47-48-dynamic-programming.md`

### Buffer 5 (Semana 49)
- `buffer-week.md`

### Fase 5A: Go Foundations (Semanas 50-53)
- `week-50-51-go-basics.md`
- `week-52-53-go-concurrency.md`

### Fase 5B: Systems (Semanas 54-67)
- `week-54-55-cpu-cache.md`
- `week-56-57-os-processes.md`
- `week-58-59-concurrency-adv.md`
- `week-60-61-tcp-ip.md`
- `week-62-63-http.md`
- `week-64-65-db-storage.md`
- `week-66-67-db-transactions.md`

### Buffer 6 (Semana 68)
- `buffer-week.md`

### Fase 6: Compilers + Capstone (Semanas 69-86)
- `week-69-70-lexer-parser.md`
- `week-71-72-interpreter.md`
- `week-73-86-capstone.md`

### Buffer 7-8 (Semanas 87-88)
- `buffer-week.md`

### Arquivos de Suporte
- `learning-map.md` - Este arquivo (mapa principal)
- `resources.md` - Todos os recursos organizados por fase
- `_template-week.md` - Template para criar novas semanas
- `buffer-week.md` - Template para semanas de buffer
- `phase-X-overview.md` - Visão geral de cada fase (7 arquivos)

---

## 🔁 Dia de Revisão Quinzenal

A cada 2ª sexta-feira (dia 5 da semana par), dedique a sessão inteira para:

1. **Revisar todos os SRS cards pendentes** (20 min)
2. **Reler resumos das últimas 2 semanas** (15 min)
3. **Tentar explicar conceitos sem consulta** (15 min)
4. **Atualizar métricas de saúde** (10 min)

> Não avance conteúdo novo neste dia!

---

*Última atualização: 2025-02-03*
*Versão: 2.5 - Revisão geral, ajustes de consistência e meta LeetCode*
