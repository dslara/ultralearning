# 🧮 M1: Math Foundations

> **"Que matemática preciso para entender algoritmos?"**

---

## 🎯 O que você vai aprender

Ao final deste módulo, você será capaz de:
- ✅ Ler notação matemática sem travar (∑, ∀, ∃, ∈, etc)
- ✅ Entender Big O notation e análise de complexidade
- ✅ Fazer provas por indução
- ✅ Calcular logaritmos e exponenciais mentalmente
- ✅ Aplicar combinatória e probabilidade em análise de algoritmos
- ✅ Analisar grafos básicos

**Não é sobre**: Virar matemático, decorar fórmulas, provas formais complexas  
**É sobre**: Ler e entender conceitos que aparecem em ciência da computação

---

## 📋 Pré-requisitos

- [x] Nenhum! Este é o primeiro módulo
- [x] Familiaridade com álgebra básica (nível ensino médio)
- [x] Confortável com programação básica (loops, condicionais)

---

## ⏱️ Tempo Estimado

| Item | Duração |
|------|---------|
| **Semanas de conteúdo** | 5 semanas |
| **Horas totais** | 25h (1h/dia × 5 dias/semana) |
| **Buffer disponível** | Semana 6 (se necessário) |

---

## 📅 Timeline Semanal

| Semana | Tema | Pergunta Guia | Entrega |
|--------|------|---------------|---------|
| **1** | Notação & Lógica | Como ler matemática? | Cheat sheet de símbolos |
| **2** | Conjuntos & Funções | Como representar coleções? | Exercícios de conjuntos |
| **3** | Logaritmos & Exponenciais | Por que O(log n) é rápido? | Análise de complexidade |
| **4** | Somatórios & Indução | Como analisar loops? | 3 provas por indução |
| **5** | Combinatória & Probabilidade | Como contar possibilidades? | Análise de caso médio |

**Detalhes**: Veja `meta/week-01-*.md` até `meta/week-05-*.md`

---

## 🔗 Conexões com Outros Módulos

### Este módulo é usado em:

| Módulo | Como a matemática aparece | Quando revisar |
|--------|---------------------------|----------------|
| **M2 (Rust)** | Análise de complexidade de Vec, HashMap | Durante M2 |
| **M3 (Data Structures)** | Big O de operações, provas de corretude | Todo M3 |
| **M4 (Algorithms)** | Análise formal, combinatória em grafos | Fundamental |
| **M6 (Systems)** | Probabilidade em cache hits, análise de desempenho | Semanas 54-55 |

### Conceitos que você vai reusar:
- **Big O notation**: Aparece em TODOS os módulos seguintes
- **Indução**: Provar corretude de algoritmos recursivos (M4)
- **Logaritmos**: Árvores balanceadas (M3), binary search (M4)
- **Combinatória**: Contar caminhos em grafos (M4)

---

## 🔄 Retrieval de Módulos Anteriores

**Este é o primeiro módulo**, então não há retrieval cross-module ainda.

Mas você vai criar a base para os próximos módulos praticarem retrieval de matemática!

---

## ✅ Entregas Principais

### Entregas Semanais (5 total)
- [ ] **Semana 1**: Cheat sheet pessoal de símbolos matemáticos
- [ ] **Semana 2**: Resolver 10 exercícios de conjuntos e funções
- [ ] **Semana 3**: Analisar complexidade de 5 algoritmos
- [ ] **Semana 4**: Escrever 3 provas por indução
- [ ] **Semana 5**: Resolver 5 problemas de combinatória aplicados a CS

### Benchmark Final (Fim da Semana 5)
**Nome**: "Ler e Entender Análise de Algoritmo"

**Desafio**: 
Será dado um algoritmo com análise matemática completa. Você deve:
1. Explicar cada símbolo matemático usado
2. Traduzir somatórios para loops
3. Justificar a complexidade final

**Critério de sucesso**: 
- ✅ 80%+ dos símbolos explicados corretamente
- ✅ Tradução correta de notação para código
- ✅ Complexidade justificada com raciocínio lógico

---

## 🚀 Como Começar (Quick Start)

### Passo 1: Verifique pré-requisitos
```bash
# Nenhum! Você está pronto para começar 🎉
```

### Passo 2: Leia o plano da Semana 1
```bash
# Abra o arquivo
cat 01-math-foundations/meta/week-01-notation-logic.md
```

### Passo 3: Inicie sua primeira sessão
```bash
make start   # Quiz (será leve na semana 1)
make study   # Escolha "1. Code" ou "3. Feynman"
make end     # Salva progresso
```

### Passo 4: Crie seus primeiros flashcards
Conforme estuda, adicione cards em `knowledge/flashcards-source.csv`:
```csv
front,back,module,difficulty
"O que significa ∈?","Pertence (elemento de conjunto)","M1-math",easy
```

---

## 📚 Recursos Principais

### 🥇 Tier 1 - Comece aqui
| Recurso | Por quê | Tempo |
|---------|---------|-------|
| **Khan Academy - Discrete Math** | Explicações visuais, gratuito | 10-15h |
| **MIT 6.042J** (selecionado) | Foco em CS, exemplos práticos | 8-10h |
| **Concrete Mathematics** (cap. 1-2) | Referência para consulta | Opcional |

### 🥈 Tier 2 - Aprofundamento
| Recurso | Quando usar |
|---------|-------------|
| Wikipedia - Mathematical notation | Quando esquecer um símbolo |
| YouTube - 3Blue1Brown (sobre log/exp) | Se não entendeu logaritmos |

### 🥉 Tier 3 - Avançado (pular por enquanto)
- Rosen - Discrete Math (livro completo)
- Cursos formais de matemática discreta

**Detalhes completos**: `meta/resources.md`

---

## 📊 Progresso

### Semanas Completadas
- [ ] Semana 1: Notação & Lógica
- [ ] Semana 2: Conjuntos & Funções
- [ ] Semana 3: Logaritmos & Exponenciais
- [ ] Semana 4: Somatórios & Indução
- [ ] Semana 5: Combinatória & Probabilidade

### Métricas
```json
{
  "hours_studied": 0,
  "days_active": 0,
  "concepts_learned": 0,
  "exercises_solved": 0,
  "flashcards_created": 0
}
```
_(Arquivo `logs/stats.json` atualizado automaticamente)_

---

## 🔧 Comandos Úteis

```bash
# Planejamento
make plan              # Planejar próxima semana com @meta

# Estudo diário
make start             # Iniciar sessão + quiz
make study             # Loop interativo de estudo
make end               # Finalizar e salvar

# Revisão
make review            # SRS (flashcards)
make retro             # Retrospectiva semanal

# Status
make status            # Ver streak e progresso
```

---

## ⏭️ Próximo Módulo

Após completar M1:
- **Buffer Week** (Semana 6) - Use para recuperação ou revisão profunda
- **M2: Rust Foundations** (Semanas 7-14) - Aprenda ownership e memory management

**Link**: [M2: Rust Foundations](../02-rust-foundations/README.md) _(será criado)_

---

## 📁 Estrutura de Arquivos

```
01-math-foundations/
├── README.md                    ← Você está aqui
├── meta/
│   ├── learning-map.md          ← Plano detalhado do módulo
│   ├── prerequisites.md         ← Checklist de prontidão
│   ├── resources.md             ← Recursos tier 1/2/3
│   ├── week-01-notation-logic.md
│   ├── week-02-sets-functions.md
│   ├── week-03-log-exp.md
│   ├── week-04-summation-induction.md
│   ├── week-05-combinatorics-graphs.md
│   └── retrospectives/          ← Retros semanais
├── knowledge/
│   ├── concepts/                ← Explicações Feynman
│   └── flashcards-source.csv    ← Cards deste módulo
├── projects/                    ← Exercícios práticos
└── logs/
    ├── daily/                   ← Logs diários
    └── stats.json               ← Métricas
```

---

## 💡 Dicas de Estudo

### Para este módulo especificamente:
1. **Não decore fórmulas** - Entenda o conceito por trás
2. **Conecte com código** - Todo somatório é um loop
3. **Faça exercícios** - Matemática se aprende fazendo
4. **Use Feynman** - Se não consegue explicar, não entendeu
5. **Crie analogias** - Big O é como "ordem de grandeza"

### Red flags (sinais de que algo está errado):
- 🚩 Decorando símbolos sem entender
- 🚩 Pulando exercícios
- 🚩 Não consegue explicar para um amigo
- 🚩 Não vê conexão com programação

**Se isso acontecer**: Use `make plan` e fale com @meta para ajustar.

---

**Bom estudo! 🧮**

_Última atualização: 2026-02-08_
