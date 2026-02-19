# 🚀 Guia Completo: Técnica Directness (Aprendizado Baseado em Projetos)

> **Última atualização**: 2026-02-18  
> **Versão**: 1.0  
> **"Aprender fazendo é 10x mais efetivo que aprender assistindo"**

---

## 📋 Índice

- [O que é Directness](#o-que-e-directness)
- [Por que usar](#por-que-usar)
- [Quando Usar](#quando-usar)
- [Como Usar](#como-usar-passo-a-passo)
- [Framework 3D](#framework-3d)
- [Boas Práticas](#boas-praticas)
- [Workflow](#workflow-tipico)
- [Métricas](#metricas)
- [Resumo](#resumo-regras-de-ouro)
- [Exemplos Completos](#exemplos-completos)

---

## 🎯 O que é Directness? 
### Definição
**Directness** é a prática de aprender através de **projetos reais** no **contexto de uso**, em vez de tutoriais isolados ou exercícios artificiais.

### Metáfora
```
❌ INDIRETO: Aprender natação em aula teórica
   → Sabe a teoria, mas não sabe nadar

✅ DIRETO: Aprender natação NA PISCINA
   → Sabe nadar porque praticou na água real
```

### Princípio Central
```
TUTORIAL: "Veja como faz" → Ilusão de competência
EXERCÍCIO: "Repita isso" → Isolado do contexto
PROJETO REAL: "Faça funcionar" → Aprendizado genuíno
```

### 🔗 Princípios Relacionados

**Implementa:**
- **[3-directness.md](../principios/3-directness.md)** - Princípio #3: Directness

**Complementa:**
- [feynman.md](feynman.md) - Entender conceitos antes
- [drill.md](drill.md) - Automatizar skills antes

---

## 💡 Por que usar?

### Benefícios do Aprendizado Direto

| Benefício | Como Funciona | Resultado |
|-----------|---------------|-----------|
| **Transfer perfeito** | Aprende no contexto que vai usar | Aplicação imediata |
| **Problemas reais** | Enfrenta bugs, edge cases, decisões | Preparação para trabalho real |
| **Aprendizado profundo** | Não dá para fingir que sabe | Compreensão genuína |
| **Portfólio** | Projetos reais = evidência tangível | Credibilidade profissional |
| **Motivação** | Ver algo funcionando | Satisfação e engajamento |

### Transferência de Conhecimento

```markdown
❌ APRENDIZADO INDIRETO (tutoriais):
Tutorial: "Como criar HTTP server"
→ Você: Copia código
→ Teste: Funciona (copiando)
→ Projeto real: "Como aplico isso?"
→ Resultado: Não consegue transferir

✅ APRENDIZADO DIRETO (projeto):
Projeto: "Crie HTTP server para servir meu site"
→ Você: Pesquisa, tenta, erra, corrige
→ Bugs reais: Aprende debugging
→ Decisões: Aprende trade-offs
→ Resultado: Sabe fazer de verdade
```

---

## 🧠 Quando Usar

### ✅ USE Directness

| Situação | Exemplo | Por que Funciona |
|----------|---------|------------------|
| **Integrar múltiplos conceitos** | Criar HTTP server (sockets, threads, parsing) | Conecta tudo |
| **Mini-projetos semanais** | Sorting visualizer | Consolida aprendizado |
| **Capstone projects** | Database do zero | Integração completa |
| **Resolver problema real** | Automatizar workflow | Motivação alta |
| **Preparar para trabalho** | Projetos de portfólio | Transfer direto |
| **Solidificar skills** | Aplicar algoritmos em contexto | Retenção duradoura |

### ❌ NÃO USE Directness (ainda)

| Situação | Por que NÃO | Use isto em vez |
|----------|-------------|-----------------|
| **Conceito totalmente novo** | Precisa entender antes | [feynman.md](feynman.md) |
| **Skill não automatizado** | Vai ser muito lento/travado | [drill.md](drill.md) |
| **Faltam pré-requisitos** | Vai ficar frustrado | Estude pré-requisitos |
| **Primeira vez vendo código** | Não sabe por onde começar | Tutorial guiado primeiro |

---

## 🛠️ Como Usar (Passo a Passo)

### Método Completo (4-8 horas, distribuídas)

#### Passo 1: Escolher Projeto Adequado (10 min)

```bash
# CRITÉRIOS para bom projeto de Directness:

# 1. Usa skills que você JÁ estudou
#    (conceitos #feynman + skills #drill)

# 2. Desafiador mas não impossível
#    → Se muito fácil: não aprende
#    → Se muito difícil: desiste

# 3. Resulta em algo FUNCIONAL
#    → Não pode ser só teórico
#    → Você precisa VER funcionando

# 4. Escopo definido (4-8h total)
#    → Não um projeto de meses
#    → Algo para 1-2 semanas (1h/dia)
```

**Framework de Escolha**:
```markdown
## Projeto: [Nome]

### Pré-requisitos (já estudei?)
- [ ] Conceito A (#feynman)
- [ ] Conceito B (#feynman)
- [ ] Skill X (#drill)
- [ ] Skill Y (#drill)

### Skills novos (vou aprender fazendo)
- [ ] Integração de A + B
- [ ] Edge case Z
- [ ] Decisão de arquitetura

### Escopo
- **MVP (obrigatório)**: Funcionalidade mínima
- **Nice to have**: Se sobrar tempo
- **Não fazer**: Fora de escopo
```

**Exemplos por Nível**:

| Nível | Projeto | Pré-requisitos | Duração |
|-------|---------|----------------|---------|
| 🟢 Básico | CLI tool (grep simplificado) | Rust basics, file I/O | 4-6h |
| 🟡 Intermediário | Sorting visualizer | Sorting algos, rendering | 6-8h |
| 🔴 Avançado | HTTP server do zero | Networking, concorrência | 10-15h |
| 🔴🔴 Capstone | Database engine | TUDO (data structures, etc) | 60-80h |

---

#### Passo 2: Planejar ANTES de Codificar (30 min)

```bash
# Antes de escrever código, responda:

# 1. Qual o MVP (Minimum Viable Product)?
#    → O que PRECISA funcionar?

# 2. Que decisões de design preciso tomar?
#    → Estrutura, bibliotecas, arquitetura

# 3. Que partes vou simplificar?
#    → O que NÃO fazer (ainda)

# 4. Que recursos vou consultar?
#    → Documentação, tutoriais específicos
```

**Template de Planejamento**:
```markdown
# Projeto: Sorting Visualizer

## MVP (o que PRECISA funcionar)
- [ ] Ler array de números do stdin
- [ ] Implementar 2 algoritmos (bubble, merge)
- [ ] Mostrar passos no terminal (println!)
- [ ] Comparar tempo de execução

## Fora do MVP (não fazer agora)
- ❌ Interface gráfica (muito complexo)
- ❌ 10 algoritmos (2 é suficiente)
- ❌ Animação (println! serve)
- ❌ Input de arquivo (stdin é mais simples)

## Decisões de design
1. Representação: `Vec<i32>`
2. Output: ASCII no terminal
3. Timing: `std::time::Instant`
4. Estrutura: Módulo `sorting/` com submódulos

## Recursos
- Rust Book: Cap 13 (iterators)
- Docs: std::time
- Algo já drillado (#drill bubble/merge)

## Timeline (1h/dia × 5 dias)
- Dia 1: Estrutura base + leitura de input
- Dia 2: Bubble sort + visualização
- Dia 3: Merge sort + visualização
- Dia 4: Comparação de tempo
- Dia 5: Refatoração + README
```

**Regra de ouro**: 30 min de planejamento economizam 3h de retrabalho

---

#### Passo 3: Implementar MVP (4-6h distribuídas)

```bash
# ESTRATÉGIA: Funciona primeiro, otimiza depois

# 1. Comece pela parte mais simples possível
# 2. Faça funcionar (mesmo que código feio)
# 3. Teste ANTES de avançar
# 4. NÃO otimize prematuramente
# 5. Se travar >30 min, peça ajuda
```

**Ciclo de Desenvolvimento**:
```
Escreve função básica (20 min)
        ↓
Testa manualmente (5 min)
        ↓
Funciona? 
    NÃO → Debug (10 min) → Volta
    SIM → Próxima função
```

**Quando Pedir Ajuda**:
- ✅ Travou >30 min no mesmo problema
- ✅ Não entende erro do compilador
- ✅ Precisa decidir entre 2 abordagens
- ✅ Bug que não consegue reproduzir

```bash
# Use @tutor como pair programming
@tutor #debug "erro de borrow em linha 42"
@tutor #scaffold "criar estrutura base para HTTP server"
@tutor #review "qual abordagem é melhor para parsing?"
```

---

#### Passo 4: Refatorar e Documentar (1-2h)

```bash
# Código funciona? Agora melhore!

# CHECKLIST DE REFATORAÇÃO:
# - [ ] Nomes de variáveis claros e consistentes
# - [ ] Funções pequenas (<50 linhas)
# - [ ] Comentários em partes complexas
# - [ ] README.md explicando projeto
# - [ ] Remover código comentado/debug
# - [ ] Adicionar testes básicos
```

**Template de README**:
```markdown
# [Nome do Projeto]

## O que faz?
[1-2 frases claras]

## Como usar?
```bash
cargo run -- [args]
```

## Implementação
- Algoritmos: [lista]
- Estruturas de dados: [lista]
- Bibliotecas: [lista]

## Decisões de design
1. [Decisão 1]: [justificativa]
2. [Decisao 2]: [justificativa]

## Aprendizados
- Conceito X: [o que aprendeu]
- Dificuldade Y: [como resolveu]
- Trade-off Z: [decisão tomada]

## Próximos passos
- [ ] Feature A
- [ ] Feature B
```

---

#### Passo 5: Refletir (15 min)

```bash
# Após terminar, responda:

# 1. Que conceito você NÃO entendia bem e agora entende?
# 2. Que skill você achou mais difícil?
# 3. Que decisão de design você faria diferente?
# 4. O que criar de flashcards/drill baseado neste projeto?
```

**Template de Reflexão**:
```markdown
# Reflexão: Sorting Visualizer

## Conceitos solidificados
- Entendi FINALMENTE por que merge sort é O(n log n)
  (vi na prática as divisões recursivas)
- Aprendi que bubble sort é O(n²) mas mais simples
- Timing em Rust: `std::time::Instant` é fácil

## Dificuldades
- Visualizar passos intermediários 
  → Resolvi com Vec de snapshots
- Clonar arrays (performance)
  → `.clone()` é aceitável para MVP

## Decisões de design
- Escolhi println! em vez de GUI (acertei - MVP funcional)
- Implementei só 2 algoritmos (suficiente)

## Próximos passos de estudo
- #drill: Implementar merge sort 5x (ainda lento)
- Flashcard: "Merge sort é O(?)?" → "O(n log n)"
- #directness futuro: Adicionar quick sort
```

---

### Método Rápido via @tutor (2-4h)

```bash
# Durante sessão de estudo
make study

# Escolha: 1. Code (Directness)
> @tutor #directness "criar CLI grep simplificado"

# @tutor vai:
# 1. Ajudar a definir escopo realista (MVP)
# 2. Criar estrutura base (#scaffold)
# 3. Guiar implementação (pair programming)
# 4. Dar feedback em tempo real
# 5. Sugerir melhorias/refatorações
# 6. Ajudar a documentar aprendizados
```

---

## 🎯 Framework 3D

### Onde Directness se Encaixa

| Dimensão | % Tempo | Método | Directness? |
|----------|---------|--------|-------------|
| **Conceitos** | 40% | #feynman, #intuition | ❌ Não |
| **Fatos** | 20% | Flashcards (SRS) | ❌ Não |
| **Procedimentos** | 40% | #drill, **#directness** | ✅ **SIM** |

### Directness vs Drill

| Aspecto | Drill | Directness |
|---------|-------|------------|
| **Foco** | 1 skill isolado | Múltiplos skills integrados |
| **Contexto** | Artificial (exercício) | Real (projeto) |
| **Duração** | 30-60 min | 4-8h (distribuído) |
| **Objetivo** | Automatizar | Aplicar |
| **Output** | Código perfeito | Projeto funcional |
| **Exemplo** | Implementar binary search 10x | Criar jogo que USA binary search |

### Sequência Correta

```bash
# Ordem para dominar um tópico completo:

# 1. ENTENDER CONCEITOS (40%)
@tutor #feynman "Como merge sort funciona?"

# 2. AUTOMATIZAR SKILLS (30%)
@tutor #drill "implementar merge sort"

# 3. APLICAR EM PROJETO (30%)
@tutor #directness "criar sorting visualizer"
# → Usa merge sort que você drillou

# Resultado: Domínio completo
```

---

## ✍️ Boas Práticas

### ✅ BOM: MVP Claro e Pequeno

```markdown
# ✅ CERTO: MVP bem definido

## Projeto: HTTP Server

### MVP (o que PRECISA)
- Aceitar conexão TCP
- Ler request HTTP básico (GET /)
- Responder "200 OK" com HTML simples
- Servir 1 arquivo estático

### Não fazer (fora de MVP)
- ❌ Múltiplos métodos (POST, PUT, DELETE)
- ❌ Routing complexo
- ❌ HTTPS
- ❌ Compressão
- ❌ Caching

# Por que bom: Escopo fechado, alcançável em 6-8h
```

```markdown
# ❌ RUIM: Escopo vago

## Projeto: HTTP Server

### Objetivo
"Criar servidor HTTP completo com todas as features modernas"

# Por que ruim: Muito amplo, vai levar meses, desistência provável
```

### ✅ BOM: Funciona Primeiro, Bonito Depois

```rust
// ✅ CERTO: Iteração 1 - Funciona (código feio)
fn bubble_sort(arr: &mut Vec<i32>) {
    for i in 0..arr.len() {
        for j in 0..arr.len() - 1 - i {
            if arr[j] > arr[j + 1] {
                let temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
}

// Iteração 2 - Refatorado (código bonito)
fn bubble_sort<T: Ord>(arr: &mut [T]) {
    for i in 0..arr.len() {
        for j in 0..arr.len() - 1 - i {
            if arr[j] > arr[j + 1] {
                arr.swap(j, j + 1);
            }
        }
    }
}
```

```rust
// ❌ RUIM: Tentar perfeito na primeira vez
fn bubble_sort<T: Ord + Clone + Debug + Display>(
    arr: &mut [T]
) where T: PartialOrd + Copy {
    // Paralisa tentando ser genérico demais
    // Leva 3h e não funciona
}
```

### ✅ BOM: Testar Incrementalmente

```bash
# ✅ CERTO: Testa cada parte antes de avançar

# Passo 1: Ler arquivo
cargo run -- test.txt
# Testa: Arquivo é lido corretamente? ✅

# Passo 2: Parsear linhas
# Testa: Linhas são parseadas? ✅

# Passo 3: Buscar padrão
# Testa: Encontra a palavra? ✅

# Passo 4: Imprimir resultados
# Testa: Output está correto? ✅

# Resultado: Cada parte validada
```

```bash
# ❌ RUIM: Escrever tudo e testar no fim

# Escreve 500 linhas de código
cargo run
# ERRO em 30 lugares diferentes
# Não sabe por onde começar a debugar
# Frustração → desiste
```

### ✅ BOM: Simplificar ao Máximo

```markdown
# ✅ CERTO: Simplificações pragmáticas

## Projeto: Database simplificado

### MVP
1. Só 1 tabela (não relacional ainda)
2. Só tipos simples (int, string)
3. Só queries simples (SELECT, INSERT)
4. Arquivo texto (não formato binário otimizado)
5. Sem índices (busca linear)
6. Sem transactions

# Resultado: MVP funcional em 8h
# Complexidade adicionada incrementalmente depois
```

```markdown
# ❌ RUIM: Tentar fazer "certo" desde o início

## Projeto: Database

### Features
- Motor relacional completo
- 20 tipos de dados
- Query language completo (joins, subqueries)
- Storage binário otimizado
- B-Tree indexes
- ACID transactions
- Replicação

# Resultado: 6 meses, não terminou, desistiu
```

### ✅ BOM: Documentar Decisões

```markdown
# ✅ CERTO: Documenta "por quê"

## Projeto: HTTP Server

### Decisões de Design

#### 1. Single-threaded (sem thread pool)
**Por quê**: MVP para aprendizado. Threads adicionam complexidade.
**Trade-off**: Não escala, mas suficiente para entender HTTP.
**Próximo passo**: Adicionar thread pool depois.

#### 2. Parsing manual (sem library)
**Por quê**: Aprender como HTTP funciona internamente.
**Trade-off**: Mais código, mas aprendi mais.
**Alternativa**: Usar crate `httparse` em produção.

#### 3. Só método GET
**Por quê**: 80% dos requests são GET. POST pode vir depois.
```

**Por que documentar**:
- Você vai esquecer em 1 mês
- Ajuda outros a entender
- Evidência de pensamento crítico (portfólio)

---

## 🔄 Workflow Típico

### Projeto de 5 Dias (1h/dia)

```
Dia 1 (Segunda): Planejamento + Setup
├─ 10 min: Define MVP claro
├─ 20 min: Planeja arquitetura
├─ 30 min: Setup projeto + primeira função
└─ Entrega: Estrutura base funciona

Dia 2 (Terça): Core Functionality (Parte 1)
├─ 50 min: Implementa feature principal
├─ 10 min: Testa e documenta
└─ Entrega: Feature A funciona

Dia 3 (Quarta): Core Functionality (Parte 2)
├─ 50 min: Implementa segunda feature
├─ 10 min: Integra com Parte 1
└─ Entrega: Features A + B funcionam juntas

Dia 4 (Quinta): Features Extras
├─ 40 min: Adiciona 1-2 features "nice to have"
├─ 20 min: Testa edge cases
└─ Entrega: Projeto completo (MVP)

Dia 5 (Sexta): Polish + Reflexão
├─ 30 min: Refatora código, remove debug
├─ 20 min: Escreve README
├─ 10 min: Reflexão (o que aprendeu?)
└─ Entrega: Projeto documentado
```

**Total**: 5h de código + 1h de planejamento/reflexão = 6h

### Integração na Semana de Estudo

| Dia | Atividade | Directness? |
|-----|-----------|-------------|
| **Segunda** | Aprender conceitos novos (#feynman) | ❌ Não |
| **Terça** | Drill skills (#drill) | ❌ Não |
| **Quarta** | Drill + conceitos | ❌ Não |
| **Quinta** | **Projeto (Directness)** | ✅ Parte 1 |
| **Sexta** | **Projeto (Directness)** | ✅ Parte 2 |
| **Sábado** | Revisão (SRS) ou finalizar projeto | ✅ Polish |

**Padrão**: Quinta-Sexta dedicadas a projeto (2-3h total).

---

## 📊 Métricas

### Indicadores de Sucesso

| Métrica | Verde ✅ | Amarelo ⚠️ | Vermelho 🔴 |
|---------|----------|------------|-------------|
| **MVP completo** | 100% funciona | 80-90% funciona | <80% funciona |
| **Tempo** | Dentro do estimado | +20% | +50% ou mais |
| **Código limpo** | Refatorado | Funcional mas feio | Muito technical debt |
| **Documentação** | README + reflexão | Só README | Nenhuma |
| **Aprendizado** | 3+ conceitos solidificados | 1-2 conceitos | Nenhum claro |

### Sinais de Projeto Bem-Sucedido

```markdown
## Projeto: Sorting Visualizer

### Resultados
✅ MVP completo (bubble + merge sort funcionando)
✅ Tempo: 5h (estimado: 6h)
✅ Código: Refatorado, nomes claros
✅ README: Completo com exemplos
✅ Aprendizados documentados:
   - Merge sort finalmente "clicou"
   - Aprendi std::time::Instant
   - Decisão: println! > GUI (acertei)

### Próximos passos identificados
- Adicionar quick sort (30 min extra)
- GUI com animação? (projeto futuro maior)
```

### Red Flags

| Sinal | Problema | Solução |
|-------|----------|---------|
| 🚩 Travado >2h no mesmo bug | Falta pré-requisito | Volte e estude conceito |
| 🚩 Escopo cresce infinitamente | Sem MVP claro | Redefina MVP, corte features |
| 🚩 Código não funciona após 8h | Projeto muito ambicioso | Simplifique ou divida |
| 🚩 Só copia tutorial | Não está aprendendo | Tente fazer do zero DEPOIS do tutorial |
| 🚩 Desistiu no meio | Desmotivado ou impossível | Escolha projeto menor/mais interessante |

---

## 🎓 Resumo: Regras de Ouro

### ✅ 5 Regras para Directness Efetivo

1. **Defina MVP claro ANTES de começar**
   - ✅ Escopo fechado, 4-8h
   - ❌ Não comece sem saber o que é "terminar"

2. **Funciona primeiro, bonito depois**
   - ✅ Código feio que funciona > bonito que não funciona
   - ❌ Não otimize prematuramente

3. **Teste incrementalmente**
   - ✅ Escreve 20-30 linhas → testa → avança
   - ❌ Não escreva 500 linhas e teste no fim

4. **Simplifique ao máximo**
   - ✅ MVP mínimo viável
   - ❌ Não tente fazer tudo "perfeito"

5. **Documente aprendizados**
   - ✅ README + reflexão
   - ❌ Não termine sem refletir

---

## 📝 Exemplos Completos

### Exemplo 1: Sorting Visualizer (6h)

#### Contexto
Semana 31-34 de algoritmos, quer solidificar sorting.

#### Dia 1: Planejamento (1h)
```markdown
# Projeto: Sorting Visualizer

## MVP
- [ ] Ler array de números do stdin
- [ ] Implementar bubble sort
- [ ] Implementar merge sort
- [ ] Mostrar passos com println!
- [ ] Comparar tempo de execução

## Não fazer
- ❌ GUI (muito complexo)
- ❌ 10 algoritmos (2 é suficiente)
- ❌ Animação (println! serve)

## Estrutura
```rust
// main.rs
mod sorting;

fn main() {
    let arr = read_input();
    visualize_sort("Bubble", &arr, sorting::bubble_sort);
    visualize_sort("Merge", &arr, sorting::merge_sort);
}
```
```

#### Dia 2: Bubble Sort (1h)
```rust
// sorting/bubble.rs
pub fn bubble_sort(arr: &mut Vec<i32>) -> Vec<Vec<i32>> {
    let mut steps = vec![];
    
    for i in 0..arr.len() {
        for j in 0..arr.len() - 1 - i {
            if arr[j] > arr[j + 1] {
                arr.swap(j, j + 1);
                steps.push(arr.clone()); // Snapshot
            }
        }
    }
    
    steps
}

// Teste:
// Input: [3, 1, 2]
// Steps: [[1,3,2], [1,2,3]]
// ✅ Funciona!
```

#### Dia 3: Merge Sort (1h)
```rust
// sorting/merge.rs
pub fn merge_sort(arr: &mut Vec<i32>) -> Vec<Vec<i32>> {
    let mut steps = vec![];
    merge_sort_helper(arr, &mut steps);
    steps
}

fn merge_sort_helper(arr: &mut [i32], steps: &mut Vec<Vec<i32>>) {
    if arr.len() <= 1 { return; }
    
    let mid = arr.len() / 2;
    merge_sort_helper(&mut arr[..mid], steps);
    merge_sort_helper(&mut arr[mid..], steps);
    merge(arr, mid, steps);
}

// Teste: ✅ Funciona (após debug de índices)
```

#### Dia 4: Visualização + Timing (1h)
```rust
use std::time::Instant;

fn visualize_sort<F>(name: &str, arr: &[i32], sort_fn: F)
where F: Fn(&mut Vec<i32>) -> Vec<Vec<i32>>
{
    let mut arr_copy = arr.to_vec();
    let start = Instant::now();
    let steps = sort_fn(&mut arr_copy);
    let elapsed = start.elapsed();
    
    println!("\n=== {} Sort ===", name);
    for (i, step) in steps.iter().enumerate() {
        println!("Step {}: {:?}", i + 1, step);
    }
    println!("Time: {:?}", elapsed);
}

// ✅ Funciona! Vê diferença bubble vs merge
```

#### Dia 5: Refatoração + README (1h)
```markdown
# Sorting Visualizer

Visualiza passos de algoritmos de sorting.

## Uso
```bash
echo "5 2 8 1 9" | cargo run
```

## Implementado
- Bubble Sort O(n²)
- Merge Sort O(n log n)

## Aprendizados
- Merge sort é MUITO mais rápido (vi na prática!)
- Capturar "snapshots" foi desafio (Vec::clone())
- Rust traits (Fn) úteis para abstrair algoritmos

## Próximos passos
- Adicionar quick sort
- GUI com animação? (projeto futuro)
```

#### Resultado Final
✅ MVP completo em 5h (menos que estimado!)  
✅ Conceitos solidificados: merge sort, timing, traits  
✅ Código funcional e documentado  

---

### Exemplo 2: CLI Grep (4h)

#### Contexto
Semana 13-14 de Rust, aplicar fundamentals.

#### MVP (30 min de planejamento)
```markdown
# Projeto: Simple Grep

## MVP
- [ ] Ler arquivo do disco
- [ ] Buscar linhas que contêm padrão
- [ ] Imprimir linhas encontradas com número

## Uso
```bash
cargo run -- "pattern" file.txt
```

## Não fazer
- ❌ Regex complexo (só string match)
- ❌ Múltiplos arquivos
- ❌ Flags (-i, -v, etc)
```

#### Implementação (2.5h)
```rust
// main.rs
use std::env;
use std::fs;

fn main() {
    let args: Vec<String> = env::args().collect();
    if args.len() < 3 {
        eprintln!("Usage: {} <pattern> <file>", args[0]);
        return;
    }
    
    let pattern = &args[1];
    let filename = &args[2];
    
    let contents = fs::read_to_string(filename)
        .expect("Failed to read file");
    
    for (i, line) in contents.lines().enumerate() {
        if line.contains(pattern) {
            println!("{}: {}", i + 1, line);
        }
    }
}

// Teste:
// echo "hello\nworld\nhello world" > test.txt
// cargo run -- "hello" test.txt
// Output:
// 1: hello
// 3: hello world
// ✅ Funciona!
```

#### Refatoração (30 min)
```rust
// Separar em funções
fn search<'a>(pattern: &str, contents: &'a str) -> Vec<(usize, &'a str)> {
    contents
        .lines()
        .enumerate()
        .filter(|(_, line)| line.contains(pattern))
        .map(|(i, line)| (i + 1, line))
        .collect()
}

// Testes unitários
#[cfg(test)]
mod tests {
    use super::*;
    
    #[test]
    fn test_search() {
        let contents = "hello\nworld\nhello world";
        let results = search("hello", contents);
        assert_eq!(results.len(), 2);
    }
}
```

#### README (30 min)
```markdown
# Simple Grep

Busca padrão em arquivo (versão simplificada de grep).

## Uso
```bash
cargo run -- "pattern" file.txt
```

## Implementação
- Leitura de arquivo: `std::fs`
- Busca: `str::contains` (não regex)
- Iteração: `lines().enumerate()`

## Aprendizados
- Lifetimes ('a) em retorno de função
- Iterators são poderosos (.filter, .map)
- Testes unitários em Rust (#[cfg(test)])

## Limitações (propositais)
- Só busca exata (não regex)
- Só 1 arquivo por vez
- Sem flags

## Próximos passos
- Adicionar regex (crate `regex`)
- Múltiplos arquivos
```

#### Resultado
✅ MVP completo em 4h  
✅ Aprendizados: lifetimes, iterators, testes  
✅ Código limpo e testado  

---

## 🔗 Links Relacionados

- [3-directness.md](../principios/3-directness.md) - Princípio #3: Directness
- [feynman.md](feynman.md) - Entender conceitos antes
- [drill.md](drill.md) - Automatizar skills antes
- [flashcards.md](flashcards.md) - Memorizar fatos
- [pomodoro.md](pomodoro.md) - Blocos de foco
- [indice.md](indice.md) - Índice completo

---

## 💡 Dica Final

**Directness é onde aprendizado SE CONSOLIDA.**

Você pode:
- ✅ Assistir 10 tutoriais (passivo)
- ✅ Fazer 100 exercícios (isolados)

**MAS só entende de verdade quando FAZ projeto real.**

Directness força você a:
- Tomar decisões (não tem "resposta certa")
- Enfrentar bugs reais (não exercícios sanitizados)
- Integrar conhecimentos (não skills isolados)
- Ver resultado concreto (motivação)

**"Tell me and I forget, teach me and I may remember, involve me and I learn."** - Benjamin Franklin

---

**Criado por**: @meta  
**Data**: 2026-02-18  
**Versão**: 1.0
