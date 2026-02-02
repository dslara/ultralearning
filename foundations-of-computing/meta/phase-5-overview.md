# 🐹 Fase 5: Go + Systems (Meses 12-17)

> **Semanas reais no timeline**: 50-67 (após Buffer 5)
> **Arquivos**: `week-50-51-go-basics.md` até `week-66-67-db-transactions.md`

## 📋 Visão Geral

**Duração**: 18 semanas total (90 horas)
- **Fase 5A**: Go Foundations - 4 semanas (20h) ← ESTENDIDO
- **Fase 5B**: Systems - 14 semanas (70h)

**Objetivo**: Entender como computadores realmente funcionam

---

## 🎯 Pergunta Central

> Como computadores realmente executam código?

Esta fase responde:
- Como CPU processa instruções?
- Como OS gerencia recursos?
- Como dados viajam pela rede?
- Como databases armazenam bilhões de registros?

---

## 📅 Semanas

### Fase 5A: Go Foundations (4 semanas)

| Semana | Tema | Pergunta Guia | Arquivo |
|--------|------|---------------|---------|
| 50-51 | Go Basics | Sintaxe, tipos, structs, interfaces | `week-50-51-go-basics.md` |
| 52-53 | Go Concurrency | Goroutines, channels, select | `week-52-53-go-concurrency.md` |

### Fase 5B: Systems (14 semanas)

| Semana | Tema | Pergunta Guia | Arquivo | LeetCode |
|--------|------|---------------|---------|----------|
| 54-55 | CPU & Cache | Por que ordem de acesso importa? | `week-54-55-cpu-cache.md` | 2 Med |
| 56-57 | OS: Processos | Como OS decide quem executa? | `week-56-57-os-processes.md` | 2 Med |
| 58-59 | Concorrência Avançada | Como evitar race conditions? | `week-58-59-concurrency-adv.md` | 3 Med |
| 60-61 | TCP/IP | Como dados chegam ao destino? | `week-60-61-tcp-ip.md` | - |
| 62-63 | HTTP | O que acontece ao acessar um site? | `week-62-63-http.md` | - |
| 64-65 | DB: Storage | Como databases armazenam dados? | `week-64-65-db-storage.md` | - |
| 66-67 | DB: Transactions | Como garantir consistência? | `week-66-67-db-transactions.md` | - |

---

## 🧠 Tópicos a Dominar

### Go
- Syntax e idiomas
- Goroutines e channels
- Error handling
- Interfaces

### CPU & Memória
- Ciclo fetch-decode-execute
- Cache hierarchy (L1, L2, L3)
- Cache locality
- Branch prediction

### Sistemas Operacionais
- Processos vs threads
- Scheduling
- Memory management
- System calls

### Concorrência
- Race conditions
- Mutexes e locks
- Channels e message passing
- Deadlocks

### Networking
- TCP/IP stack
- DNS
- HTTP/HTTPS
- Sockets

### Databases
- Storage engines
- B-Trees e LSM Trees
- ACID
- Isolation levels

---

## ✅ Benchmark da Fase (Q3)

### Projeto: HTTP Server from Scratch
Implementar em Go:
- TCP socket listener
- HTTP request parsing
- HTTP response formatting
- Routing básico
- Serving static files

Explicar cada camada durante code review.

---

## 📚 Recursos Principais

| Recurso | Uso |
|---------|-----|
| Go Tour | Introdução |
| Go by Example | Referência |
| OSTEP | Sistemas Operacionais |
| Computer Networking (Kurose) | Networking |
| Designing Data-Intensive Apps | Databases |

---

## 🔗 Conexões

### Usa conhecimentos de
- **Fase 1**: Modelo de memória
- **Fase 2**: Estruturas de dados (B-Trees)
- **Fase 3**: Algoritmos (Dijkstra em routing)

### Prepara para
- **Fase 6**: Entender como compiladores funcionam

---

## 📊 Por que Go nesta fase?

1. **Mais simples que Rust** para focar em sistemas
2. **Concorrência idiomática** com goroutines
3. **Usado em sistemas reais** (Docker, Kubernetes)
4. **Garbage collected** - menos wrestling com memória
5. **Contraste com Rust** - comparar abordagens

---

## 🎯 Tracking

- [ ] Semana 50-51 completa (Go Basics)
- [ ] Semana 52-53 completa (Go Concurrency)
- [ ] Semana 54-55 completa (CPU & Cache)
- [ ] Semana 56-57 completa (OS)
- [ ] Semana 58-59 completa (Concorrência Avançada)
- [ ] Semana 60-61 completa (TCP/IP)
- [ ] Semana 62-63 completa (HTTP)
- [ ] Semana 64-65 completa (DB Storage)
- [ ] Semana 66-67 completa (DB Transactions)
- [ ] Benchmark Q3 passado (HTTP Server)
- [ ] Cards SRS criados (mínimo 80)
- [ ] LeetCode: ~10 problemas resolvidos

**Confiança geral**: _/5

---

*"Você não entende realmente algo até implementá-lo." - Richard Feynman (paráfrase)*
