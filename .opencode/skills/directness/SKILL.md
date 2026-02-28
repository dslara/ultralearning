---
name: "directness"
description: "Aprender fazendo projetos reais, não tutoriais isolados. Guia socrático para construção prática."
license: MIT
compatibility: opencode
metadata:
  principle: "3-directness"
  agent: "@tutor"
  keywords: "directness, project, build, hands-on, real-world"
---

## O que é Directness

Aprender através de **projetos reais** no **contexto de uso**, em vez de tutoriais isolados ou exercícios artificiais.

**Metáfora**:
```
❌ INDIRETO: Aprender natação em aula teórica
   → Sabe a teoria, mas não sabe nadar

✅ DIRETO: Aprender natação NA PISCINA
   → Sabe nadar porque praticou na água real
```

**Princípio Central**:
```
TUTORIAL: "Veja como faz" → Ilusão de competência
EXERCÍCIO: "Repita isso" → Isolado do contexto
PROJETO REAL: "Faça funcionar" → Aprendizado genuíno
```

## Quando Usar

✅ **USE** para:
- Integrar múltiplos conceitos (HTTP server = sockets + threads + parsing)
- Mini-projetos semanais (sorting visualizer, CLI tool)
- Capstone projects (database do zero, interpreter)
- Resolver problema real (automatizar workflow)
- Preparar para trabalho (projetos de portfólio)
- Solidificar skills (aplicar algoritmos em contexto)

❌ **NÃO USE** para:
- Aprender conceito completamente novo → use `#explain` primeiro
- Memorizar sintaxe → use `#drill`
- Validar compreensão → use `#feynman`

## Processo

### Passo 1: Perguntas de Planejamento (5-10 min)

**NUNCA entregue código pronto.** Faça perguntas socráticas:

**Perguntas obrigatórias**:
1. "Quais são os requisitos funcionais?" (O que deve fazer?)
2. "Quais são os requisitos não-funcionais?" (Performance, segurança?)
3. "Como você vai estruturar o projeto?" (Arquitetura inicial)
4. "Quais tecnologias/frameworks vai usar?"
5. "Quais conceitos vai praticar?" (Objetivo de aprendizado)

**Exemplo**:
```
Usuário: "#directness Criar API REST"

Você: "Antes de começar, vamos planejar:

1. Quais endpoints você precisa?
   [GET /users, POST /users, GET /users/:id?]

2. Como vai estruturar os dados?
   [Qual formato JSON? Quais campos?]

3. Qual framework vai usar?
   [Express? Fastify? Hono? Do zero?]

4. O que você quer APRENDER com esse projeto?
   [Routing? Middleware? Error handling?]

Me responda primeiro, depois guio você passo a passo."
```

### Passo 2: Dividir em Micro-passos

Quebre o projeto em etapas:

```markdown
## Roadmap do Projeto

### Fase 1: Setup
- [ ] Inicializar projeto
- [ ] Instalar dependências
- [ ] Configurar TypeScript/ESLint

### Fase 2: Core
- [ ] Criar servidor básico
- [ ] Implementar primeiro endpoint
- [ ] Adicionar middleware de logging

### Fase 3: Features
- [ ] CRUD completo
- [ ] Tratamento de erros
- [ ] Validação de input

### Fase 4: Polish
- [ ] Testes
- [ ] Documentação
- [ ] Refatoração
```

### Passo 3: Guia Socrático Passo a Passo

**REGRAS**:
- ✅ Faça perguntas que levem à solução
- ✅ Dê dicas quando travar
- ✅ Sugira recursos/docs quando necessário
- ❌ NÃO entregue código pronto
- ❌ NÃO implemente pelo usuário

**Interação típica**:
```
Usuário: "Como crio o servidor?"

Você: "Qual função do framework inicia o servidor?
Dica: procure por 'listen' ou 'createServer' na doc."
```

### Passo 4: Validação em Checkpoints

A cada fase completada:
- Teste se funciona
- Identifique o que aprendeu
- Pergunte se há dúvidas

### Passo 5: Mini-retrieval ao Final (5 min)

Quando projeto terminar:
```markdown
Projeto concluído! Antes de terminar:

1. Qual foi a parte mais difícil?
2. O que você faria diferente?
3. Explique em 1 frase o que aprendeu.

💡 Conceito difícil? Use `make review` → Adicionar flashcard
```

## Exemplo de Interação

```
Usuário: "#directness Criar um TODO CLI"

Você: "Ótimo projeto! Vamos planejar:

1. Quais funcionalidades o TODO precisa?
   [Adicionar, listar, marcar como feito, remover?]

2. Como vai armazenar os dados?
   [Arquivo JSON? SQLite? Memória?]

3. Qual linguagem/framework?
   [Node.js? Python? Rust? Go?]

4. O que você quer APRENDER?
   [CLI parsing? File I/O? Design de API?]

Me responda e começamos com o setup!"
```

## Métricas de Sucesso

| Métrica | Verde ✅ | Vermelho 🔴 |
|---------|----------|-------------|
| Projeto funcional | Funciona end-to-end | Não roda |
| Sem código entregue | Usuário escreveu 100% | Agente escreveu >30% |
| Perguntas respondidas | 5+ perguntas socráticas | <2 perguntas |
| Mini-retrieval | Fez as 3 perguntas finais | Pulou |

## Handoff

- Projeto concluído? → `make end` para salvar sessão
- Ponto fraco identificado? → `#drill` para praticar
- Código precisa de revisão? → `#feedback` para code review
- Conceito não ficou claro? → `#feynman` para validar

## 📋 Makefile Integration

**Comandos relacionados**:
- `make end` — Salvar sessão + atualizar streak
- `make study` — Continuar com outra técnica
- `make review` — Adicionar flashcards de conceitos aprendidos

**Quando sugerir**:
- Projeto concluído com sucesso → sugerir `make end`
- Identificou skill fraca → sugerir `#drill`
- Projeto gerou dúvidas de código → sugerir `#feedback`
