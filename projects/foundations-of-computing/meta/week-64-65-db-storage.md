# 📅 Semana 64-65: DB - Storage 💾

## 🎯 Objetivo
Ao final destas duas semanas, você será capaz de:
- Entender como databases armazenam dados
- Explicar B-Trees e LSM Trees
- Comparar storage engines
- Entender indexação

---

## ❓ Perguntas Guia

### Fundamentos
1. O que é um database?
2. O que é DBMS?
3. O que é SQL vs NoSQL?
4. O que é storage engine?
5. Por que não usar apenas arquivos?

### Armazenamento em Disco
6. Como dados são escritos em disco?
7. O que é page/block?
8. O que é buffer pool?
9. Por que escrita sequencial é mais rápida?
10. O que é write-ahead log (WAL)?

### B-Trees
11. O que é B-Tree?
12. Como B-Tree difere de BST?
13. Por que B-Tree é usada em databases?
14. O que é B+ Tree?
15. Como inserção em B-Tree funciona?
16. Como busca em B-Tree funciona?
17. Qual a complexidade de operações?

### LSM Trees
18. O que é LSM Tree?
19. O que é memtable?
20. O que é SSTable?
21. Como compaction funciona?
22. Write-optimized vs Read-optimized?
23. B-Tree vs LSM Tree: trade-offs?

### Índices
24. O que é índice?
25. O que é índice primário vs secundário?
26. O que é clustered vs non-clustered index?
27. Quando criar índice?
28. Qual o custo de índices?
29. O que é covering index?

### Row vs Column
30. O que é row-oriented storage?
31. O que é column-oriented storage?
32. Quando usar cada um?
33. O que são OLTP vs OLAP?

---

## 📚 Recursos

### Leitura
| Recurso | Seção | Propósito |
|---------|-------|-----------|
| Designing Data-Intensive Applications | Chapter 3 | Storage engines |
| Database Internals | | Deep dive |

### Prática
| Recurso | Propósito |
|---------|-----------|
| SQLite source code | Implementação real simples |
| PostgreSQL docs | Internals |

---

## 📋 Entregas

### Semana 64: Storage Engines

**Dia 1: Fundamentos**
- [ ] Responder perguntas 1-5
- [ ] Por que databases existem?
- [ ] O que storage engine faz?
- [ ] Listar storage engines populares

**Dia 2: Disco**
- [ ] Responder perguntas 6-10
- [ ] Entender page/block size
- [ ] Por que sequencial > random?
- [ ] O que é WAL e por que existe?

**Dia 3: B-Trees**
- [ ] Responder perguntas 11-17
- [ ] Desenhar B-Tree com inserções
- [ ] Comparar com BST
- [ ] Por que B-Tree para disco?

**Dia 4: LSM Trees**
- [ ] Responder perguntas 18-23
- [ ] Desenhar fluxo de write em LSM
- [ ] Entender compaction
- [ ] Comparar com B-Tree

**Dia 5: Comparação**
- [ ] B-Tree vs LSM Tree table
- [ ] Quais databases usam qual?
- [ ] Quando cada um é melhor?

### Semana 65: Índices e Tipos de Storage

**Dia 1: Índices Básicos**
- [ ] Responder perguntas 24-26
- [ ] Criar índices em PostgreSQL/SQLite
- [ ] Usar EXPLAIN para ver uso
- [ ] O que é full table scan?

**Dia 2: Índices Avançados**
- [ ] Responder perguntas 27-29
- [ ] Quando índice ajuda/prejudica?
- [ ] O que é index-only scan?
- [ ] Composite indexes

**Dia 3: Row vs Column**
- [ ] Responder perguntas 30-33
- [ ] Comparar para analytics queries
- [ ] Comparar para transacional
- [ ] Exemplos de cada tipo

**Dia 4: Projeto**
- [ ] Implementar key-value store simples
- [ ] Usar arquivos como storage
- [ ] Adicionar índice básico
- [ ] Benchmark operações

**Dia 5: Consolidação**
- [ ] Responder TODAS as perguntas guia
- [ ] Diagrama: anatomia de database
- [ ] Cards SRS para conceitos
- [ ] Resumo: como escolher storage

---

## ✅ Critérios de Sucesso

### Você dominou se consegue:
1. [ ] Explicar como B-Tree funciona
2. [ ] Comparar B-Tree vs LSM Tree
3. [ ] Explicar quando usar índices
4. [ ] Diferenciar row vs column storage
5. [ ] Entender EXPLAIN output

### B-Tree vs LSM Tree

| Aspecto | B-Tree | LSM Tree |
|---------|--------|----------|
| Read | Rápido | Pode precisar merge |
| Write | Random I/O | Sequential I/O |
| Space | Fragmentação | Compaction overhead |
| Uso | OLTP | Write-heavy |
| Exemplo | PostgreSQL, MySQL | RocksDB, Cassandra |

### Quando criar índice?

| Criar | Não criar |
|-------|-----------|
| WHERE frequente | Tabelas pequenas |
| JOIN columns | Columns raramente queried |
| ORDER BY columns | High-write, low-read |
| Unique constraints | Muitos valores NULL |

### Red flags (precisa revisar):
- Não sabe o que é B-Tree
- Não entende trade-off de índices
- Confunde row vs column storage

---

## 🔄 Reflexão

### Trade-offs
_Por que existem tantos storage engines?_

### Escolhas
_Como você escolheria storage para seu app?_

### Conexão
_Como isso se relaciona com estruturas de dados?_

---

## ⏭️ Próximo

**Semana 66-67**: DB - Transactions
- Como garantir consistência?
- O que é ACID?
- O que são isolation levels?
