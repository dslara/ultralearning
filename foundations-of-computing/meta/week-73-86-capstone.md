# 📅 Capstone Project 🏆 (Semanas 73-86)

## 🎯 Objetivo
Nestas 14 semanas finais, você irá:
- Escolher e desenvolver projeto substancial
- Aplicar tudo que aprendeu ao longo do curso
- Criar portfólio piece significativo
- Documentar decisões de arquitetura

> ⚠️ **ESCOPO AJUSTADO**: Os projetos abaixo foram reduzidos para serem realistas em ~70h (14 semanas × 5h)

---

## 🗂️ Escolha seu Projeto

### Opção A: Database from Scratch
**Complexidade**: Média-Alta (ajustada)
**Aprendizado principal**: Storage, B-Trees

**Escopo INCLUÍDO** ✅:
- [ ] Storage engine simples (B-Tree)
- [ ] SQL parser básico (SELECT, INSERT apenas)
- [ ] Query execution para queries simples
- [ ] Índice primário
- [ ] CLI para interação

**Escopo EXCLUÍDO** ❌:
- ~~UPDATE, DELETE complexos~~
- ~~Transactions ACID completas~~
- ~~Protocolo cliente/servidor~~
- ~~Múltiplos índices~~

### Opção B: Key-Value Store com Replicação
**Complexidade**: Média-Alta (ajustada)
**Aprendizado principal**: Distributed systems básico

**Escopo INCLUÍDO** ✅:
- [ ] Key-value API (GET, SET, DELETE)
- [ ] Persistência em disco
- [ ] Replicação leader-follower simples
- [ ] Cliente básico
- [ ] Health checks

**Escopo EXCLUÍDO** ❌:
- ~~Raft completo~~
- ~~Partitioning/sharding~~
- ~~Failover automático~~
- ~~Métricas elaboradas~~

### Opção C: Programming Language (Interpreter)
**Complexidade**: Média (ajustada)
**Aprendizado principal**: Parsing, Tree-walking

**Escopo INCLUÍDO** ✅:
- [ ] Lexer e Parser
- [ ] Tree-walking interpreter
- [ ] Variáveis e funções
- [ ] Condicionais e loops
- [ ] REPL interativo

**Escopo EXCLUÍDO** ❌:
- ~~Bytecode/VM~~
- ~~Garbage collector~~
- ~~Type system~~
- ~~Standard library~~

### Opção D: HTTP Framework
**Complexidade**: Média (ajustada)
**Aprendizado principal**: Web internals

**Escopo INCLUÍDO** ✅:
- [ ] Router com parâmetros de URL
- [ ] Middleware system
- [ ] Request/Response abstractions
- [ ] JSON handling
- [ ] Exemplo de API REST

**Escopo EXCLUÍDO** ❌:
- ~~Template engine próprio~~
- ~~ORM~~
- ~~Connection pooling complexo~~
- ~~Websockets~~

### Opção E: Projeto Próprio
**Complexidade**: Variável
**Requisitos**:
- Usar pelo menos 3 conceitos de fases diferentes
- Ter componente de sistemas (não só aplicação)
- Ser factível em 70 horas
- **Validar escopo antes de começar!**

---

## 📅 Cronograma Sugerido

### Semanas 73-74: Design
- [ ] Escolher projeto
- [ ] Pesquisar implementações existentes
- [ ] Definir escopo (MVP vs nice-to-have)
- [ ] Escrever design document
- [ ] Definir arquitetura
- [ ] Criar milestones

### Semanas 75-78: Core Implementation (4 semanas)
- [ ] Implementar funcionalidade core
- [ ] Testes para cada componente
- [ ] Iterar baseado em aprendizados
- [ ] Documentar decisões

### Semanas 79-82: Features (4 semanas)
- [ ] Adicionar features secundárias
- [ ] Melhorar robustez
- [ ] Error handling completo
- [ ] Performance optimization

### Semanas 83-84: Polish (2 semanas)
- [ ] Refatorar código
- [ ] Melhorar documentação
- [ ] Adicionar exemplos
- [ ] CLI ou API amigável

### Semanas 85-86: Finalização (2 semanas)
- [ ] Escrever README completo
- [ ] Documentação de arquitetura
- [ ] Gravar demo ou escrever blog post
- [ ] Reflexão final do curso

---

## 📋 Entregas

### Design Document (Semana 74)
- Problema que resolve
- Arquitetura proposta
- Trade-offs considerados
- Tecnologias escolhidas
- Milestones e timeline

### Checkpoints Semanais
Toda semana:
- O que foi feito?
- O que será feito?
- Bloqueios?
- Aprendizados?

### Documentação Final
- README.md
- ARCHITECTURE.md
- Exemplos de uso
- Como contribuir

### Reflexão Final
- O que aprendeu no projeto?
- O que faria diferente?
- Como o projeto usa conceitos do curso?
- Próximos passos?

---

## ✅ Critérios de Sucesso

### Projeto deve:
1. [ ] Funcionar (MVP completo - ver checklists abaixo)
2. [ ] Ter testes
3. [ ] Ter documentação
4. [ ] Usar conceitos de múltiplas fases
5. [ ] Ser apresentável em portfólio

### Você dominou se consegue:
1. [ ] Explicar cada decisão de arquitetura
2. [ ] Discutir trade-offs que fez
3. [ ] Comparar com soluções existentes
4. [ ] Identificar melhorias futuras
5. [ ] Ensinar alguém sobre o projeto

---

## 📋 Checklists de MVP por Projeto

### Opção A: Database from Scratch - MVP Checklist
**Core (obrigatório):**
- [ ] Storage em arquivo funciona (read/write pages)
- [ ] B-Tree implementada (insert, search)
- [ ] Comando SELECT simples funciona (ex: `SELECT * FROM table`)
- [ ] Comando INSERT funciona (ex: `INSERT INTO table VALUES (...)`)
- [ ] CLI funciona para interagir

**Documentação:**
- [ ] README com instruções de uso
- [ ] Diagrama de arquitetura (storage, B-tree, parser)
- [ ] Explicação de como B-tree funciona no seu código

**Testes:**
- [ ] Testes para B-tree (insert, search, edge cases)
- [ ] Testes para storage (persist, load)
- [ ] Teste de integração (query completa)

**Não precisa ter:**
- UPDATE/DELETE complexos
- Transactions
- Múltiplos índices

---

### Opção B: Key-Value Store - MVP Checklist
**Core (obrigatório):**
- [ ] GET funciona
- [ ] SET funciona
- [ ] DELETE funciona
- [ ] Dados persistem em disco
- [ ] Servidor aceita conexões

**Replicação (simplificada):**
- [ ] Leader aceita writes
- [ ] Follower recebe updates do leader
- [ ] Health check básico

**Documentação:**
- [ ] README com instruções de uso
- [ ] Diagrama de arquitetura (client, leader, follower)
- [ ] Explicação do protocolo de replicação

**Testes:**
- [ ] Testes unitários para storage
- [ ] Teste de replicação básica
- [ ] Teste de persistência (restart)

**Não precisa ter:**
- Raft completo
- Failover automático
- Sharding

---

### Opção C: Programming Language - MVP Checklist
**Core (obrigatório):**
- [ ] Lexer tokeniza corretamente
- [ ] Parser gera AST
- [ ] Interpreter executa código
- [ ] Variáveis funcionam (let x = 5)
- [ ] Funções funcionam (fn add(a, b) { a + b })
- [ ] Condicionais funcionam (if/else)
- [ ] Loops funcionam (while ou for)
- [ ] REPL interativo

**Documentação:**
- [ ] README com linguagem definida
- [ ] Exemplos de código na sua linguagem
- [ ] Explicação de como o interpreter funciona

**Testes:**
- [ ] Testes para lexer
- [ ] Testes para parser
- [ ] Testes de integração (programas completos)

**Não precisa ter:**
- Bytecode/VM
- Garbage collector
- Type system

---

### Opção D: HTTP Framework - MVP Checklist
**Core (obrigatório):**
- [ ] Router básico funciona (GET /path)
- [ ] Parâmetros de URL funcionam (GET /users/:id)
- [ ] Middleware chain funciona
- [ ] Request parsing (headers, body)
- [ ] Response builder (status, headers, body)
- [ ] JSON handling (parse request, build response)

**Demo:**
- [ ] Exemplo de API REST funcional (ex: TODO API)
- [ ] Pelo menos 3 endpoints

**Documentação:**
- [ ] README com exemplos de uso
- [ ] Documentação de como criar rotas
- [ ] Documentação de como criar middleware

**Testes:**
- [ ] Testes para router
- [ ] Testes para middleware
- [ ] Teste de integração (request → response)

**Não precisa ter:**
- Template engine
- ORM
- Websockets

---

### Opção E: Projeto Próprio - MVP Checklist
Antes de começar, defina:
- [ ] 5-7 funcionalidades core que definem "pronto"
- [ ] Quais conceitos do curso serão usados
- [ ] Documentação mínima necessária
- [ ] Testes mínimos necessários
- [ ] **Valide com alguém antes de começar!**

---

## 📚 Recursos por Projeto

### Database
- Database Internals (Alex Petrov)
- SQLite source code
- CMU Database course

### Distributed Systems
- Designing Data-Intensive Applications
- Raft paper
- etcd source code

### Language
- Crafting Interpreters
- Engineering a Compiler
- LLVM tutorials

### Web Framework
- Gin/Echo source code (Go)
- Axum source code (Rust)
- Express source code (Node)

---

## 🎓 Conclusão do Ultralearning

### Ao completar este projeto, você terá:

**Conhecimento Técnico**
- Fundamentos de CS sólidos
- Duas linguagens (Rust + Go)
- Sistemas, redes, databases
- Algoritmos e estruturas de dados

**Habilidades**
- Aprender autonomamente
- Ler código e documentação
- Debugar problemas complexos
- Tomar decisões de arquitetura

**Portfólio**
- Projeto substancial
- Documentação profissional
- Código para mostrar

**Mindset**
- Comfort com desconforto
- Persistência em problemas difíceis
- Curiosidade para ir mais fundo

---

## 🔄 Reflexão Final

### Perguntas para responder ao final:

1. **O que você sabia antes vs agora?**

2. **Qual foi o momento mais difícil?**

3. **Qual foi o insight mais importante?**

4. **Como você aplica isso no trabalho?**

5. **O que você estudaria a seguir?**

6. **O que você faria diferente se começasse de novo?**

---

## 🏁 Parabéns!

Se você chegou aqui, completou **~22 meses** de estudo intensivo.

Você agora tem fundamentos que a maioria dos programadores não tem.

Use-os bem. 🚀

---

*"The expert in anything was once a beginner." - Helen Hayes*
