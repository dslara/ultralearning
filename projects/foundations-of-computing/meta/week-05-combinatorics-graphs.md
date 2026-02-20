# 📅 Semana 5: Combinatória, Probabilidade & Grafos

## 🎯 Objetivo
Ao final desta semana, você será capaz de:
- Contar permutações e combinações
- Entender quando usar cada técnica de contagem
- Calcular probabilidades básicas e condicionais
- Entender a estrutura matemática de grafos
- Conectar combinatória e probabilidade com análise de algoritmos

---

## ❓ Perguntas Guia

### Contagem Básica
1. O que é o princípio da multiplicação?
   - Se tenho m escolhas e depois n escolhas, quantas combinações?

2. O que é o princípio da adição?
   - Se posso fazer A de m formas OU B de n formas, quantas formas total?

3. O que é fatorial (n!)?
   - Calcule: 3!, 4!, 5!, 10!
   - Por que 0! = 1?

### Permutações
4. O que é uma permutação?
   - Quantas formas de ordenar n elementos?

5. O que é permutação com repetição?
   - Quantas "palavras" com as letras de "BANANA"?

6. O que é permutação de k elementos de n?
   - P(n,k) = ?

### Combinações
7. O que é uma combinação?
   - Qual a diferença para permutação?

8. O que é C(n,k) ou "n choose k"?
   - C(n,k) = ?
   - Por que C(n,k) = C(n, n-k)?

9. O que é o triângulo de Pascal?
   - Como se relaciona com combinações?

### Probabilidade Básica
10. O que é probabilidade de um evento?
    - P(A) = casos favoráveis / casos possíveis
    - Por que P(A) está entre 0 e 1?

11. O que é o espaço amostral?
    - Qual o espaço amostral de jogar 2 dados?

12. O que é probabilidade condicional P(A|B)?
    - Como calcular P(A|B)?
    - Qual a relação com P(A ∩ B)?

13. O que significa eventos independentes?
    - Se A e B são independentes, P(A ∩ B) = ?
    - Jogar uma moeda 2 vezes: os eventos são independentes?

14. O que é valor esperado (expected value)?
    - E[X] = Σ x·P(x)
    - Qual o valor esperado de um dado de 6 faces?

### Conexão com CS
15. Por que gerar todas permutações é O(n!)?

16. Por que gerar todos subconjuntos é O(2ⁿ)?

17. Quantos subconjuntos tem um conjunto de n elementos?

18. Quantas formas de escolher senha de 4 dígitos? E se não repetir?

19. Por que randomized algorithms usam probabilidade?
    - Quicksort: qual a probabilidade de escolher o pior pivot?
    - Hash tables: qual a probabilidade de colisão?

20. O que é análise probabilística de algoritmos?
    - Caso médio vs pior caso

### Grafos (Introdução)
21. O que é um grafo matematicamente?
    - Vértices (nós)
    - Arestas (conexões)

22. O que é grafo direcionado vs não-direcionado?

23. O que é um caminho? Um ciclo?

24. O que significa grafo conexo?

25. Como representar grafos?
    - Matriz de adjacência
    - Lista de adjacência

26. Quantas arestas pode ter um grafo com n vértices?
    - Grafo simples não-direcionado
    - Grafo direcionado

---

## 📚 Recursos

| Recurso | Seção |
|---------|-------|
| Khan Academy | "Counting, permutations, combinations" |
| Khan Academy | "Probability" (básico) |
| Rosen (livro) | Cap 6 (Counting), Cap 7 (Probability), Cap 10 (Graphs) |
| MIT OCW 6.042 | Lectures sobre Counting, Probability e Graph Theory |
| Visualgo | Graph visualizations |

---

## 📋 Entregas

### Dia 1: Contagem Básica
- [ ] Responder perguntas 1-3
- [ ] Resolver 10 problemas de contagem simples
- [ ] Criar tabela de fatoriais (1! até 10!)

### Dia 2: Permutações & Combinações
- [ ] Responder perguntas 4-9
- [ ] Calcular 5 permutações diferentes
- [ ] Calcular 5 combinações diferentes
- [ ] Construir triângulo de Pascal até linha 6

### Dia 3: Probabilidade
- [ ] Responder perguntas 10-14
- [ ] Resolver 5 problemas de probabilidade simples
- [ ] Calcular probabilidades com 2 dados
- [ ] Problema: qual a probabilidade de senha aleatória?

### Dia 4: Conexão com CS
- [ ] Responder perguntas 15-20
- [ ] Explicar por que força bruta é exponencial
- [ ] Calcular complexidade de 3 algoritmos de força bruta
- [ ] Analisar probabilidade em quicksort

### Dia 5: Grafos
- [ ] Responder perguntas 21-26
- [ ] Desenhar 5 grafos diferentes
- [ ] Representar cada grafo como matriz E lista de adjacência
- [ ] Criar cards SRS

---

## ✅ Critérios de Sucesso

### Você dominou se consegue:
1. [ ] Decidir quando usar permutação vs combinação
2. [ ] Calcular P(n,k) e C(n,k) sem fórmula decorada
3. [ ] Calcular probabilidades simples e condicionais
4. [ ] Explicar por que existem 2ⁿ subconjuntos
5. [ ] Conectar contagem/probabilidade com complexidade de algoritmos
6. [ ] Representar grafos de duas formas

### Teste Prático

**Contagem:**
- Quantas formas de ordenar 5 livros na estante?
- Quantas formas de escolher 3 livros de 10?
- Quantos subconjuntos de {a, b, c, d}?
- Quantas senhas de 4 letras (A-Z) sem repetição?

**Probabilidade:**
- Qual a probabilidade de tirar 2 números pares em 2 dados?
- Se P(A) = 0.3 e P(B) = 0.4, e são independentes, P(A ∩ B)?
- Qual o valor esperado de um dado de 6 faces?

**Grafos:**
- Desenhe um grafo com 4 vértices e 5 arestas
- Represente como matriz de adjacência
- Represente como lista de adjacência
- É conexo? Tem ciclos?

---

## 🔗 Conexão com CS

| Matemática | Programação |
|------------|-------------|
| Permutações | Ordenações possíveis → O(n!) |
| Subconjuntos | Powerset → O(2ⁿ) |
| C(n,k) | Escolhas → análise de algoritmos |
| Probabilidade | Análise de caso médio, randomized algorithms |
| Valor esperado | Complexidade esperada (ex: quicksort) |
| Grafo | Estrutura de dados fundamental |
| Adjacência | Representação em memória |
| Caminho | BFS, DFS, Dijkstra |

### Por que importa para algoritmos
```
Força bruta em permutações: O(n!)
Força bruta em subconjuntos: O(2ⁿ)
Busca em grafo: O(V + E)
Quicksort (caso médio): O(n log n) - análise probabilística!
Hash table (caso médio): O(1) - depende de probabilidade de colisão
```

---

## 🔄 Reflexão

### Quando usar permutação vs combinação
_Escreva sua regra mental_

### Probabilidade: onde vou usar
_Escreva exemplos de algoritmos que usam probabilidade_

### Grafos: onde vou usar
_Escreva_

### Confiança (1-5)
- [ ] Permutações: _/5
- [ ] Combinações: _/5
- [ ] Probabilidade: _/5
- [ ] Grafos: _/5

---

## ⏭️ Fase 1 Começa!

**Semana 7-8**: Ownership & Borrowing (Rust)
- Agora você tem base matemática para:
  - Ler notação de complexidade
  - Entender análise de algoritmos
  - Trabalhar com grafos
  - Pensar sobre estruturas de dados
  - Analisar casos médios com probabilidade

🎉 **Parabéns por completar a Fase 0!**
