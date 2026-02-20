# 📅 Semana 50-51: Go Basics 🐹

## 🎯 Objetivo
Ao final destas duas semanas, você será capaz de:
- Escrever Go idiomático
- Entender diferenças Go vs Rust
- Usar goroutines e channels básicos
- Trabalhar com interfaces em Go

---

## ❓ Perguntas Guia

### Por que Go?
1. Por que aprender Go depois de Rust?
2. Quais problemas Go resolve bem?
3. Onde Go é usado na indústria?

### Syntax e Tipos
4. Como declarar variáveis em Go?
5. O que é `:=` vs `var`?
6. Quais os tipos básicos em Go?
7. O que são slices? Como diferem de arrays?
8. O que são maps em Go?
9. Como structs funcionam em Go?

### Funções e Métodos
10. Como funções são declaradas?
11. O que são multiple return values?
12. Como métodos são diferentes de funções?
13. O que são value receivers vs pointer receivers?

### Error Handling
14. Como Go lida com erros?
15. O que é o idiom `if err != nil`?
16. O que é `panic` e `recover`?
17. Quando usar panic vs error?

### Interfaces
18. Como interfaces funcionam em Go?
19. O que é "implicit implementation"?
20. O que é a interface vazia `interface{}`?
21. Como interfaces se comparam a traits de Rust?

### Go vs Rust
22. Como memória é gerenciada em Go?
23. O que é garbage collection? Trade-offs?
24. Como concorrência difere?
25. Quando escolher Go vs Rust?

---

## 📚 Recursos

### Leitura
| Recurso | Seção | Propósito |
|---------|-------|-----------|
| A Tour of Go | Todo | Introdução interativa |
| | https://go.dev/tour/ | |
| Go by Example | Todo | Referência prática |
| | https://gobyexample.com/ | |
| Effective Go | | Idiomas |
| | https://go.dev/doc/effective_go | |

---

## 📋 Entregas

### Semana 50: Fundamentos

**Dia 1: Setup e Syntax**
- [ ] Instalar Go
- [ ] Responder perguntas 4-6
- [ ] Hello World
- [ ] Variáveis e tipos básicos
- [ ] Completar 5 exercícios do Tour

**Dia 2: Compostos**
- [ ] Responder perguntas 7-9
- [ ] Praticar slices: create, append, slice
- [ ] Praticar maps: create, add, delete, iterate
- [ ] Criar structs simples

**Dia 3: Funções**
- [ ] Responder perguntas 10-13
- [ ] Funções com múltiplos returns
- [ ] Métodos em structs
- [ ] Value vs pointer receiver

**Dia 4: Errors**
- [ ] Responder perguntas 14-17
- [ ] Criar erros customizados
- [ ] Padrão `if err != nil`
- [ ] Quando usar panic

**Dia 5: Projeto**
- [ ] CLI tool simples
- [ ] Ler arquivo, processar, escrever output
- [ ] Usar proper error handling

### Semana 51: Interfaces e Comparação

**Dia 1: Interfaces**
- [ ] Responder perguntas 18-21
- [ ] Criar interface `Shape` com `Area()`
- [ ] Implementar para Circle, Rectangle
- [ ] Usar interface como parâmetro

**Dia 2: Std Library**
- [ ] Explorar `fmt`, `strings`, `strconv`
- [ ] Explorar `io`, `os`, `bufio`
- [ ] Explorar `encoding/json`
- [ ] Criar programa que usa várias packages

**Dia 3: Go vs Rust**
- [ ] Responder perguntas 22-25
- [ ] Mesmo programa em Go e Rust
- [ ] Comparar: verbosidade, segurança
- [ ] Documentar diferenças

**Dia 4: Goroutines Preview**
- [ ] O que são goroutines?
- [ ] Criar goroutine simples
- [ ] O que são channels?
- [ ] Comunicação básica entre goroutines

**Dia 5: Consolidação**
- [ ] Responder TODAS as perguntas guia
- [ ] Criar cheat sheet Go syntax
- [ ] Cards SRS para Go idioms
- [ ] Projeto: reescrever programa Rust em Go

---

## ✅ Critérios de Sucesso

### Você dominou se consegue:
1. [ ] Escrever Go idiomático
2. [ ] Usar slices e maps corretamente
3. [ ] Implementar interfaces
4. [ ] Lidar com erros properly
5. [ ] Explicar diferenças Go vs Rust

### Go vs Rust Quick Reference

| Aspecto | Go | Rust |
|---------|-----|------|
| Memória | GC | Ownership |
| Null | nil (runtime) | Option (compile) |
| Errors | Multiple return | Result type |
| Concurrency | Goroutines | Threads + async |
| Interfaces | Implicit | Explicit traits |
| Generics | Sim (desde 1.18) | Sim |

### Red flags (precisa revisar):
- Ignora erros
- Não entende pointer vs value receiver
- Confunde arrays com slices

---

## 🔄 Reflexão

### Comparação
_O que Go faz melhor? O que Rust faz melhor?_

### Simplicidade
_Como a simplicidade de Go afeta produtividade?_

### GC
_Trade-offs de garbage collection?_

---

## ⏭️ Próximo

**Semana 52-53**: Go Concurrency
- Como CPU executa código?
- Por que cache importa tanto?
- O que é cache locality?
