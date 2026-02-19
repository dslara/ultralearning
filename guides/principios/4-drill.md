# 🔧 Guia Completo: Drill (Prática Deliberada)

> **Última atualização**: 2026-02-08  
> **Versão**: 1.0  

---

## 📋 Índice

- [O que é Drill](#o-que-e-drill)
- [Quando Usar](#quando-usar-drill)
- [Como Usar](#como-usar-passo-a-passo)
- [Framework 3D](#framework-3d-onde-drill-se-encaixa)
- [Boas Práticas](#boas-praticas-como-fazer-drill-efetivo)
- [Workflow](#workflow-tipico)
- [Métricas](#metricas-como-saber-se-funcionou)
- [Resumo](#resumo-regras-de-ouro)
- [Exemplos Completos](#exemplos-completos)

---

## 🎯 O que é Drill? 

### Definição
**Drill** (prática deliberada) é repetir um procedimento específico **5-10 vezes** até automatizar, focando em:
- ✅ Velocidade (fazer mais rápido)
- ✅ Precisão (fazer sem erros)
- ✅ Sem consulta (fazer de memória)

### Inspiração
- **Músicos**: Escalas 100x até tocar sem pensar
- **Atletas**: Fundamentos (arremesso, chute) 1000x
- **Cirurgiões**: Simular procedimento antes da cirurgia real

### Por quê usar?
Implementa **Princípio #4 - Drill** do Ultralearning:
- **Isola skill específico**: Treina 1 coisa por vez
- **Repetição focada**: Quantidade > variedade (no início)
- **Automatização**: Libera memória de trabalho para coisas complexas

### Benefícios científicos
- ✅ **Memória muscular**: Procedimento vira "automático"
- ✅ **Velocidade aumenta**: 10ª vez é 5-10x mais rápida que 1ª
- ✅ **Reduz erros**: Repetição elimina bugs recorrentes
- ✅ **Confiança**: "Já fiz isso 10x, sei fazer"

---

## 🧠 Quando Usar Drill?

### ✅ USE para PROCEDIMENTOS (30% do aprendizado)

| Tipo de Procedimento | Exemplo | Por quê Drill funciona |
|----------------------|---------|------------------------|
| **Implementar algoritmo** | Binary search do zero | Precisa automatizar passos |
| **Escrever sintaxe** | Criar struct em Rust 10x | Velocidade sem consultar |
| **Debug pattern** | Ler erro de borrowchecker | Reconhecer padrão rápido |
| **Análise de código** | Identificar Big O de loop | Skill repetitivo |
| **Refatoração** | Extrair função 10x | Automatizar movimento |
| **Comandos** | Git workflow 10x | Muscle memory |

### ❌ NÃO USE para CONCEITOS e FATOS

| Tipo | Por quê NÃO Drill | Use isto em vez |
|------|------------------|-----------------|
| **Conceitos** | "Entender ownership" não é procedimento | #feynman |
| **Fatos** | "Decorar símbolos" não precisa repetição física | Flashcards (SRS) |
| **Projetos completos** | Muito complexo para drill isolado | #directness |
| **Criatividade** | Design de arquitetura não é repetitivo | #experimentation |

---

## 🛠️ Como Usar (Passo a Passo)

### Método Completo (30-60 min)

#### Passo 1: Identificar Skill a Automatizar (5 min)
```bash
# Pergunte-se:
# 1. Que procedimento eu fiz hoje que foi LENTO ou com ERROS?
# 2. Que skill vou usar MUITAS vezes no futuro?
# 3. O que consigo fazer em <10 min?

# Exemplos:
# - Implementar binary search
# - Criar HashMap em Rust
# - Analisar complexidade de loops
# - Resolver merge de git conflicts
```

**Como escolher**:
- ✅ Procedimento que você vai usar 10+ vezes
- ✅ Algo que tem "jeito certo" de fazer (não criativo)
- ✅ Pode ser feito em <10 min por repetição
- ❌ Conceito abstrato (use #feynman)
- ❌ Projeto grande (use #directness)

---

#### Passo 2: Fazer 1ª Vez COM Consulta (10-15 min)
```bash
# Objetivo: Aprender o procedimento corretamente

# 1. Siga tutorial/exemplo/docs
# 2. Anote CADA passo
# 3. Marque partes difíceis
```

**Template de checklist**:
```markdown
# Drill: Binary Search

## Checklist de Passos
- [ ] 1. Criar variáveis left = 0, right = arr.len() - 1
- [ ] 2. Loop while left <= right
- [ ] 3. Calcular mid = left + (right - left) / 2
- [ ] 4. Se arr[mid] == target, retorna mid
- [ ] 5. Se arr[mid] < target, left = mid + 1
- [ ] 6. Se arr[mid] > target, right = mid - 1
- [ ] 7. Se não achou, retorna -1 (ou None)
```

**Tempo da 1ª vez**: ~10-15 min (normal ser lento!)

---

#### Passo 3: Repetir 5-10x SEM Consulta (30-45 min)
```bash
# Regras:
# 1. SEM olhar código anterior
# 2. SEM consultar docs
# 3. Se travou, anota e continua
# 4. Cada repetição é do ZERO (apaga código anterior)

# Cronometrar cada tentativa:
# Tentativa 1: ___ min ___ seg
# Tentativa 2: ___ min ___ seg
# ...
# Tentativa 10: ___ min ___ seg
```

**Progressão esperada**:
```
Tentativa 1 (com consulta): 15 min
Tentativa 2: 12 min (20% mais rápido)
Tentativa 3: 9 min
Tentativa 4: 7 min
Tentativa 5: 5 min (3x mais rápido!)
...
Tentativa 10: 3 min (5x mais rápido!)
```

**Quando parar**: Quando conseguir fazer em <50% do tempo inicial, sem erros.

---

#### Passo 4: Identificar Padrões de Erro (5 min)
```bash
# Após 5-10 repetições, revise:
# 1. Que erro você cometeu MAIS DE 1 vez?
# 2. Onde você travou SEMPRE?
# 3. Que parte é mais difícil?
```

**Template de análise**:
```markdown
## Erros Recorrentes
- 🚩 Erro 1: Esqueci de calcular mid = left + (right - left) / 2
  - Aconteceu: 4/10 vezes
  - Motivo: Escrevi mid = (left + right) / 2 (pode overflow!)
  - Correção: Criar flashcard da fórmula correta

- 🚩 Erro 2: Condição do while errada (left < right)
  - Aconteceu: 3/10 vezes
  - Motivo: Confundi com outro algoritmo
  - Correção: Lembrar que precisa <= para incluir último elemento
```

**Ação**: Criar flashcards dos erros para não repetir.

---

#### Passo 5: Fazer 1 Vez Perfeita e Documentar (10 min)
```bash
# Faça a última vez:
# 1. Sem erros
# 2. Rápido (<5 min)
# 3. Com comentários explicando cada passo

# Salve em:
# projects/drills/binary-search-final.rs
```

**Template de documentação**:
```rust
// Drill: Binary Search
// Tentativas: 10
// Tempo final: 3 min
// Taxa de erro: 0/10

fn binary_search(arr: &[i32], target: i32) -> Option<usize> {
    let mut left = 0;
    let mut right = arr.len() - 1;
    
    while left <= right {
        // Evitar overflow: left + (right - left) / 2
        let mid = left + (right - left) / 2;
        
        if arr[mid] == target {
            return Some(mid);
        } else if arr[mid] < target {
            left = mid + 1;
        } else {
            right = mid - 1;
        }
    }
    
    None
}
```

---

### Método Rápido via @tutor (20-30 min)

```bash
# Durante sessão de estudo
make study

# Escolha: 2. Drill
> @tutor #drill binary search

# @tutor vai:
# 1. Pedir para implementar do zero
# 2. Cronometrar cada tentativa
# 3. Dar feedback instantâneo (erros/bugs)
# 4. Sugerir onde melhorar
# 5. Parar quando você atingir meta (ex: <5 min, 0 erros)
```

---

## 🎯 Framework 3D: Onde Drill se Encaixa?

### Lembrando o Framework 3D (do @meta)

| Dimensão | % Tempo | Método | Drill? |
|----------|---------|--------|--------|
| **Conceitos** | 40% | #feynman, #intuition | ❌ Não |
| **Fatos** | 30% | Flashcards (SRS) | ❌ Não |
| **Procedimentos** | 30% | **#drill**, #directness | ✅ **SIM** |

### Exemplo: Aprender Binary Search

#### Sequência correta:
```bash
# 1. Entender CONCEITO (40% do tempo)
@tutor #feynman "Como binary search funciona?"
# → Você explica a lógica de divisão pela metade

# 2. Memorizar FATOS (20% do tempo)
# Criar flashcards:
# - "Binary search é O(?)?" → "O(log n)"
# - "Pré-requisito?" → "Array ordenado"

# 3. Automatizar PROCEDIMENTO (40% do tempo)
@tutor #drill binary search
# → Implementar 10x até fazer em <5 min
```

**Total**: ~1h para dominar binary search completamente.

---

## 🔗 Técnicas Relacionadas

### Técnicas que Implementam este Princípio

| Técnica | Descrição | Quando usar |
|---------|-----------|-------------|
| [drill.md](../tecnicas/drill.md) | Prática deliberada para automatizar procedimentos | Para Principle #4 - Drill |

### Técnicas Complementares

- [feynman.md](../tecnicas/feynman.md) - Use antes de drillar para garantir que entendeu o conceito
- [flashcards.md](../tecnicas/flashcards.md) - Use para memorizar fatos/sintaxe que surgem durante drill
- [feedback-loop.md](../tecnicas/feedback-loop.md) - Use para identificar erros recorrentes nos drills
- [quiz.md](../tecnicas/quiz.md) - Use após drill para testar se ainda lembra sem consultar

---

## ✍️ Boas Práticas: Como Fazer Drill Efetivo

### ✅ BOM: Drill Isolado (1 skill por vez)

```bash
# ✅ CERTO: Foco em 1 skill
@tutor #drill "implementar binary search"
# 10x só binary search → Automatiza

# ❌ ERRADO: Muitos skills ao mesmo tempo
@tutor #drill "implementar binary search, merge sort e quick sort"
# Sobrecarga cognitiva → Não automatiza nenhum
```

**Regra**: 1 drill = 1 procedimento específico.

---

### ✅ BOM: Repetir do ZERO cada vez

```bash
# ✅ CERTO: Apaga código e começa do zero
# Tentativa 1: Escreve binary search
# [apaga tudo]
# Tentativa 2: Escreve binary search do zero
# [apaga tudo]
# Tentativa 3: ...

# ❌ ERRADO: Edita código anterior
# Tentativa 1: Escreve binary search
# Tentativa 2: Copia código anterior e "ajusta"
# → Você não treinou CRIAR do zero!
```

**Por quê**: Você precisa treinar o procedimento COMPLETO, não só ajustes.

---

### ✅ BOM: Cronometrar TODAS as tentativas

```markdown
## Drill: Criar HashMap em Rust

| Tentativa | Tempo | Erros | Observação |
|-----------|-------|-------|------------|
| 1 | 8m 30s | 2 | Esqueci `use std::collections::HashMap` |
| 2 | 6m 15s | 1 | Erro em `.insert()` |
| 3 | 5m 00s | 0 | ✅ Primeira vez sem erro! |
| 4 | 4m 10s | 0 | Mais fluido |
| 5 | 3m 20s | 0 | ✅ Meta atingida (<4 min) |
```

**Por quê**: Cronômetro cria senso de urgência e mede progresso.

---

### ❌ RUIM: Drill sem pressão de tempo

```bash
# ❌ NÃO FAÇA:
# Tentativa 1: "Vou fazer com calma, sem pressa"
# → Leva 20 min, não cria senso de automatização

# ✅ FAÇA:
# Tentativa 1: "Meta: <10 min" (cronômetro ligado)
# → Pressão força você a lembrar, não consultar
```

**Regra**: Sempre defina meta de tempo.

---

### ✅ BOM: Documentar erros recorrentes

```markdown
## Drill: Implementar Linked List

### Erros Recorrentes
1. **Erro de Borrow** (6/10 tentativas)
   ```rust
   // ❌ ERRO
   let node = list.head;
   list.head = node.next;
   
   // ✅ CORRETO
   if let Some(node) = list.head.take() {
       list.head = node.next;
   }
   ```
   → Criar flashcard: "Como mover ownership de Option?"

2. **Esqueci match em Option** (4/10 tentativas)
   ```rust
   // ❌ ERRO: Assumiu que head existe
   let value = list.head.value;
   
   // ✅ CORRETO: Verifica se existe
   if let Some(node) = &list.head {
       let value = node.value;
   }
   ```
   → Padrão: SEMPRE usar `if let` ou `match` com Option
```

**Por quê**: Erros recorrentes = gaps que flashcards podem resolver.

---

### ✅ BOM: Aumentar dificuldade gradualmente

```bash
# Progressão de drill: Binary Search

# Nível 1: Implementar com array simples (1-10 tentativas)
binary_search(&[1, 2, 3, 4, 5], 3)

# Nível 2: Implementar com edge cases (11-15 tentativas)
binary_search(&[], 3)           // Array vazio
binary_search(&[1], 1)          // 1 elemento
binary_search(&[1, 2], 3)       // Target não existe

# Nível 3: Implementar genérico (16-20 tentativas)
binary_search<T: Ord>(arr: &[T], target: T) -> Option<usize>

# Nível 4: Implementar com recursão (21-25 tentativas)
binary_search_recursive(...)
```

**Regra**: Domine nível 1 antes de avançar para nível 2.

---

## 🔄 Workflow Típico

### Durante Sessão de Estudo (Drill Focado)

```
10:00 - Identifica skill a drilllar (5 min)
10:05 - Faz 1ª vez COM consulta (10 min)
10:15 - Tentativa 2: SEM consulta (8 min)
10:23 - Tentativa 3: SEM consulta (6 min)
10:29 - Tentativa 4: SEM consulta (5 min)
10:34 - Tentativa 5: SEM consulta (4 min)
10:38 - Tentativa 6: SEM consulta (3 min)
10:41 - Análise de erros (5 min)
10:46 - Cria flashcards de erros recorrentes (5 min)
10:51 - Versão final documentada (9 min)
11:00 - Sessão termina
```

**Total**: 6 repetições em 1 hora (suficiente para muitos skills)

---

### Quando Fazer Drill na Semana

| Dia da Semana | Tipo de Atividade | Drill? |
|---------------|-------------------|--------|
| **Segunda** | Aprender conceitos novos | Não (use #feynman) |
| **Terça** | Praticar procedimentos | ✅ 1 drill (30-40 min) |
| **Quarta** | Misto | ✅ 1 drill (20-30 min) |
| **Quinta** | Projeto | Não (usa skills já drilllados) |
| **Sexta** | Projeto | Não |
| **Sábado** | Revisão | ✅ Re-drill skills fracos (20 min) |

**Total semanal**: 2-3 drills focados

---

### Integração com Outros Métodos

```bash
# Ordem correta para dominar skill:

# 1. Entender CONCEITO
@tutor #feynman "Como merge sort funciona?"

# 2. DRILL procedimento 5-10x
@tutor #drill "implementar merge sort"

# 3. Aplicar em projeto real
@tutor #directness "criar sorting visualizer"
# → Usa merge sort que você drilllou
```

**Por quê essa ordem**:
- Feynman → Você SABE o que fazer
- Drill → Você FAZ rápido e sem erros
- Directness → Você APLICA em contexto real

---

## 📊 Métricas: Como Saber se Funcionou?

### Critérios de Sucesso ✅

| Métrica | Verde ✅ | Amarelo ⚠️ | Vermelho 🔴 |
|---------|----------|------------|-------------|
| **Velocidade** | <50% do tempo inicial | 50-70% | >70% |
| **Taxa de erro** | 0 erros | 1-2 erros | 3+ erros |
| **Sem consulta** | 100% sem consultar | Consultou 1-2x | Consultou 3+x |
| **Repetições** | 5-10 tentativas | 10-15 | >15 |
| **Confiança** | "Sei fazer dormindo" | "Acho que sei" | "Ainda inseguro" |

### Exemplo de Progressão Ideal

```markdown
## Drill: Binary Search

| Tentativa | Tempo | Erros | Status |
|-----------|-------|-------|--------|
| 1 (consulta) | 12m | 0 | Aprendendo |
| 2 | 10m | 2 | 🔴 Erro em condições |
| 3 | 8m | 1 | ⚠️ Esqueci fórmula mid |
| 4 | 6m | 1 | ⚠️ Off-by-one |
| 5 | 5m | 0 | ✅ Primeira sem erro! |
| 6 | 4m | 0 | ✅ |
| 7 | 3m 30s | 0 | ✅ |
| 8 | 3m | 0 | ✅ Meta atingida! |

**Resultado**: 8 tentativas, 3 min (75% redução), 0 erros
```

**Quando parar**: Quando atingir meta (ex: <5 min, 0 erros) por 3 vezes seguidas.

---

### Red Flags (Sinais de problema)

| Sinal | Problema | Solução |
|-------|----------|---------|
| 🚩 Não melhora após 10 tentativas | Não entendeu conceito | Volte para #feynman |
| 🚩 Sempre o mesmo erro | Gap específico | Crie flashcard desse ponto |
| 🚩 Consulta docs toda vez | Não memorizou sintaxe | Crie flashcards de sintaxe |
| 🚩 Muito lento (>10 min por vez) | Procedimento muito complexo | Quebre em sub-drills |
| 🚩 Entediante/frustrante | Drill muito repetitivo | Adicione variações |

---

## 🎓 Resumo: Regras de Ouro

### ✅ 5 Regras para Drill Efetivo

1. **Isole 1 skill por vez**
   - ✅ Drill só binary search
   - ❌ Não misture vários algoritmos

2. **Repita do ZERO cada vez**
   - ✅ Apaga código e começa de novo
   - ❌ Não copie código anterior

3. **Cronometre TODAS as tentativas**
   - ✅ Meta: <50% do tempo inicial
   - ❌ Não faça "com calma"

4. **Documente erros recorrentes**
   - ✅ Crie flashcards de erros
   - ❌ Não ignore padrões de erro

5. **Pare quando automatizar**
   - ✅ <5 min, 0 erros, 3x seguidas
   - ❌ Não continue infinitamente

---

## 📝 Exemplos Completos

### Exemplo 1: Drill de Binary Search

#### Contexto
Você estudou binary search (Semana 35-36 de M4) e precisa automatizar.

#### Passo 1: Primeira vez COM consulta
```rust
// Tentativa 1: 12 minutos (seguindo tutorial)

fn binary_search(arr: &[i32], target: i32) -> Option<usize> {
    let mut left = 0;
    let mut right = arr.len() - 1;
    
    while left <= right {
        let mid = left + (right - left) / 2;
        
        if arr[mid] == target {
            return Some(mid);
        } else if arr[mid] < target {
            left = mid + 1;
        } else {
            right = mid - 1;
        }
    }
    
    None
}
```

#### Passo 2: Repetições 2-8 SEM consulta
```markdown
| Tentativa | Tempo | Erros | Observação |
|-----------|-------|-------|------------|
| 2 | 10m | 2 | Esqueci fórmula de mid, condição do while |
| 3 | 8m | 1 | Ainda erro em mid (fiz (left+right)/2) |
| 4 | 7m | 1 | Off-by-one (right = arr.len() sem -1) |
| 5 | 5m 30s | 0 | ✅ Primeira sem erro! |
| 6 | 4m 20s | 0 | Mais fluido |
| 7 | 3m 40s | 0 | Quase automático |
| 8 | 3m 10s | 0 | ✅ Meta atingida (<5 min) |
```

#### Passo 3: Análise de erros
```markdown
## Erros Recorrentes
1. **Fórmula de mid** (3/8 tentativas)
   - Erro: `mid = (left + right) / 2` (pode overflow!)
   - Correto: `mid = left + (right - left) / 2`
   - Ação: Flashcard "Fórmula de mid em binary search?"

2. **Condição do while** (2/8 tentativas)
   - Erro: `while left < right` (perde último elemento)
   - Correto: `while left <= right`
   - Ação: Flashcard "Condição de loop em binary search?"
```

#### Resultado
✅ **Automatizado!**
- Tempo: 3m 10s (74% redução)
- Taxa de erro: 0/8 nas últimas 4 tentativas
- Confiança: Alta

**Próximo passo**: Usar binary search em projeto (#directness)

---

### Exemplo 2: Drill de Criar HashMap em Rust

#### Contexto
Você vai usar HashMap muito (Semana 23-24 de M3), precisa automatizar sintaxe.

#### Passo 1: Checklist de passos
```markdown
## Drill: Criar e usar HashMap

### Checklist
- [ ] 1. `use std::collections::HashMap;`
- [ ] 2. `let mut map = HashMap::new();`
- [ ] 3. `map.insert(key, value);`
- [ ] 4. `map.get(&key)` retorna `Option<&V>`
- [ ] 5. `map.contains_key(&key)` retorna bool
- [ ] 6. `map.remove(&key)` retorna `Option<V>`
```

#### Passo 2: Repetições 1-6
```markdown
| Tentativa | Tempo | Erros | Observação |
|-----------|-------|-------|------------|
| 1 | 8m | 0 | Com consulta (docs) |
| 2 | 6m 30s | 2 | Esqueci `use`, erro em `.get()` |
| 3 | 5m | 1 | Esqueci `&` em `.get(&key)` |
| 4 | 4m 10s | 0 | ✅ Primeira sem erro! |
| 5 | 3m 20s | 0 | Automático |
| 6 | 2m 50s | 0 | ✅ Meta (<4 min) |
```

#### Passo 3: Código final
```rust
// Drill: HashMap básico
// Tentativas: 6
// Tempo final: 2m 50s

use std::collections::HashMap;

fn main() {
    let mut scores = HashMap::new();
    
    scores.insert("Blue", 10);
    scores.insert("Red", 50);
    
    // get retorna Option<&V>
    if let Some(&score) = scores.get("Blue") {
        println!("Blue: {}", score);
    }
    
    // contains_key
    if scores.contains_key("Blue") {
        println!("Blue exists!");
    }
    
    // remove retorna Option<V>
    let removed = scores.remove("Blue");
}
```

#### Resultado
✅ **Automatizado!**
- Tempo: 2m 50s (65% redução)
- Taxa de erro: 0/6 nas últimas 3 tentativas
- Flashcards criados: 2 (uso de `&` em `.get()`, retorno de `Option`)

---

## 🔗 Links Relacionados

- [feynman.md](../tecnicas/feynman.md) - Entender conceitos
- [flashcards.md](../tecnicas/flashcards.md) - Memorizar fatos
- [directness.md](../tecnicas/directness.md) - Aplicar em projetos
- [Master Learning Map](../../shared/master-learning-map.md) - Visão global

---

## 💡 Dica Final

**Drill é como academia: Repetições constroem memória muscular.**

Se você:
- ❌ Faz só 1-2 vezes (não automatiza)
- ❌ Faz "com calma" sem cronômetro (não cria pressão)
- ❌ Edita código anterior (não treina do zero)

**Então você NÃO vai automatizar.** Drill exige:
- ✅ Repetição (5-10x mínimo)
- ✅ Pressão de tempo (cronômetro)
- ✅ Do zero cada vez (sem copiar)

**"We are what we repeatedly do. Excellence, then, is not an act, but a habit."** - Aristóteles

---

**Criado por**: @meta  
**Data**: 2026-02-08  
**Versão**: 1.0
