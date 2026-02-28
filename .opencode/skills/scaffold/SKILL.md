---
name: "scaffold"
description: "Criar estrutura/boilerplate de projeto para focar no conceito, não na infraestrutura."
license: MIT
compatibility: opencode
metadata:
  principle: "3-directness"
  agent: "@tutor"
  keywords: "scaffold, boilerplate, setup, structure, project-init"
---

## O que é Scaffold

Criar a **estrutura inicial** de um projeto para:
- ✅ Remover fricção de setup
- ✅ Focar no conceito/core, não em infraestrutura
- ✅ Ter boilerplate funcional rapidamente

**O que scaffold TEM**:
- Caminhos de arquivo como comentários
- Imports reais
- TODOs precisos
- Configuração básica

**O que scaffold NÃO tem**:
- Lógica de negócio
- Código implementado
- Solução pronta

## Quando Usar

✅ **USE** para:
- Iniciar projeto novo rapidamente
- Setup de tecnologia/framework que usuário não conhece profundamente
- Remover barreira inicial antes de `#directness`
- Criar estrutura para drillar conceito específico

❌ **NÃO USE** para:
- Ensinar implementação → use `#directness`
- Criar projeto completo → use `#directness`
- Memorizar setup → use `#drill`

## Processo

### Passo 1: Identificar Necessidades (2 min)

Pergunte ao usuário:
- "Qual tecnologia/framework?"
- "Que funcionalidade vai implementar?" (core)
- "Que estrutura precisa?" (MVC? REST API? CLI?)

### Passo 2: Gerar Scaffold (5-10 min)

**TEMPLATE DE SCAFFOLD**:

```markdown
Projeto: [nome]
Tech: [linguagem/framework]

Estrutura:
[dir/]
├── src/
│   ├── main.[ext]        # TODO: Entrada principal
│   ├── lib.[ext]         # TODO: Funções auxiliares
│   └── config.[ext]      # TODO: Configurações
├── tests/
│   └── main.test.[ext]   # TODO: Testes básicos
├── [config-file]         # Config do framework
└── README.md             # TODO: Documentação
```

**REGRAS**:
- ✅ Caminhos como comentários: `// src/api.js`
- ✅ Imports reais: `import express from 'express'`
- ✅ TODOs específicos: `// TODO: Implementar GET /users`
- ❌ NÃO implementar lógica
- ❌ NÃO entregar código completo

### Passo 3: Entregar e Handoff (2 min)

```markdown
"Setup pronto! Estrutura criada:

[mostra estrutura]

Próximos passos:
1. `#directness` para implementar a lógica
2. Comece pelo TODO mais simples
3. Execute frequentemente para validar"
```

## Exemplo de Scaffold

**Usuário**: "#scaffold REST API em Node.js com Express"

**Scaffold gerado**:

```markdown
// package.json
{
  "name": "rest-api",
  "type": "module",
  "scripts": {
    "start": "node src/index.js",
    "dev": "node --watch src/index.js"
  },
  "dependencies": {
    "express": "^4.18.2"
  }
}

// src/index.js
import express from 'express';

const app = express();
const PORT = process.env.PORT || 3000;

// Middleware
app.use(express.json());

// TODO: Implementar rotas
// GET /users
// POST /users
// GET /users/:id

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});

// src/routes/users.js (criar se precisar organizar)
import express from 'express';

const router = express.Router();

// TODO: GET /users - listar todos
router.get('/', (req, res) => {
  // TODO: retornar lista de users
});

// TODO: POST /users - criar novo
router.post('/', (req, res) => {
  // TODO: validar e criar user
});

export default router;

// src/models/user.js (opcional)
// TODO: Definir schema/estrutura de user
// { id, name, email, createdAt }
```

## Métricas de Sucesso

| Métrica | Verde ✅ | Vermelho 🔴 |
|---------|----------|-------------|
| Estrutura clara | Caminhos + arquivos | Confuso |
| TODOs específicos | "Implementar GET /users" | "Fazer código" |
| Imports reais | Funcionariam se testados | Placeholder |
| Sem lógica de negócio | Apenas estrutura | Código implementado |

## Handoff

- Scaffold criado? → `#directness` para implementar lógica
- Não conhece a tech? → `#explain` primeiro
- Quer memorizar setup? → `#drill` para automatizar criação

## 📋 Makefile Integration

**Comandos relacionados**:
- `make study` — Continuar com `#directness` após scaffold

**Quando sugerir**:
- Scaffold pronto → sugerir continuar com `#directness` ou `make study`
