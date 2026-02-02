# 📅 Semana 56-57: OS - Processos 🖥️

## 🎯 Objetivo
Ao final destas duas semanas, você será capaz de:
- Entender o que é um processo e thread
- Explicar como scheduling funciona
- Usar system calls básicas
- Entender memory management do OS

---

## ❓ Perguntas Guia

### O que é OS?
1. O que faz um sistema operacional?
2. O que é kernel vs user space?
3. O que são system calls?
4. O que é modo privilegiado?

### Processos
5. O que é um processo?
6. O que um processo contém? (address space, etc)
7. O que é PID?
8. Como processos são criados?
9. O que é `fork()` em Unix?
10. O que é `exec()`?
11. Como processo termina?
12. O que é processo zombie?

### Threads
13. O que é thread?
14. Qual a diferença entre processo e thread?
15. O que threads compartilham?
16. O que cada thread tem de próprio?
17. Por que threads são mais leves que processos?
18. O que são green threads vs OS threads?
19. Como goroutines se encaixam?

### Scheduling
20. O que é scheduler?
21. O que é context switch?
22. Quanto custa um context switch?
23. O que é time slice (quantum)?
24. O que é preemptive vs cooperative scheduling?
25. Quais são algoritmos de scheduling comuns?

### Memory Management
26. O que é virtual memory?
27. O que é page table?
28. O que é page fault?
29. O que é TLB?
30. Como processos são isolados uns dos outros?

---

## 📚 Recursos

### Leitura
| Recurso | Seção | Propósito |
|---------|-------|-----------|
| OSTEP | Virtualization | Processos e memória |
| | https://pages.cs.wisc.edu/~remzi/OSTEP/ | Gratuito! |

### Prática
| Recurso | Propósito |
|---------|-----------|
| `ps`, `top`, `htop` | Ver processos |
| `strace` | Ver system calls |

---

## 📋 Entregas

### Semana 56: Processos e Threads

**Dia 1: OS Basics**
- [ ] Responder perguntas 1-4
- [ ] O que acontece quando programa executa?
- [ ] Listar 10 system calls comuns
- [ ] Usar strace em programa simples

**Dia 2: Processos**
- [ ] Responder perguntas 5-12
- [ ] Em Go: usar `os/exec` para criar processo
- [ ] Observar com `ps` e `top`
- [ ] O que é environment de processo?

**Dia 3: Threads**
- [ ] Responder perguntas 13-19
- [ ] Comparar: criar processo vs thread
- [ ] Em Go: goroutines vs OS threads
- [ ] Quantas goroutines vs threads você pode criar?

**Dia 4: Prática**
- [ ] Criar programa multi-processo
- [ ] Criar programa multi-thread
- [ ] Medir overhead de criação
- [ ] Comunicação entre processos (pipes)

**Dia 5: Investigação**
- [ ] Investigar: como Go runtime schedule goroutines?
- [ ] O que é M:N threading?
- [ ] O que é work stealing?

### Semana 57: Scheduling e Memory

**Dia 1: Scheduling**
- [ ] Responder perguntas 20-25
- [ ] Pesquisar: scheduler do seu OS
- [ ] O que é nice value?
- [ ] Experimentar com prioridades

**Dia 2: Context Switch**
- [ ] O que acontece em context switch?
- [ ] Medir custo de context switch
- [ ] Por que muitas threads = lento?
- [ ] Trade-off: threads vs async

**Dia 3: Virtual Memory**
- [ ] Responder perguntas 26-30
- [ ] Por que virtual memory existe?
- [ ] O que é demand paging?
- [ ] Investigar memory map de processo

**Dia 4: Projeto**
- [ ] Criar "mini shell" em Go
- [ ] Executar comandos
- [ ] Pipes entre comandos
- [ ] Lidar com sinais

**Dia 5: Consolidação**
- [ ] Responder TODAS as perguntas guia
- [ ] Diagrama: anatomia de um processo
- [ ] Cards SRS para conceitos de OS
- [ ] Resumo: processo vs thread vs goroutine

---

## ✅ Critérios de Sucesso

### Você dominou se consegue:
1. [ ] Explicar diferença processo vs thread
2. [ ] Explicar como scheduling funciona
3. [ ] Usar strace para debugar
4. [ ] Explicar virtual memory básico
5. [ ] Criar programa multi-processo

### Comparação Rápida

| Aspecto | Processo | Thread | Goroutine |
|---------|----------|--------|-----------|
| Memória | Isolada | Compartilhada | Compartilhada |
| Criação | Pesada | Média | Leve |
| Stack | MB | MB | KB |
| Scheduling | OS | OS | Go runtime |

### Red flags (precisa revisar):
- Confunde processo com thread
- Não entende context switch
- Não sabe o que goroutine é

---

## 🔄 Reflexão

### Abstração
_Como OS abstrai hardware para programas?_

### Trade-offs
_Quando usar processo vs thread vs goroutine?_

### Conexão
_Como isso se relaciona com concorrência?_

---

## ⏭️ Próximo

**Semana 58-59**: Concorrência
- Como evitar race conditions?
- Mutexes vs Channels
- Patterns de concorrência em Go
