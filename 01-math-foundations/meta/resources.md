# 📚 Recursos: M1 - Math Foundations

> **Lista curada de recursos tier 1/2/3**. Foco em 80/20: usar Tier 1 primeiro!

---

## 🎯 Filosofia de Recursos

### Princípios
1. **Menos é mais**: 3 recursos excelentes > 20 medianos
2. **Prático > Teórico**: Aplicação em CS > matemática pura
3. **Gratuito primeiro**: Só pagar se realmente agregar valor
4. **Atualizado**: Preferir recursos dos últimos 5 anos

### Como usar esta lista
- **Comece SEMPRE pelo Tier 1**
- Vá para Tier 2 só se tiver dúvidas específicas
- Tier 3 é para depois de dominar o módulo

---

## 🥇 Tier 1 - Essenciais (COMECE AQUI)

### 1. Khan Academy - Discrete Mathematics
- **Link**: https://www.khanacademy.org/computing/computer-science
- **Tipo**: Curso online interativo
- **Tempo**: 10-15h (selecionar seções específicas)
- **Custo**: **Grátis**
- **Idioma**: Inglês (com legendas)

**Por quê usar**:
- ✅ Explicações visuais excelentes
- ✅ Exercícios interativos com feedback imediato
- ✅ Progressão gradual (básico → avançado)
- ✅ Foco em aplicação, não teoria pura

**Seções específicas para M1**:
- Logic and if statements
- Sets and set operations
- Functions
- Logarithms
- Summation and induction
- Combinatorics basics

**Como usar**:
1. Assista vídeo da seção
2. Faça exercícios até dominar (80%+ correto)
3. Não pule exercícios!

---

### 2. MIT 6.042J - Mathematics for Computer Science
- **Link**: https://ocw.mit.edu/courses/6-042j-mathematics-for-computer-science-fall-2010/
- **Tipo**: Video lectures + notas
- **Tempo**: 5-8h (Lectures 1-5)
- **Custo**: **Grátis**
- **Idioma**: Inglês

**Por quê usar**:
- ✅ Foco direto em CS (não matemática pura)
- ✅ Exemplos de algoritmos reais
- ✅ Professores excelentes (explicam "por quê")
- ✅ Notas de aula bem escritas

**Lectures recomendadas**:
- Lecture 1: Propositional Logic (Semana 1)
- Lecture 2: Sets and Functions (Semana 2)
- Lecture 3: Number Theory (Semana 3-4)
- Lecture 4: Induction (Semana 4)
- Lecture 5: Combinatorics (Semana 5)

**Como usar**:
1. Assista lecture em 1.5x
2. Leia notas de aula para fixar
3. Faça problem set (se tiver tempo)

**⚠️ Atenção**: Curso completo é longo (40h+). Use APENAS lectures 1-5!

---

### 3. Exercícios Aplicados (Criar seus próprios)
- **Tipo**: Prática hands-on
- **Tempo**: 5-10h distribuídas
- **Custo**: **Grátis**

**O que fazer**:
- Pegar algoritmos simples e analisar matematicamente
- Traduzir loops → somatórios
- Escrever provas por indução de funções recursivas
- Criar flashcards de símbolos e fórmulas

**Exemplos**:
```python
# Exemplo 1: Analisar este código
for i in range(n):
    for j in range(i, n):
        print(i, j)

# Pergunta: Quantas vezes print() executa?
# Resposta: ∑ᵢ₌₀ⁿ⁻¹ (n - i) = ?
```

**Como usar**:
- Combine com @tutor usando `#drill [conceito]`
- Faça 5-10 exercícios por tópico
- Não copie respostas, tente primeiro!

---

## 🥈 Tier 2 - Aprofundamento (se precisar)

### 4. Wikipedia - Mathematical Symbols
- **Link**: https://en.wikipedia.org/wiki/List_of_mathematical_symbols
- **Quando usar**: Esqueceu o que significa um símbolo
- **Tempo**: Consulta rápida (<5min)

---

### 5. 3Blue1Brown - Logarithms (YouTube)
- **Link**: https://www.youtube.com/c/3blue1brown (buscar "logarithm")
- **Quando usar**: Logaritmos não fizeram sentido
- **Tempo**: 10-20 min
- **Por quê**: Animações visuais incríveis

---

### 6. Rosen - Discrete Mathematics (Livro)
- **Tipo**: Livro texto
- **Capítulos**: 1-3 (Logic, Sets, Functions)
- **Quando usar**: Quer mais exercícios além do Khan Academy
- **Custo**: ~50€ (ou buscar PDF acadêmico)

**⚠️ Atenção**: Livro é DENSO (1000+ páginas). Use como referência, não leia capa a capa!

---

### 7. Coursera - Discrete Mathematics (OPCIONAL)
- **Link**: Coursera (buscar "Discrete Mathematics")
- **Quando usar**: Prefere formato de curso estruturado
- **Custo**: Grátis (auditoria) ou pago (certificado)
- **⚠️ Problema**: Geralmente muito longo (10+ semanas)

---

## 🥉 Tier 3 - Avançado (PULAR por enquanto)

### 8. Concrete Mathematics - Knuth, Patashnik, Graham
- **Tipo**: Livro texto avançado
- **Por quê pular**: Muito denso, foco em matemática pura
- **Quando estudar**: Após dominar algoritmos (M4) e quiser aprofundar

---

### 9. Art of Computer Programming - Knuth (Vol 1)
- **Por quê pular**: Referência enciclopédica, não didático
- **Quando estudar**: Para consulta específica, não leitura linear

---

### 10. Cursos formais de Matemática Discreta
- **Por quê pular**: Muito teórico, foca em provas formais
- **Quando estudar**: Se seguir carreira acadêmica em CS teórico

---

## ⚠️ Recursos a EVITAR

### 1. ❌ Cursos de Cálculo
**Por quê**: Não é necessário para fundamentos de CS. Cálculo é útil para ML/IA, mas não para algoritmos básicos.

### 2. ❌ Livros de Matemática Pura
**Por quê**: Foco em provas formais, não aplicação. Exemplo: "Pure Mathematics" de Hardy.

### 3. ❌ Tutoriais superficiais ("Math for Programmers in 5 minutes")
**Por quê**: Muito raso, não constrói compreensão real.

### 4. ❌ Cursos muito longos (40+ horas)
**Por quê**: Você tem 25h para M1. Foco em essencial (80/20).

---

## 📊 Plano de Uso Recomendado

### Semana 1-2: Notação e Lógica
| Recurso | Tempo |
|---------|-------|
| Khan Academy - Logic | 3h |
| MIT 6.042J - Lecture 1 | 1.5h |
| Exercícios próprios | 1h |

### Semana 3: Logaritmos
| Recurso | Tempo |
|---------|-------|
| Khan Academy - Logarithms | 2h |
| 3Blue1Brown (se necessário) | 15min |
| MIT 6.042J - Lecture 3 | 1.5h |
| Exercícios | 1.5h |

### Semana 4: Indução
| Recurso | Tempo |
|---------|-------|
| MIT 6.042J - Lecture 4 | 1.5h |
| Khan Academy - Induction | 2h |
| Exercícios (provas) | 1.5h |

### Semana 5: Combinatória
| Recurso | Tempo |
|---------|-------|
| Khan Academy - Combinatorics | 2h |
| MIT 6.042J - Lecture 5 | 1.5h |
| Exercícios aplicados | 1.5h |

**Total**: ~23h (dentro do budget de 25h)

---

## 🔗 Links Rápidos

### Tier 1
- [Khan Academy - Computer Science](https://www.khanacademy.org/computing/computer-science)
- [MIT 6.042J](https://ocw.mit.edu/courses/6-042j-mathematics-for-computer-science-fall-2010/)

### Tier 2
- [Wikipedia - Math Symbols](https://en.wikipedia.org/wiki/List_of_mathematical_symbols)
- [3Blue1Brown - YouTube](https://www.youtube.com/c/3blue1brown)

---

## 💡 Dicas de Uso

### Como maximizar aprendizado:
1. **Assista em 1.5x**: Economiza tempo sem perder compreensão
2. **Pause e tente**: Quando vídeo mostra problema, pause e tente resolver
3. **Faça exercícios**: Não pule! Exercícios solidificam conceitos
4. **Crie flashcards**: Símbolos e fórmulas vão para SRS
5. **Conecte com código**: Sempre pergunte "onde vou usar isso?"

### Sinais de que recurso não está funcionando:
- 🚩 Assistindo passivamente sem tentar exercícios
- 🚩 Não entendendo após 2 tentativas
- 🚩 Recurso é muito teórico (sem exemplos de código)

**Se isso acontecer**: Troque de recurso ou peça ajuda ao @tutor.

---

**Última atualização**: 2026-02-08
