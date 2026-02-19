# 🗺️ Learning Map: CS Fundamentals (~22 meses)

> **O que é este documento?** Este é o plano de estudo detalhado para dominar fundamentos profundos de Ciência da Computação em ~22 meses. Inclui timeline, phases de aprendizado, projetos, metas e métricas de progresso.

### 📌 Índice Rápido
- [Meta](#meta) - Objetivo e prazo
- [Timeline Visual](#timeline-visual) - Visão geral de 88 semanas
- [Sistema de Sustentabilidade](#sistema-de-sustentabilidade) - Buffers e mini-projetos
- [Visão Geral das Phases](#visão-geral-das-phases) - 6 phases + benchmarks
- [Critérios de Sucesso](#critérios-de-sucesso) - O que você será capaz de fazer
- [Tracking](#tracking) - Progresso, checkpoints e métricas
- [Estrutura de Arquivos](#estrutura-de-arquivos) - Onde encontrar cada semana

---

## Meta
- **Objetivo**: Dominar fundamentos profundos de CS
- **Prazo**: ~22 meses (88 semanas)
- **Disponibilidade**: 1h/dia, 5 dias/semana (~440h total)
- **Abordagem**: Math → RUST → GO → Systems → Capstone
- **Filosofia**: Sustentabilidade > velocidade

---

## 📅 Timeline Visual

| Phase | Semanas | Duração | Horas | Descrição |
|------|---------|---------|-------|-----------|
| **F0: Math Foundations** | 1-5 | 5w | 25h | Notação, Conjuntos, Log/Exp, Indução, Combinatória |
| **Buffer 1** | 6 | 1w | 5h | Recuperação e revisão |
| **F1: Rust Foundations** | 7-14 | 8w | 40h | Ownership, Lifetimes, Memory, Smart Pointers |
| **Mini-Projeto 1** | 15 | 1w | 5h | Memory Allocator |
| **Buffer 2** | 16 | 1w | 5h | Recuperação e revisão |
| **F2: Data Structures** | 17-28 | 12w | 60h | Arrays, Linked Lists, Stacks, Queues, Hash Tables, Trees, Heaps |
| **Mini-Projeto 2** | 29 | 1w | 5h | CLI tool com Data Structures |
| **Buffer 3** | 30 | 1w | 5h | Recuperação e revisão |
| **F3: Algorithms** | 31-42 | 12w | 60h | Sorting, Binary Search, Recursão, Grafos, Análise |
| **Mini-Projeto 3** | 43 | 1w | 5h | Sorting Visualizer |
| **Buffer 4** | 44 | 1w | 5h | Recuperação e revisão |
| **F4: Advanced Rust + DP** | 45-48 | 4w | 20h | Traits, Generics, Dynamic Programming |
| **Buffer 5** | 49 | 1w | 5h | Recuperação e revisão |
| **F5A: Go Foundations** | 50-53 | 4w | 20h | Go Basics, Concurrency (Goroutines, Channels) |
| **F5B: Systems** | 54-67 | 14w | 70h | CPU, Cache, OS, Concorrência, TCP/IP, HTTP, DB |
| **Buffer 6** | 68 | 1w | 5h | Recuperação e revisão |
| **F6: Compilers + Capstone** | 69-86 | 18w | 90h | Lexer, Parser, Interpreter, Projeto Final |
| **Buffer 7-8** | 87-88 | 2w | 10h | Reserva final |
| **TOTAL** | 1-88 | 88w | 440h | ~22 meses |

---

## 🛡️ Sistema de Sustentabilidade

### Buffer Weeks (8 semanas distribuídas)
Use para:
- ✅ Recuperar atrasos
- ✅ Revisão profunda (spaced repetition)
- ✅ Descanso mental
- ✅ Imprevistos da vida

### Mini-Projetos (4 total)
Projetos de integração entre phases para aplicar conhecimento:
1. **Memory Allocator** (Semana 15, após Phase 1) - Aplica ownership e memory management
2. **CLI Tool** (Semana 29, após Phase 2) - Usa todas as estruturas de dados aprendidas
3. **Sorting Visualizer** (Semana 43, após Phase 3) - Demonstra algoritmos em ação
4. **Capstone Project** (Semanas 69-86, Phase 6) - Integração completa: Database, KV Store, Language ou HTTP Framework

### 🔄 Ritual de Retomada (após pausas)
```
Dia 1: Apenas revisar SRS cards (30 min)
Dia 2: Reler resumo da última semana (30 min)
Dia 3: Refazer 1 exercício da última semana (1h)
Dia 4: Retomar normalmente
```

---

## 🎯 Visão Geral das Phases

### PHASE 0: Math Foundations (Semanas 1-5)
**Pergunta central**: Que matemática preciso para entender algoritmos?

| Semana | Tema | Pergunta Guia |
|--------|------|---------------|
| 1 | Notação & Lógica | Como ler e escrever afirmações matemáticas? |
| 2 | Conjuntos & Funções | O que define uma função? |
| 3 | Logaritmos & Exponenciais | Por que log aparece em complexidade? |
| 4 | Somatórios & Indução | Como provar que algo funciona para N? |
| 5 | Combinatória & Probabilidade | Como contar possibilidades? Como analisar caso médio? |

**Benchmark**: Ler análise de algoritmo e entender cada termo

---

### PHASE 1: Rust Foundations (Semanas 7-14)
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

### PHASE 2: Data Structures (Semanas 17-28)
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

### PHASE 3: Algorithms (Semanas 31-42)
**Pergunta central**: Como analisar e comparar algoritmos?

| Semana | Tema | Pergunta Guia | LeetCode Meta |
|--------|------|---------------|---------------|
| 31-32 | Sorting Básico | Por que O(n²) é aceitável às vezes? | 3 Easy |
| 33-34 | Sorting Avançado | Qual o trade-off de cada algoritmo? | 3 Easy/Med |
| 35-36 | Binary Search & Greedy | Quando usar binary search? Quando greedy funciona? | 6 Med |
| 37-38 | Recursão | Como a call stack funciona? | 4 Medium |
| 39-40 | Grafos: Representação | Matriz vs Lista: quando usar cada? | 4 Medium |
| 41-42 | Grafos: Algoritmos | Como Dijkstra garante caminho mínimo? | 5 Med/Hard |

**Meta de Prática**: ~25 problemas durante a phase (3-4/semana)

**Benchmark Q2**: Resolver 10 problemas (7/10 para passar)

**Mini-Projeto 3** (Semana 43): Sorting Visualizer simples (println!)

---

### PHASE 4: Advanced Rust + DP (Semanas 45-48)
**Pergunta central**: Como abstrair e reutilizar código em Rust?

| Semana | Tema | Pergunta Guia | LeetCode Meta |
|--------|------|---------------|---------------|
| 45-46 | Traits & Generics | Como Rust faz polimorfismo? | 3 Medium |
| 47-48 | Dynamic Programming | Como identificar subproblemas sobrepostos? | 5 Medium |

---

### PHASE 5A: Go Foundations (Semanas 50-53) ← ESTENDIDO
**Pergunta central**: Como Go difere de Rust em modelo de memória?

| Semana | Tema | Pergunta Guia |
|--------|------|---------------|
| 50-51 | Go Basics | Sintaxe, tipos, structs, interfaces |
| 52-53 | Go Concurrency | Goroutines, channels, select |

**Benchmark**: Explicar diferenças Rust vs Go em memória/concorrência

---

### PHASE 5B: Systems (Semanas 54-67)
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

### PHASE 6: Compilers + Capstone (Semanas 69-86)
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
- [ ] **~100 problemas LeetCode resolvidos** (foco em Phases 3-4)

### Sistemas
- [ ] Explicar como CPU executa código
- [ ] Descrever camadas de rede TCP/IP
- [ ] Entender internals de databases

### Linguagens
- [ ] Escrever Rust e Go idiomáticos
- [ ] Criar sistemas concorrentes seguros
- [ ] Explicar como código fonte vira execução

### 📌 Tópicos para Estudo Futuro (Fora do escopo)
Estes tópicos são importantes mas ficam para após o curso de 22 meses:

| Tópico | Por quê esperar | Quando estudar |
|--------|-----------------|-----------------|
| **Async Rust** (tokio, async/await) | Requer sólido em concorrência básica | Após Phase 5B |
| **Rust macros** | Metaprogramming avançado | Projeto web avançado |
| **Kubernetes/Docker** | Orquestração de containers | Carreira em DevOps |
| **Cloud providers** (AWS/GCP/Azure) | Requer infra foundations | Trabalhos enterprise |
| **Frontend** (React, Vue, etc) | Opcional, se necessário para projetos | Conforme demanda |

---

## 📈 Tracking

### Progresso por Phase
**Parte 1: Fundamentos (Sem 1-16)**
- [ ] PHASE 0 - Math Foundations (Sem 1-5)
- [ ] Buffer 1 (Sem 6)
- [ ] PHASE 1 - Rust Foundations (Sem 7-14)
- [ ] Mini-Projeto 1 - Memory Allocator (Sem 15)
- [ ] Buffer 2 (Sem 16)

**Parte 2: Estruturas e Algoritmos (Sem 17-44)**
- [ ] PHASE 2 - Data Structures (Sem 17-28)
- [ ] Mini-Projeto 2 - CLI Tool (Sem 29)
- [ ] Buffer 3 (Sem 30)
- [ ] PHASE 3 - Algorithms (Sem 31-42)
- [ ] Mini-Projeto 3 - Sorting Visualizer (Sem 43)
- [ ] Buffer 4 (Sem 44)

**Parte 3: Rust Avançado + Linguagens (Sem 45-68)**
- [ ] PHASE 4 - Advanced Rust + DP (Sem 45-48)
- [ ] Buffer 5 (Sem 49)
- [ ] PHASE 5A - Go Foundations (Sem 50-53)
- [ ] PHASE 5B - Systems (Sem 54-67)
- [ ] Buffer 6 (Sem 68)

**Parte 4: Capstone (Sem 69-88)**
- [ ] PHASE 6 - Compilers + Capstone (Sem 69-86)
- [ ] Buffers finais (Sem 87-88)

### Benchmarks Trimestrais
- [ ] Q1: Data Structures (Sem 28)
- [ ] Q2: Algorithms (Sem 42)
- [ ] Q3: Systems (Sem 67)
- [ ] Q4: Capstone (Sem 86)

### Checkpoints Mensais

| Mês | Checkpoint | Status |
|-----|-----------|--------|
| 1 | Math foundations completo | [ ] |
| 2-3 | Rust ownership e borrowing sólidos | [ ] |
| 4-5 | Primeiras DS (Vec, LinkedList) implementadas | [ ] |
| 6-7 | Todas DS + Mini-projeto 1 completado | [ ] |
| 8-9 | Sorting e análise de complexidade dominados | [ ] |
| 10-11 | Grafos, DP e Mini-projeto 2 completado | [ ] |
| 12 | Go basics e goroutines funcionando | [ ] |
| 13-15 | Systems fundamentals (CPU, OS, Concorrência) | [ ] |
| 16-17 | HTTP server do zero funcional | [ ] |
| 18-19 | Lexer + Parser + Interpreter básico | [ ] |
| 20-22 | Capstone finalizado e documentado | [ ] |

### Métricas Principais

| Métrica | Meta | Atual | % Completado |
|---------|------|-------|--------------|
| Horas estudadas | 440h | 0h | 0% |
| Semanas completadas | 88 | 0 | 0% |
| Mini-projetos (1-3) | 3 | 0 | 0% |
| Capstone (projeto 4) | 1 | 0 | 0% |
| Problemas LeetCode | 100 | 0 | 0% |
| Dias de streak (meta) | 440 dias | 0 | 0% |

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

## 🗂️ Estrutura de Arquivos

**Convenção**: `week-XX-YY-topic.md` = Semanas XX-YY do timeline

### Phase 0: Math Foundations (Semanas 1-5)
- `week-01-notation-logic.md`
- `week-02-sets-functions.md`
- `week-03-log-exp.md`
- `week-04-summation-induction.md`
- `week-05-combinatorics-graphs.md`

### Buffer 1 (Semana 6)
- `buffer-week.md`

### Phase 1: Rust Foundations (Semanas 7-14)
- `week-07-08-ownership.md`
- `week-09-10-lifetimes.md`
- `week-11-12-memory.md`
- `week-13-14-smart-pointers.md`

### Mini-Projeto 1 (Semana 15)
- `mini-project-1-allocator.md`

### Buffer 2 (Semana 16)
- `buffer-week.md`

### Phase 2: Data Structures (Semanas 17-28)
- `week-17-18-arrays-vec.md`
- `week-19-20-linked-lists.md`
- `week-21-22-stacks-queues.md`
- `week-23-24-hash-tables.md`
- `week-25-26-trees-bst.md`
- `week-27-28-heaps.md`

### Mini-Projeto 2 (Semana 29)
- `mini-project-2-cli.md`

### Buffer 3 (Semana 30)
- `buffer-week.md`

### Phase 3: Algorithms (Semanas 31-42)
- `week-31-32-sorting-basic.md`
- `week-33-34-sorting-advanced.md`
- `week-35-36-binary-search-greedy.md`
- `week-37-38-recursion.md`
- `week-39-40-graphs-repr.md`
- `week-41-42-graphs-algo.md`

### Mini-Projeto 3 (Semana 43)
- `mini-project-3-visualizer.md`

### Buffer 4 (Semana 44)
- `buffer-week.md`

### Phase 4: Advanced Rust + DP (Semanas 45-48)
- `week-45-46-traits-generics.md`
- `week-47-48-dynamic-programming.md`

### Buffer 5 (Semana 49)
- `buffer-week.md`

### Phase 5A: Go Foundations (Semanas 50-53)
- `week-50-51-go-basics.md`
- `week-52-53-go-concurrency.md`

### Phase 5B: Systems (Semanas 54-67)
- `week-54-55-cpu-cache.md`
- `week-56-57-os-processes.md`
- `week-58-59-concurrency-adv.md`
- `week-60-61-tcp-ip.md`
- `week-62-63-http.md`
- `week-64-65-db-storage.md`
- `week-66-67-db-transactions.md`

### Buffer 6 (Semana 68)
- `buffer-week.md`

### Phase 6: Compilers + Capstone (Semanas 69-86)
- `week-69-70-lexer-parser.md`
- `week-71-72-interpreter.md`
- `week-73-86-capstone.md`

### Buffer 7-8 (Semanas 87-88)
- `buffer-week.md`

### Arquivos de Suporte
- `learning-map.md` - Este arquivo (mapa principal)
- `resources.md` - Recursos organizados por phase
- `_template-week.md` - Template para criar semanas

---

## 🔁 Ritual Semanal de Revisão

**Toda 2ª sexta-feira** (semanas pares): dedique a sessão inteira para revisão profunda.

### Rotina de Revisão (60 min total)
1. **SRS Review** (20 min) - Revisar todos os cards pendentes
2. **Conceitos** (15 min) - Reler resumos das últimas 2 semanas
3. **Explicação** (15 min) - Explicar conceitos SEM consulta (verbalmente ou escrito)
4. **Métricas** (10 min) - Atualizar saúde do projeto e identificar sinais de alerta

⚠️ **Regra importante**: Não avance conteúdo novo neste dia!

---

## 📝 Última Atualização

- **Data**: 2026-02-05
- **Versão**: 2.7
- **Mudanças**: Revisão final - correção de cronograma Phase 0, alinhamento de semanas, clareza em métricas, introdução adicionada
