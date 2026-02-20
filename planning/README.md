# 📐 Planejamento

Pasta destinada a documentos de planejamento estratégico, propostas arquiteturais, relatórios e guias técnicos.

## Propósito

Esta pasta centraliza documentação sobre:

- **Propostas de arquitetura** - Mudanças estruturais no projeto
- **Planos de migração** - Transições entre tecnologias/abordagens
- **Relatórios** - Documentação de fases, protótipos e experimentos
- **Guias práticos** - Instruções específicas de uso

## Convenção de Nomenclatura

Todos os documentos seguem o padrão:

```
[TIPO]-[descricao].md
```

### Tipos de Documento

| Tipo | Uso | Exemplo |
|------|-----|---------|
| `howto` | Guias práticos, tutoriais | `howto-usar-prototipo.md` |
| `report` | Relatórios de fases, protótipos | `report-prototipo-fase0.md` |
| `plano` | Planos de migração ou mudança | `plano-migracao-rust-zig.md` |
| `proposta` | Propostas de estrutura/arquitetura | `proposta-estrutura-modular.md` |

### Regras

- Nomes em **minúsculo**
- Palavras separadas por **hífen** (`-`)
- Sem acentos ou caracteres especiais
- Descrição curta e objetiva (máx. 4-5 palavras)

## Documentos Existentes

| Arquivo | Tipo | Descrição |
|---------|------|-----------|
| [howto-usar-prototipo.md](./howto-usar-prototipo.md) | howto | Guia de uso do protótipo M1 + estrutura shared |
| [report-prototipo-fase0.md](./report-prototipo-fase0.md) | report | Relatório da Fase 0 - validação da estrutura modular |
| [plano-migracao-rust-zig.md](./plano-migracao-rust-zig.md) | plano | Plano para trocar Rust por Zig (não aplicado) |
| [proposta-estrutura-modular.md](./proposta-estrutura-modular.md) | proposta | Proposta de divisão em 8 módulos independentes (aprovada) |

## Status dos Documentos

| Documento | Status | Decisão |
|-----------|--------|---------|
| Proposta de Estrutura Modular | ✅ **Aprovada** | Implementada com ajustes |
| Protótipo Fase 0 | ✅ **Validado** | Estrutura testada e aprovada |
| Migração Rust → Zig | ⏸️ **Não Aplicado** | Planejamento apenas |

---

*Documentos de planejamento são referências históricas das decisões arquiteturais. Sempre que possível, mantenha-os atualizados com o status atual.*
