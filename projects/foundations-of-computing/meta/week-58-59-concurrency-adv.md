# 📅 Semana 58-59: Concorrência de Sistemas ⚡

> **Nota**: Esta semana foca em concorrência de **baixo nível e teoria**. 
> Patterns de Go (goroutines, channels) já foram cobertos na Semana 52-53.

## 🎯 Objetivo
Ao final destas duas semanas, você será capaz de:
- Entender primitivas de sincronização em nível de OS
- Identificar e resolver problemas clássicos de concorrência
- Comparar modelos de concorrência (threads, async, actors)
- Debugar race conditions e deadlocks
- Entender memory models e ordering

---

## ❓ Perguntas Guia

### Fundamentos de Concorrência
1. O que é concorrência vs paralelismo?
2. Por que concorrência é difícil?
3. O que é race condition?
4. O que é data race?
5. O que é critical section?

### Problemas Clássicos
6. O que é deadlock?
7. Quais as 4 condições necessárias para deadlock (Coffman)?
8. O que é livelock? Como difere de deadlock?
9. O que é starvation?
10. O que é priority inversion?

### Primitivas de Sincronização (OS-level)
11. O que é mutex? Como funciona internamente?
12. O que é semáforo? Diferença para mutex?
13. O que é spinlock? Quando usar?
14. O que é condition variable?
15. O que é barrier?
16. O que é read-write lock?
17. O que são atomic operations? Por que existem?
18. O que é compare-and-swap (CAS)?

### Memory Models
19. O que é memory model?
20. O que é memory ordering (acquire, release, seq_cst)?
21. Por que compilador/CPU podem reordenar instruções?
22. O que é memory barrier/fence?
23. Como Rust garante memory safety em concorrência?
24. Como Go garante data race freedom?

### Modelos de Concorrência
25. Quais são os principais modelos de concorrência?
    - Threads + shared memory
    - Message passing (channels)
    - Actors
    - Async/await
26. Trade-offs de cada modelo?
27. Qual modelo Go usa? E Rust? E Erlang?

### Problemas Clássicos
28. Producer-Consumer: como resolver?
29. Dining Philosophers: como evitar deadlock?
30. Readers-Writers: como priorizar?
31. Sleeping Barber: qual a solução?

### Debugging
32. Como detectar race conditions?
33. O que é `-race` flag em Go?
34. O que é ThreadSanitizer?
35. Como reproduzir bugs de concorrência?

---

## 📚 Recursos

### Leitura
| Recurso | Seção | Propósito |
|---------|-------|-----------|
| OSTEP | Concurrency chapters | Teoria de OS |
| CS:APP | Chapter 12 - Concurrent Programming | Visão de sistemas |
| Rust Atomics and Locks | Chapters 1-3 | Memory model |
| The Little Book of Semaphores | https://greenteapress.com/semaphores/ | Problemas clássicos (grátis!) |

### Vídeos
| Recurso | Propósito |
|---------|-----------|
| Rob Pike - Concurrency is not Parallelism | Conceitos fundamentais |
| MIT 6.824 Distributed Systems | Concorrência em sistemas |

### Ferramentas
| Ferramenta | Uso |
|------------|-----|
| Go `-race` flag | Detectar data races |
| ThreadSanitizer | C/C++/Rust race detection |
| Helgrind (Valgrind) | Detectar erros de threading |

---

## 📋 Entregas

### Semana 58: Teoria e Primitivas

**Dia 1: Fundamentos**
- [ ] Responder perguntas 1-5
- [ ] Criar race condition em Go propositalmente
- [ ] Usar `-race` flag para detectar
- [ ] Demonstrar data race com contador compartilhado

**Dia 2: Problemas Clássicos**
- [ ] Responder perguntas 6-10
- [ ] Criar deadlock propositalmente
- [ ] Identificar as 4 condições de Coffman
- [ ] Resolver o deadlock quebrando uma condição

**Dia 3: Primitivas de Sincronização**
- [ ] Responder perguntas 11-18
- [ ] Estudar implementação de mutex (spinlock vs sleep)
- [ ] Implementar semáforo usando mutex + condition variable
- [ ] Comparar performance: mutex vs atomic vs channel

**Dia 4: Memory Model**
- [ ] Responder perguntas 19-24
- [ ] Estudar memory ordering básico
- [ ] Por que `sync/atomic` existe em Go?
- [ ] Como Rust's ownership previne data races?

**Dia 5: Consolidação**
- [ ] Comparar: mutex vs semaphore vs channel
- [ ] Diagrama: quando usar cada primitiva
- [ ] Cards SRS para conceitos

### Semana 59: Modelos e Problemas Clássicos

**Dia 1: Modelos de Concorrência**
- [ ] Responder perguntas 25-27
- [ ] Comparar threads vs actors vs CSP
- [ ] Quando usar cada modelo?
- [ ] Exemplos em linguagens diferentes

**Dia 2: Producer-Consumer**
- [ ] Responder pergunta 28
- [ ] Implementar com mutex + condition variable
- [ ] Implementar com channels (comparar)
- [ ] Variação: bounded buffer

**Dia 3: Dining Philosophers**
- [ ] Responder pergunta 29
- [ ] Implementar versão que deadlocka
- [ ] Implementar 3 soluções diferentes
- [ ] Comparar trade-offs

**Dia 4: Readers-Writers**
- [ ] Responder pergunta 30
- [ ] Implementar com RWMutex
- [ ] Variação: reader-priority vs writer-priority
- [ ] Quando cada um é melhor?

**Dia 5: Debugging e Consolidação**
- [ ] Responder perguntas 32-35
- [ ] Praticar debugging de código com bugs de concorrência
- [ ] Cards SRS para problemas clássicos
- [ ] Resumo: decision tree para escolher primitivas

---

## ✅ Critérios de Sucesso

### Você dominou se consegue:
1. [ ] Identificar race condition em código
2. [ ] Explicar as 4 condições de deadlock
3. [ ] Escolher primitiva correta para problema dado
4. [ ] Resolver Producer-Consumer e Dining Philosophers
5. [ ] Explicar diferença entre memory models
6. [ ] Usar ferramentas de debugging (race detector)

### Primitivas: Quando Usar Cada

| Primitiva | Use quando |
|-----------|------------|
| Mutex | Proteger dados compartilhados simples |
| RWMutex | Muitas leituras, poucas escritas |
| Semaphore | Limitar acesso a N recursos |
| Condition Variable | Esperar por condição específica |
| Atomic | Operações simples em variáveis individuais |
| Channel | Passar ownership, coordenar goroutines |

### Problemas Clássicos - Resumo

| Problema | Desafio | Solução comum |
|----------|---------|---------------|
| Producer-Consumer | Coordenar produção/consumo | Bounded buffer + semaphores |
| Dining Philosophers | Evitar deadlock circular | Resource hierarchy |
| Readers-Writers | Balancear acesso | RWLock com prioridade |

### Red flags (precisa revisar):
- Não sabe diferença mutex vs semaphore
- Não consegue identificar deadlock
- Usa mutex onde channel seria melhor (ou vice-versa)
- Não entende memory ordering

---

## 🔄 Reflexão

### Modelos de Concorrência
_Qual modelo você prefere: shared memory ou message passing? Por quê?_

### Debugging
_Qual estratégia você usaria para debugar bug de concorrência intermitente?_

### Rust vs Go
_Como as garantias de Rust diferem das de Go em concorrência?_

---

## 🔗 Conexão com Semana 52-53

| Semana 52-53 (Go Concurrency) | Semana 58-59 (Sistemas) |
|-------------------------------|-------------------------|
| Goroutines e channels | Por que channels funcionam (teoria) |
| Patterns em Go | Primitivas subjacentes (mutex, semaphore) |
| Uso prático | Teoria e problemas clássicos |
| Go-specific | Comparação entre linguagens |

---

## ⏭️ Próximo

**Semana 60-61**: TCP/IP
- Como dados viajam pela rede?
- O que é cada camada do stack?
- Como implementar cliente/servidor TCP?
