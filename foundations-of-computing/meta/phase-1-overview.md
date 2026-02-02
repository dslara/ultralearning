# 🦀 Fase 1: Rust Foundations (Meses 2-3)

> **Semanas reais no timeline**: 7-14 (após Fase 0 + Buffer 1)
> **Arquivos**: `week-07-08-ownership.md` até `week-13-14-smart-pointers.md`

## 📋 Visão Geral

**Duração**: 8 semanas (40 horas)
**Objetivo**: Dominar o modelo de memória de Rust

---

## 🎯 Pergunta Central

> Como Rust gerencia memória sem garbage collector?

Esta é a pergunta que você deve ser capaz de responder completamente ao final desta fase. Não apenas "ownership e borrowing", mas uma explicação profunda de como tudo funciona.

---

## 📅 Semanas

| Semana | Tema | Arquivo | Status |
|--------|------|---------|--------|
| 7-8 | Ownership & Borrowing | `week-07-08-ownership.md` | [ ] |
| 9-10 | Lifetimes | `week-09-10-lifetimes.md` | [ ] |
| 11-12 | Memory Deep Dive & Error Handling | `week-11-12-memory.md` | [ ] |
| 13-14 | Smart Pointers & Implementing Vec | `week-13-14-smart-pointers.md` | [ ] |

---

## 🧠 Conceitos-Chave

Ao final desta fase, você terá explorado:

### Ownership
- Move semantics
- Copy vs Clone
- O que significa "dono"

### Borrowing
- Referências compartilhadas (&T)
- Referências mutáveis (&mut T)
- Regras do borrow checker

### Lifetimes
- Por que existem
- Quando anotar
- Lifetime elision

### Memória
- Stack vs Heap
- Onde tipos vivem
- Size, alignment, padding

### Error Handling
- Option<T> e Result<T, E>
- O operador `?`
- Erros customizados

### Smart Pointers
- Box, Rc, Arc
- RefCell (interior mutability)
- Quando usar cada um

### Implementação
- Como Vec funciona
- Alocação raw
- Unsafe Rust básico

---

## ✅ Benchmark da Fase

### Teste Oral (sem consulta)
Você dominou se consegue:

1. **Explicar ownership** em 2 minutos para alguém que não sabe Rust
2. **Desenhar** diagrama de memória para código complexo
3. **Prever** erros de compilação antes de compilar
4. **Escolher** smart pointer correto para cenário dado
5. **Implementar** estrutura de dados básica em Rust

### Projeto Final da Fase
Implementar `MyVec<T>` funcional com:
- `new()`, `push()`, `pop()`, `get()`
- Crescimento automático
- Drop implementado
- Sem memory leaks

---

## 📚 Recursos Principais

| Recurso | Uso |
|---------|-----|
| The Rust Book | Fundamentos |
| Rustonomicon | Deep dive |
| Rust by Example | Prática |
| Compiler errors | Aprendizado ativo |

---

## 🔗 Conexões

### Pré-requisitos
- Fase 0 (Math): Notação para análise
- Programação básica em qualquer linguagem

### Prepara para
- Fase 2 (Data Structures): Implementar estruturas em Rust
- Fase 3 (Algorithms): Entender custo de operações
- Fase 4 (Traits): Abstrações avançadas

---

## 📊 Tracking

- [ ] Semana 7-8 completa
- [ ] Semana 9-10 completa
- [ ] Semana 11-12 completa
- [ ] Semana 13-14 completa
- [ ] Benchmark passado
- [ ] Cards SRS criados (mínimo 30)

**Confiança geral**: _/5

---

*"Rust não tem garbage collector porque o programador é o garbage collector - mas com ajuda do compilador."*
