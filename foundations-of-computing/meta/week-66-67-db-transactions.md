# 📅 Semana 66-67: DB - Transactions 🔐

## 🎯 Objetivo
Ao final destas duas semanas, você será capaz de:
- Entender propriedades ACID
- Explicar isolation levels
- Identificar problemas de concorrência
- Implementar transações corretas

---

## ❓ Perguntas Guia

### Fundamentos
1. O que é transação?
2. Por que transações existem?
3. O que é commit e rollback?
4. O que acontece se sistema falha durante transação?

### ACID
5. O que significa ACID?
6. O que é Atomicity?
7. O que é Consistency?
8. O que é Isolation?
9. O que é Durability?
10. Todas as databases são ACID?

### Problemas de Concorrência
11. O que é dirty read?
12. O que é non-repeatable read?
13. O que é phantom read?
14. O que é lost update?
15. O que é write skew?

### Isolation Levels
16. O que é Read Uncommitted?
17. O que é Read Committed?
18. O que é Repeatable Read?
19. O que é Serializable?
20. Qual o trade-off de cada nível?
21. Qual o default do PostgreSQL? MySQL?

### Implementação
22. O que é locking (pessimistic concurrency)?
23. O que é MVCC (Multi-Version Concurrency Control)?
24. Como PostgreSQL implementa MVCC?
25. O que é snapshot isolation?
26. O que são row-level vs table-level locks?

### Práticas
27. Quando usar transações?
28. Como manter transações curtas?
29. O que é deadlock em databases?
30. Como lidar com deadlocks?
31. O que são savepoints?

---

## 📚 Recursos

### Leitura
| Recurso | Seção | Propósito |
|---------|-------|-----------|
| Designing Data-Intensive Applications | Chapter 7 | Transactions |
| PostgreSQL docs | Transaction Isolation | Implementação real |

### Prática
| Recurso | Propósito |
|---------|-----------|
| PostgreSQL | Experimentar isolation levels |
| SQLite | Transações simples |

---

## 📋 Entregas

### Semana 66: ACID e Problemas

**Dia 1: Fundamentos**
- [ ] Responder perguntas 1-4
- [ ] Criar transação simples em SQL
- [ ] Testar commit e rollback
- [ ] O que acontece sem transação?

**Dia 2: ACID**
- [ ] Responder perguntas 5-10
- [ ] Exemplo de cada propriedade
- [ ] O que acontece se faltar cada uma?
- [ ] NoSQL é ACID?

**Dia 3: Problemas de Concorrência**
- [ ] Responder perguntas 11-15
- [ ] Demonstrar dirty read
- [ ] Demonstrar non-repeatable read
- [ ] Demonstrar phantom read

**Dia 4: Isolation Levels**
- [ ] Responder perguntas 16-21
- [ ] Testar cada nível em PostgreSQL
- [ ] Qual problema cada nível previne?
- [ ] Trade-off: consistência vs performance

**Dia 5: Tabela de Isolation**
- [ ] Criar matriz: nível vs problema
- [ ] Verificar defaults de databases
- [ ] Quando usar cada nível?

### Semana 67: Implementação e Práticas

**Dia 1: Locking vs MVCC**
- [ ] Responder perguntas 22-26
- [ ] Entender pessimistic vs optimistic
- [ ] Como MVCC funciona?
- [ ] Por que MVCC é popular?

**Dia 2: Práticas**
- [ ] Responder perguntas 27-31
- [ ] Criar transação realista
- [ ] Lidar com deadlock
- [ ] Usar savepoints

**Dia 3: Distributed Transactions**
- [ ] O que é two-phase commit?
- [ ] O que é eventual consistency?
- [ ] CAP theorem básico
- [ ] Trade-offs de sistemas distribuídos

**Dia 4: Projeto**
- [ ] Implementar "bank transfer" correto
- [ ] Lidar com race conditions
- [ ] Testar com concorrência
- [ ] Usar isolation level correto

**Dia 5: Consolidação**
- [ ] Responder TODAS as perguntas guia
- [ ] Cheat sheet de isolation levels
- [ ] Cards SRS para ACID e problemas
- [ ] Resumo: como escolher isolation level

---

## ✅ Critérios de Sucesso

### Você dominou se consegue:
1. [ ] Explicar cada letra de ACID
2. [ ] Demonstrar problemas de concorrência
3. [ ] Escolher isolation level correto
4. [ ] Explicar MVCC básico
5. [ ] Escrever transações seguras

### Isolation Levels vs Problemas

| Level | Dirty Read | Non-Repeatable | Phantom |
|-------|------------|----------------|---------|
| Read Uncommitted | ✗ | ✗ | ✗ |
| Read Committed | ✓ | ✗ | ✗ |
| Repeatable Read | ✓ | ✓ | ✗* |
| Serializable | ✓ | ✓ | ✓ |

*PostgreSQL previne phantoms em Repeatable Read via MVCC

### Problemas Explicados

| Problema | Descrição |
|----------|-----------|
| Dirty Read | Ler dados não commitados |
| Non-Repeatable Read | Mesmo SELECT retorna valores diferentes |
| Phantom Read | Mesmo query retorna linhas diferentes |
| Lost Update | Write sobrescreve outro write |
| Write Skew | Decisão baseada em dados desatualizados |

### Red flags (precisa revisar):
- Não sabe o que é ACID
- Não entende isolation levels
- Ignora transações em código

---

## 🔄 Reflexão

### Trade-offs
_Por que não usar Serializable sempre?_

### Prática
_Como você decide qual isolation level usar?_

### Distribuído
_Como isso complica em sistemas distribuídos?_

---

## 🏁 Fim da Fase 5!

### Benchmark Q3
Você está pronto para o benchmark:
- HTTP server from scratch
- Explicar cada camada

### Próximo

**Semana 69-70**: Lexer & Parser (Fase 6)
- Como texto vira estrutura?
- O que é tokenização?
- O que é AST?
