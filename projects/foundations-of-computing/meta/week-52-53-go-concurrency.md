# 📅 Go Concurrency (Semanas 52-53 no Timeline)

> **Arquivo**: `week-go-concurrency.md`
> **Semanas reais**: 52-53 (consulte tabela de mapeamento em `learning-map.md`)

## 🎯 Objetivo
Ao final destas semanas, você será capaz de:
- Criar e gerenciar goroutines
- Usar channels para comunicação segura
- Implementar padrões de concorrência idiomáticos em Go
- Entender diferenças entre concurrency em Go vs Rust

---

## ❓ Perguntas Guia

### Conceitos Fundamentais
1. O que é uma goroutine e como difere de uma thread?
2. Como channels evitam race conditions?
3. Quando usar buffered vs unbuffered channels?
4. O que significa "Don't communicate by sharing memory; share memory by communicating"?

### Aplicação
5. Como implementar worker pools em Go?
6. Como usar `select` para multiplexar channels?

### Conexões
7. Como a abordagem de Go difere do modelo de ownership de Rust para concorrência?

---

## 📚 Recursos

| Recurso | Seção | Propósito |
|---------|-------|-----------|
| Go Tour | Concurrency section | Introdução interativa |
| Effective Go | Concurrency | Idiomas e padrões |
| Go Blog - Pipelines | https://go.dev/blog/pipelines | Padrões avançados |
| Go Blog - Context | https://go.dev/blog/context | Cancelation |

---

## 📋 Entregas

### Semana 52

**Dia 1**: Goroutines básicas
- [ ] Estudar Go Tour - Concurrency
- [ ] Criar 10 goroutines que imprimem números
- [ ] Entender problema de "goroutine leak"

**Dia 2**: Channels unbuffered
- [ ] Criar producer-consumer simples
- [ ] Experimentar deadlock e entender causa
- [ ] Implementar ping-pong entre 2 goroutines

**Dia 3**: Channels buffered
- [ ] Refazer producer-consumer com buffer
- [ ] Comparar comportamento
- [ ] Quando usar cada tipo?

**Dia 4**: Select statement
- [ ] Estudar select com múltiplos channels
- [ ] Implementar timeout com select
- [ ] Fan-in: combinar múltiplos channels

**Dia 5**: Revisão + exercícios
- [ ] Resolver 2 exercícios de concorrência
- [ ] Criar cards SRS
- [ ] Comparar com concorrência em Rust (escrito)

### Semana 53

**Dia 1**: Worker Pools
- [ ] Implementar worker pool pattern
- [ ] Processar lista de URLs em paralelo
- [ ] Limitar número de workers

**Dia 2**: Context e Cancelation
- [ ] Estudar package context
- [ ] Implementar cancelamento graceful
- [ ] Timeout em operações

**Dia 3**: Padrões avançados
- [ ] Pipeline pattern
- [ ] Fan-out, fan-in
- [ ] Semaphore com channels

**Dia 4**: Projeto integrador
- [ ] Web scraper concorrente simples
- [ ] Usar todos os padrões aprendidos
- [ ] Rate limiting

**Dia 5**: Reflexão e consolidação
- [ ] Responder todas as perguntas guia
- [ ] Criar cards SRS (mínimo 15)
- [ ] Escrever comparação Go vs Rust concurrency

---

## ✅ Critérios de Sucesso

### Você dominou se consegue:
1. [ ] Explicar goroutines vs threads vs Rust async
2. [ ] Implementar worker pool do zero
3. [ ] Debugar deadlock dado código problemático
4. [ ] Escolher buffered vs unbuffered para cenário dado

### Red flags (precisa revisar):
- Não sabe quando goroutine "vaza"
- Confunde send e receive em channels
- Não consegue explicar por que select é útil

---

## 🔄 Reflexão

### Go vs Rust: qual modelo você prefere e por quê?
_Escreva_

### O que foi mais confuso em channels?
_Escreva_

### Como isso muda sua forma de pensar em concorrência?
_Escreva_

### Confiança (1-5)
- [ ] Goroutines: _/5
- [ ] Channels: _/5
- [ ] Patterns: _/5

---

## ⏭️ Próximo

**Semana 54-55**: CPU & Cache
- Pergunta prévia: Por que a ordem de acesso à memória importa para performance?
