# 📖 Como Usar o Protótipo (M1 + Shared)

> **Objetivo**: Guia rápido para testar a estrutura modular criada na Fase 0

---

## 🚀 Quick Start

### 1. Explorar a Estrutura Global
```bash
cd /home/dani/Work/dslara/ultralearning

# Ver visão estratégica (88 semanas)
cat shared/master-learning-map.md

# Ver estrutura do protótipo
ls -la 01-math-foundations/
ls -la shared/
```

---

### 2. Entrar no Módulo M1
```bash
# Ir para M1
cd 01-math-foundations

# Ler landing page
cat README.md
```

**O que observar no README**:
- ✅ Seção **🔗 Conexões com Outros Módulos** (nova!)
- ✅ Seção **🔄 Retrieval de Módulos Anteriores** (nova!)
- ✅ Estrutura clara: objetivos, timeline, recursos

---

### 3. Ver Plano Tático
```bash
# Plano detalhado do módulo (5 semanas)
cat meta/learning-map.md
```

**O que observar**:
- ✅ Framework 3D (Conceitos, Fatos, Procedimentos)
- ✅ Roadmap semanal detalhado
- ✅ Benchmark final
- ✅ Link de volta para master-map

---

### 4. Testar Sistema de Flashcards

#### Adicionar novos cards
```bash
# Editar arquivo
nano knowledge/flashcards-source.csv

# Adicione uma linha:
"O que é análise amortizada?","Análise considerando sequência de operações","M1-math",medium,"","",1
```

#### Sincronizar ao master-deck
```bash
# Copiar para estrutura shared
cp knowledge/flashcards-source.csv ../shared/flashcards/by-module/M1-math.csv

# Sincronizar
cd ../shared/flashcards
bash sync-script.sh

# Verificar resultado
head master-deck.csv
```

**O que observar**:
- ✅ Script cria backup automaticamente
- ✅ Cards aparecem no master-deck.csv
- ✅ Sem duplicatas

---

### 5. Navegar entre Níveis

**Hierarquia**:
```
shared/master-learning-map.md          [Estratégico - 88 semanas]
           ↓
01-math-foundations/README.md          [Overview do módulo]
           ↓
01-math-foundations/meta/learning-map.md [Tático - 5 semanas]
           ↓
01-math-foundations/meta/week-01-*.md   [Plano diário]
```

**Teste de navegação**:
1. Abra `shared/master-learning-map.md`
2. Encontre link para M1
3. Vá para `01-math-foundations/README.md`
4. Abra `meta/learning-map.md`
5. Abra `meta/week-01-notation-logic.md`

---

## 🧪 Testes de Validação

### Teste 1: Estrutura Autocontida
**Pergunta**: M1 tem tudo que precisa?

**Checklist**:
```bash
cd 01-math-foundations

# Verificar arquivos obrigatórios
ls README.md                    # ✅ Landing page
ls meta/learning-map.md         # ✅ Plano tático
ls meta/prerequisites.md        # ✅ Pré-requisitos
ls meta/resources.md            # ✅ Recursos tier 1/2/3
ls knowledge/flashcards-source.csv # ✅ Flashcards
ls logs/stats.json              # ✅ Métricas

# Verificar semanas (5 total)
ls -1 meta/week-*.md | wc -l    # Deve mostrar: 5
```

**Resultado esperado**: Todos os arquivos presentes ✅

---

### Teste 2: Sistema de Flashcards
**Pergunta**: Cards são agregados corretamente?

```bash
cd /home/dani/Work/dslara/ultralearning

# Ver cards do M1
cat 01-math-foundations/knowledge/flashcards-source.csv

# Ver master-deck
cat shared/flashcards/master-deck.csv

# Contar cards
tail -n +2 shared/flashcards/master-deck.csv | wc -l
```

**Resultado esperado**: Cards de M1 aparecem no master-deck ✅

---

### Teste 3: Seções Novas
**Pergunta**: README tem seções de Conexões e Retrieval?

```bash
cd 01-math-foundations

# Buscar seções novas
grep -A 5 "Conexões com Outros Módulos" README.md
grep -A 5 "Retrieval de Módulos Anteriores" README.md
```

**Resultado esperado**: Ambas as seções presentes ✅

---

## 📊 Comparação: Antes vs Depois

### Antes (Estrutura Original)
```bash
# Ver estrutura antiga
cd foundations-of-computing
ls meta/

# Problema: 88 arquivos week-*.md misturados
ls -1 meta/week-*.md | wc -l    # Mostra: ~88 arquivos
```

**Dificuldades**:
- ❌ 1 módulo gigante (88 semanas)
- ❌ Difícil encontrar semana específica
- ❌ Sem estrutura clara

---

### Depois (Estrutura Modular)
```bash
# Ver nova estrutura
cd 01-math-foundations
ls meta/

# Organização: apenas 5 semanas por módulo
ls -1 meta/week-*.md | wc -l    # Mostra: 5 arquivos
```

**Melhorias**:
- ✅ Módulo focado (5 semanas)
- ✅ Fácil encontrar conteúdo
- ✅ Estrutura autocontida

---

## 🎯 Casos de Uso

### Caso 1: Começar a estudar M1
```bash
cd 01-math-foundations

# 1. Ler overview
cat README.md

# 2. Verificar pré-requisitos
cat meta/prerequisites.md

# 3. Ver recursos
cat meta/resources.md

# 4. Começar semana 1
cat meta/week-01-notation-logic.md
```

---

### Caso 2: Adicionar novo conceito
```bash
# 1. Criar explicação Feynman
echo "# Conceito: Big O notation" > knowledge/concepts/big-o.md
nano knowledge/concepts/big-o.md

# 2. Adicionar flashcard
echo '"O que é Big O?","Limite superior assintótico","M1-math",medium,"","",1' >> knowledge/flashcards-source.csv

# 3. Sincronizar
cp knowledge/flashcards-source.csv ../shared/flashcards/by-module/M1-math.csv
cd ../shared/flashcards && bash sync-script.sh
```

---

### Caso 3: Fazer retrospectiva
```bash
cd 01-math-foundations

# 1. Criar retro semanal
mkdir -p meta/retrospectives
nano meta/retrospectives/retro-semana-01.md

# 2. Ao final do trimestre (após M1 e M2)
cd ../../shared/retrospectives/quarterly
nano Q1-review.md    # Preencher template
```

---

## 🔍 Validação Final

### Checklist Completo
Marque ✅ conforme testa:

**Estrutura Shared**:
- [ ] `shared/master-learning-map.md` existe e tem 88 semanas
- [ ] `shared/flashcards/master-deck.csv` existe
- [ ] `shared/flashcards/sync-script.sh` é executável
- [ ] Script de sincronização funciona

**Módulo M1**:
- [ ] `01-math-foundations/README.md` tem seção Conexões
- [ ] `01-math-foundations/README.md` tem seção Retrieval
- [ ] `meta/learning-map.md` referencia master-map
- [ ] 5 arquivos `week-*.md` presentes
- [ ] `knowledge/flashcards-source.csv` tem cards exemplo
- [ ] `logs/stats.json` existe

**Navegação**:
- [ ] Master-map → README → Learning-map funciona
- [ ] Links entre arquivos funcionam
- [ ] Estrutura é clara e intuitiva

**Sistema de Flashcards**:
- [ ] Cards de M1 aparecem em master-deck
- [ ] Script cria backup
- [ ] Sem duplicatas no master-deck

---

## ⏭️ Próximos Passos

Se todos os testes passaram:

### Opção 1: Usar M1 agora
```bash
cd 01-math-foundations
# Começar a estudar conforme plano
```

### Opção 2: Escalar para M2-M8
Prosseguir com **Fase 1-4** conforme proposta:
- Fase 1: Criar estrutura M2-M8 (1-2h)
- Fase 2: Migrar conteúdo (2-3h)
- Fase 3: READMEs e docs (1-2h)
- Fase 4: Atualizar sistema (1h)

---

## 📝 Notas

### O que foi criado nesta Fase 0:
1. ✅ Estrutura `shared/` completa
2. ✅ Módulo M1 protótipo funcional
3. ✅ Sistema de flashcards unificado
4. ✅ Templates de retrospectivas
5. ✅ Hierarquia de learning-maps

### O que ainda falta (Fases 1-4):
- ⬜ Criar M2-M8
- ⬜ Migrar todo conteúdo de `foundations-of-computing/`
- ⬜ Atualizar Makefile
- ⬜ Atualizar README principal

---

**Criado em**: 2026-02-08  
**Tempo da Fase 0**: ~45 minutos  
**Status**: ✅ Protótipo VALIDADO
