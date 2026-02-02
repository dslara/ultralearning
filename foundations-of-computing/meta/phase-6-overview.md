# 🛠️ Fase 6: Compilers + Capstone (Meses 17-22)

> **Semanas reais no timeline**: 69-86 (após Buffer 6)
> **Arquivos**: `week-69-70-lexer-parser.md`, `week-71-72-interpreter.md`, `week-73-86-capstone.md`

## 📋 Visão Geral

**Duração**: 18 semanas (semanas 69-86) = 90 horas
**Objetivo**: Entender como linguagens funcionam e criar projeto integrador

---

## 🎯 Pergunta Central

> Como linguagens de programação funcionam?

Esta fase final integra tudo:
- Criar linguagem própria (simples)
- Projeto capstone que use tudo aprendido

---

## 📅 Semanas

| Semana | Tema | Pergunta Guia | Arquivo |
|--------|------|---------------|---------|
| 69-70 | Lexer & Parser | Como texto vira estrutura? | `week-69-70-lexer-parser.md` |
| 71-72 | Interpreter | Como código é executado? | `week-71-72-interpreter.md` |
| 73-86 | Capstone Project | Como integrar tudo? | `week-73-86-capstone.md` |

---

## 🧠 Tópicos Compiler

### Lexer (Tokenizer)
- Transformar texto em tokens
- Regular expressions
- Token types

### Parser
- Transformar tokens em AST
- Recursive descent parsing
- Grammar e BNF

### Interpreter
- Avaliar AST
- Environment e scope
- Variáveis e funções

### Opcional (se tempo permitir)
- Type checking
- Otimizações
- Code generation

---

## 🎯 Projeto Capstone (14 semanas) - **ESCOPO AJUSTADO**

### Opções (escolha escopo realista para ~70h)

**Opção A: Database from Scratch**
- ✅ Storage engine simples (B-Tree ou LSM)
- ✅ Queries simples (SELECT, INSERT)
- ❌ ~~Transactions complexas~~ (muito para 70h)
- ❌ ~~SQL completo~~ (foco em core)

**Opção B: Distributed Key-Value Store**
- ✅ Replicação básica (leader-follower)
- ✅ Cliente/servidor
- ❌ ~~Raft completo~~ (muito complexo)
- ❌ ~~Partitioning automático~~

**Opção C: Mini Language**
- ✅ Interpreter com variáveis e funções
- ✅ REPL interativo
- ❌ ~~Bytecode/VM~~ (foco em tree-walking)
- ❌ ~~Closures complexas~~

**Opção D: HTTP Framework**
- ✅ Router com parâmetros
- ✅ Middleware system
- ❌ ~~Template engine~~ (use existente)
- ❌ ~~Static file serving otimizado~~

---

## ✅ Benchmark da Fase (Q4)

### Entregáveis

1. **Interpreter funcional**
   - Expressões aritméticas
   - Variáveis
   - Condicionais
   - Funções

2. **Projeto Capstone**
   - Código funcional
   - Documentação de arquitetura
   - Testes
   - Apresentação explicando decisões

3. **Reflexão Final**
   - O que aprendeu ao longo do curso
   - Como aplicaria em trabalho real
   - Próximos passos de aprendizado

---

## 📚 Recursos Principais

| Recurso | Uso |
|---------|-----|
| Crafting Interpreters | Guia completo |
| Writing an Interpreter in Go | Prático |
| DDIA | Para capstone de DB |

---

## 🔗 Conexões

### Usa conhecimentos de
- **Todas as fases anteriores!**
- Fase 1: Implementação em Rust/Go
- Fase 2: Estruturas de dados (AST = árvore)
- Fase 3: Algoritmos (parsing, tree traversal)
- Fase 5: Sistemas (para capstone)

---

## 📊 Por que Compilers?

1. **Integra tudo**: parsing, árvores, recursão
2. **Desmistifica**: como linguagens funcionam
3. **Habilidade rara**: poucos devs entendem
4. **Aplicável**: DSLs, config files, templates

---

## 🎯 Tracking

- [ ] Semana 69-70 completa (Lexer & Parser)
- [ ] Semana 71-72 completa (Interpreter)
- [ ] Semanas 73-86 completas (Capstone)
- [ ] Benchmark Q4 passado
- [ ] Documentação completa
- [ ] Apresentação feita

**Confiança geral**: _/5

---

## 🏆 Conclusão do Curso

Ao completar esta fase, você terá:

- ✅ ~22 meses de estudo estruturado
- ✅ ~440 horas de aprendizado profundo
- ✅ Fundamentos sólidos de CS
- ✅ Duas linguagens (Rust + Go)
- ✅ 4 projetos no portfólio (3 mini + 1 capstone)
- ✅ ~150 problemas LeetCode resolvidos
- ✅ Base para qualquer especialização

---

*"The only way to learn a new programming language is by writing programs in it." - Dennis Ritchie*
