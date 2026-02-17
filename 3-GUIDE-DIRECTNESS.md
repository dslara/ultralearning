# 🚀 Guia Completo: Directness (Aprender Fazendo)

> **Última atualização**: 2026-02-08  
> **Versão**: 1.0  

---

## 📋 Índice

- [O que é Directness](#-o-que-é-directness)
- [Quando Usar](#-quando-usar-directness)
- [Como Usar](#️-como-usar-passo-a-passo)
- [Framework 3D](#-framework-3d-onde-directness-se-encaixa)
- [Boas Práticas](#️-boas-práticas-como-fazer-directness-efetivo)
- [Workflow](#-workflow-típico)
- [Métricas](#-métricas-como-saber-se-funcionou)
- [Resumo](#-resumo-regras-de-ouro)
- [Exemplos Completos](#-exemplos-completos)

---

## 🎯 O que é Directness?

### Definição
**Directness** é aprender fazendo **projetos reais** no **contexto de uso**, em vez de tutoriais isolados.

### Metáfora
- ❌ **Indireto**: Aprender natação em aula teórica na sala
- ✅ **Direto**: Aprender natação NA PISCINA

### Por quê usar?
Implementa **Princípio #3 - Directness** do Ultralearning:
- **Transfer**: O que você aprende é DIRETAMENTE aplicável
- **Contexto real**: Enfrenta problemas reais (não simplificados)
- **Motivação**: Ver algo funcionar > assistir tutorial

### Benefícios científicos
- ✅ **Transfer perfeito**: Aprende no contexto que vai usar
- ✅ **Problemas reais**: Enfrenta bugs, edge cases, decisões
- ✅ **Aprendizado profundo**: Não dá para fingir que sabe
- ✅ **Portfólio**: Projetos reais = evidência tangível

---

## 🧠 Quando Usar Directness?

### ✅ USE para INTEGRAÇÃO (40-50% do aprendizado)

| Situação | Exemplo | Por quê Directness funciona |
|----------|---------|----------------------------|
| **Aplicar múltiplos conceitos** | Criar HTTP server (usa sockets, threads, parsing) | Conecta tudo |
| **Mini-projetos semanais** | Sorting visualizer (aplica algoritmos) | Consolida aprendizado |
| **Capstone projects** | Database do zero | Integração completa |
| **Resolver problema real** | Automatizar workflow pessoal | Motivação alta |
| **Preparar para trabalho** | Projetos de portfólio | Transfer direto |

### ❌ NÃO USE quando ainda está aprendendo basics

| Situação | Por quê NÃO Directness | Use isto em vez |
|----------|------------------------|-----------------|
| **Conceito novo** | Precisa entender antes de aplicar | #feynman primeiro |
| **Skill não automatizado** | Vai ser muito lento | #drill até automatizar |
| **Falta pré-requisitos** | Vai ficar travado | Estude pré-requisitos |

---

## 🛠️ Como Usar (Passo a Passo)

### Método Completo (4-8 horas, distribuído)

#### Passo 1: Escolher Projeto Adequado (10 min)
```bash
# Critérios para bom projeto de Directness:
# 1. Usa skills que você JÁ estudou (conceitos + drill)
# 2. Desafiador mas não impossível
# 3. Resulta em algo FUNCIONAL (não teórico)
# 4. Pode ser feito em 4-8h (1-2 semanas, 1h/dia)
```

**Framework de escolha**:
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

### Escopo realista
- **Core**: [funcionalidade mínima]
- **Extra**: [se sobrar tempo]
- **Não fazer**: [fora de escopo]
```

**Exemplos por nível**:

| Nível | Projeto | Pré-requisitos | Duração |
|-------|---------|----------------|---------|
| 🟢 Básico | CLI tool (grep simplificado) | Rust basics, file I/O | 4-6h |
| 🟡 Intermediário | Sorting visualizer | Sorting algorithms, rendering | 6-8h |
| 🔴 Avançado | HTTP server do zero | Networking, concorrência, parsing | 10-15h |
| 🔴🔴 Capstone | Database engine | TUDO (data structures, algorithms, systems) | 60-80h |

---

#### Passo 2: Planejar (NÃO codificar ainda!) (30 min)
```bash
# Antes de escrever código, responda:
# 1. Qual o MVP (Minimum Viable Product)?
# 2. Que decisões de design preciso tomar?
# 3. Que partes vou simplificar?
# 4. Que recursos vou consultar?
```

**Template de planejamento**:
```markdown
# Projeto: Sorting Visualizer

## MVP (o que PRECISA funcionar)
- [ ] Ler array de números
- [ ] Implementar 2 algoritmos (bubble, merge)
- [ ] Mostrar passos no terminal (println!)
- [ ] Comparar tempo de execução

## Fora do MVP (não fazer agora)
- ❌ Interface gráfica (muito complexo)
- ❌ 10 algoritmos (2 é suficiente)
- ❌ Animação (println! serve)

## Decisões de design
1. Representação: `Vec<i32>`
2. Output: ASCII no terminal
3. Comparação: `std::time::Instant`

## Recursos a consultar
- Rust Book: Cap 13 (iterators)
- Docs: std::time
- Tutorial: Como estruturar CLI tool

## Timeline (1h/dia × 5 dias)
- Dia 1: Estrutura base + leitura de input (1h)
- Dia 2: Bubble sort + visualização (1h)
- Dia 3: Merge sort + visualização (1h)
- Dia 4: Comparação de tempo (1h)
- Dia 5: Refatoração + README (1h)
```

**Regra de ouro**: Planeje ANTES de codificar. 30 min de planejamento economiza 3h de retrabalho.

---

#### Passo 3: Implementar MVP (4-6h distribuídas)
```bash
# Foco: Fazer funcionar PRIMEIRO, otimizar DEPOIS

# Estratégia:
# 1. Começe pela parte mais simples
# 2. Faça funcionar (mesmo que feio)
# 3. Teste antes de avançar
# 4. Não otimize prematuramente
```

**Ciclo de desenvolvimento**:
```
Escreve função básica (20 min)
     ↓
Testa manualmente (5 min)
     ↓
Funciona? Não → Debug (10 min) → Volta
     ↓ Sim
Próxima função
```

**Quando pedir ajuda**:
- ✅ Travou >30 min no mesmo problema
- ✅ Não entende erro do compilador
- ✅ Precisa decidir entre 2 abordagens

```bash
# Use @tutor como pair programming
@tutor #debug "erro de borrow em linha 42"
@tutor #scaffold "criar estrutura base para HTTP server"
```

---

#### Passo 4: Refatorar e Documentar (1-2h)
```bash
# Código funciona? Agora melhore!

# Checklist de refatoração:
# - [ ] Nomes de variáveis claros
# - [ ] Funções <50 linhas
# - [ ] Comentários em partes complexas
# - [ ] README.md explicando projeto
# - [ ] Remover código comentado/debug
```

**Template de README**:
```markdown
# [Nome do Projeto]

## O que faz?
[1-2 frases]

## Como usar?
```bash
cargo run -- [args]
```

## Implementação
- Algoritmos: [lista]
- Estruturas de dados: [lista]
- Decisões de design: [justifique escolhas]

## Aprendizados
- Conceito X: [o que você aprendeu]
- Dificuldade Y: [como resolveu]
- Trade-off Z: [decisão que tomou]

## Próximos passos (não implementado)
- Feature A
- Feature B
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

**Template de reflexão**:
```markdown
# Reflexão: Sorting Visualizer

## Conceitos solidificados
- Entendi FINALMENTE por que merge sort é O(n log n)
  (vi na prática as divisões)
- Aprendi que bubble sort é O(n²) mas simples de implementar

## Dificuldades
- Visualizar passos intermediários (resolvi com Vec de snapshots)
- Timing preciso (std::time::Instant foi suficiente)

## Decisões de design
- Escolhi println! em vez de GUI (acertei - MVP funcional)
- Implementei só 2 algoritmos (suficiente para comparar)

## Próximos passos de estudo
- #drill: Implementar merge sort 5x (ainda lento)
- Flashcard: "Merge sort é O(?)?" → "O(n log n)"
- #directness futuro: Adicionar quick sort ao visualizer
```

---

### Método Rápido via @tutor (2-4h)

```bash
# Durante sessão de estudo
make study

# Escolha: 1. Code (directness)
> @tutor #directness "criar CLI grep simplificado"

# @tutor vai:
# 1. Ajudar a planejar escopo realista
# 2. Criar estrutura base (#scaffold)
# 3. Guiar implementação (pair programming)
# 4. Sugerir melhorias/refatorações
# 5. Ajudar a documentar aprendizados
```

---

## 🎯 Framework 3D: Onde Directness se Encaixa?

### Lembrando o Framework 3D (do @meta)

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
| **Exemplo** | Implementar binary search 10x | Criar jogo que USA binary search |

**Ordem correta**:
1. #feynman → Entender conceito
2. #drill → Automatizar skills individuais
3. #directness → Integrar tudo em projeto

---

## ✍️ Boas Práticas: Como Fazer Directness Efetivo

### ✅ BOM: MVP Claro

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

# Por quê bom: Escopo fechado, alcançável em 6-8h
```

```markdown
# ❌ RUIM: Escopo vago
## Projeto: HTTP Server

### Objetivo
"Criar servidor HTTP completo com todas as features modernas"

# Por quê ruim: Muito amplo, vai levar meses
```

**Regra**: MVP deve ser alcançável em 4-8h. Adicione features depois.

---

### ✅ BOM: Funciona Primeiro, Bonito Depois

```rust
// ✅ CERTO: Código feio mas funcional (iteração 1)
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

// DEPOIS, refatore para bonito (iteração 2)
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
// ❌ RUIM: Tentar fazer perfeito na primeira vez
fn bubble_sort<T: Ord + Clone + Debug>(arr: &mut [T]) 
where T: PartialOrd + Copy + Display {
    // Paralisa tentando ser genérico demais
    // Leva 3h e não funciona
}
```

**Regra**: Faça funcionar com caso simples. Generalize depois.

---

### ✅ BOM: Testar Incrementalmente

```bash
# ✅ CERTO: Testa cada parte antes de avançar

# Passo 1: Ler arquivo
cargo run -- test.txt
# Testa: Arquivo é lido corretamente?

# Passo 2: Parsear linhas
# Testa: Linhas são parseadas?

# Passo 3: Buscar padrão
# Testa: Encontra a palavra?

# Passo 4: Imprimir resultados
# Testa: Output está correto?
```

```bash
# ❌ RUIM: Escrever tudo e testar no fim

# Escreve 500 linhas de código
cargo run
# ERRO em 30 lugares diferentes
# Não sabe por onde começar a debugar
```

**Regra**: Ciclos curtos (escreve 20-30 linhas → testa → avança).

---

### ✅ BOM: Simplificar Primeiro

```markdown
# ✅ CERTO: Simplificação pragmática

## Projeto: Database

### Simplificações do MVP
1. Só 1 tabela (não relacional)
2. Só tipos simples (int, string)
3. Só queries simples (SELECT, INSERT)
4. Arquivo texto (não formato binário otimizado)
5. Sem índices (busca linear)
6. Sem transactions (ainda)

# Resultado: MVP funcional em 8h
# Complexidade adicionada depois, incrementalmente
```

```markdown
# ❌ RUIM: Tentar fazer "certo" desde o início

## Projeto: Database

### Features
- Motor relacional completo
- 20 tipos de dados
- Query language completo (joins, subqueries, etc)
- Storage binário otimizado
- B-Tree indexes
- ACID transactions
- Replicação

# Resultado: 6 meses, não terminou, desistiu
```

**Regra**: Simplifique tudo que não é essencial. Adicione depois se precisar.

---

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

#### 3. Só método GET
**Por quê**: 80% dos requests são GET. POST pode vir depois.
```

**Por quê documentar**: 
- Você vai esquecer em 1 mês
- Ajuda outros a entender suas escolhas
- Evidência de pensamento crítico (para portfólio)

---

## 🔄 Workflow Típico

### Projeto de 5 Dias (1h/dia)

```
Dia 1 (Segunda): Planejamento + Setup
├─ 10 min: Define MVP
├─ 20 min: Planejar arquitetura
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
├─ 40 min: Adiciona 1-2 features do "Nice to have"
├─ 20 min: Testa edge cases
└─ Entrega: Projeto completo (MVP)

Dia 5 (Sexta): Polish + Reflexão
├─ 30 min: Refatora código, remove debug
├─ 20 min: Escreve README
├─ 10 min: Reflexão (o que aprendeu?)
└─ Entrega: Projeto documentado
```

**Total**: 5h de código + 1h de planejamento/reflexão = 6h

---

### Integração na Semana de Estudo

| Dia | Atividade | Directness? |
|-----|-----------|-------------|
| **Segunda** | Aprender conceitos novos (#feynman) | Não |
| **Terça** | Drill skills (#drill) | Não |
| **Quarta** | Drill + conceitos | Não |
| **Quinta** | **Projeto (Directness)** | ✅ Parte 1 |
| **Sexta** | **Projeto (Directness)** | ✅ Parte 2 |
| **Sábado** | Revisão (SRS) ou finalizar projeto | ✅ Polish |

**Padrão**: Quinta-Sexta dedicadas a projeto (2-3h total).

---

## 📊 Métricas: Como Saber se Funcionou?

### Critérios de Sucesso ✅

| Métrica | Verde ✅ | Amarelo ⚠️ | Vermelho 🔴 |
|---------|----------|------------|-------------|
| **MVP completo** | Funciona 100% | 80-90% | <80% |
| **Tempo** | Dentro do estimado | +20% | +50% |
| **Código limpo** | Refatorado | Funcional mas feio | Muito técnico debt |
| **Documentação** | README + reflexão | Só README | Nenhuma |
| **Aprendizado** | 3+ conceitos solidificados | 1-2 | Nenhum claro |

### Sinais de Projeto Bem-Sucedido

```markdown
## Projeto: Sorting Visualizer

### Resultados
✅ MVP completo (bubble + merge sort)
✅ Tempo: 5h (estimado: 6h)
✅ Código: Refatorado, nomes claros
✅ README: Completo com exemplos
✅ Aprendizados: 
   - Merge sort finalmente "clicou"
   - Aprendi std::time::Instant
   - Decisão: println! > GUI (acertei)

### Próximos passos
- Adicionar quick sort (30 min)
- Criar versão com GUI? (projeto futuro)
```

---

### Red Flags (Sinais de problema)

| Sinal | Problema | Solução |
|-------|----------|---------|
| 🚩 Travado >2h no mesmo bug | Falta pré-requisito | Volte e estude conceito faltante |
| 🚩 Escopo cresce infinitamente | Sem MVP claro | Redefina MVP, corte features |
| 🚩 Código não funciona após 8h | Projeto muito ambicioso | Simplifique ou quebre em 2 projetos |
| 🚩 Só copia tutorial | Não está aprendendo | Tente fazer do zero DEPOIS do tutorial |
| 🚩 Desistiu no meio | Desmotivação ou impossível | Escolha projeto menor ou mais interessante |

---

## 🎓 Resumo: Regras de Ouro

### ✅ 5 Regras para Directness Efetivo

1. **Defina MVP claro ANTES de começar**
   - ✅ Escopo fechado, alcançável em 4-8h
   - ❌ Não comece sem saber o que é "terminar"

2. **Funciona primeiro, bonito depois**
   - ✅ Código feio que funciona > código bonito que não funciona
   - ❌ Não otimize prematuramente

3. **Teste incrementalmente (ciclos curtos)**
   - ✅ Escreve 20-30 linhas → testa → avança
   - ❌ Não escreva 500 linhas e teste no fim

4. **Simplifique tudo que não é essencial**
   - ✅ MVP mínimo viável (realmente mínimo!)
   - ❌ Não tente fazer tudo "perfeito" já

5. **Documente aprendizados e decisões**
   - ✅ README + reflexão ("o que aprendi?")
   - ❌ Não termine projeto sem refletir

---

## 📝 Exemplos Completos

### Exemplo 1: Sorting Visualizer (6h)

#### Contexto
Você estudou sorting algorithms (Semana 31-34 de M4) e quer solidificar.

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

#### Dia 2: Bubble Sort (1h)
```rust
// sorting/bubble.rs
pub fn bubble_sort(arr: &mut Vec<i32>) -> Vec<Vec<i32>> {
    let mut steps = vec![];
    
    for i in 0..arr.len() {
        for j in 0..arr.len() - 1 - i {
            if arr[j] > arr[j + 1] {
                arr.swap(j, j + 1);
                steps.push(arr.clone()); // Salva snapshot
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

// Teste:
// ✅ Funciona (após 2 bugs de índices)
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

// ✅ Funciona! Vê diferença de tempo bubble vs merge
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
- Rust traits (Fn) foram úteis para abstrair

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
Projeto básico para aplicar Rust fundamentals (Semana 13-14 de M2).

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

// Testes
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
- Sem flags (-i, -v)

# Próximos passos
- Adicionar regex (crate `regex`)
- Múltiplos arquivos (glob patterns)
```

#### Resultado
✅ MVP completo em 4h  
✅ Aprendizados: lifetimes, iterators, testes  
✅ Código limpo e testado  

---

## 🔗 Links Relacionados

- [FEYNMAN-GUIDE.md](8-GUIDE-FEYNMAN.md) - Entender conceitos antes
- [DRILL-GUIDE.md](4-GUIDE-DRILL.md) - Automatizar skills antes
- [FLASHCARDS-GUIDE.md](7-GUIDE-FLASHCARDS.md) - Memorizar fatos
- [Master Learning Map](shared/master-learning-map.md) - Visão global

---

## 💡 Dica Final

**Directness é onde aprendizado SE CONSOLIDA.**

Você pode:
- ✅ Assistir 10 tutoriais (passivo)
- ✅ Fazer 100 exercícios (isolado)

**MAS só entende de verdade quando FAZ projeto real.**

Directness força você a:
- Tomar decisões (não tem "resposta certa")
- Enfrentar bugs reais (não exercícios sanitizados)
- Integrar conhecimentos (não skills isolados)

**"Tell me and I forget, teach me and I may remember, involve me and I learn."** - Benjamin Franklin

---

**Criado por**: @meta  
**Data**: 2026-02-08  
**Versão**: 1.0
