# Changelog

Todas as mudanças notáveis neste projeto serão documentadas neste arquivo.

O formato é baseado em [Keep a Changelog](https://keepachangelog.com/pt-BR/1.0.0/),
e este projeto adere ao [Versionamento Semântico](https://semver.org/lang/pt-BR/).

## [Não Publicado]

## [2.7.1] - 2026-02-20

### Added
- **Error handling robusto** em todos os scripts
  * `set -euo pipefail` em `common.sh` (herdado por todos os scripts)
  * Trap para mostrar linha de erro
  * Função `safe_write()` para escrita segura em arquivos
  * Função `validate_module_name()` para validar nomes de módulo
  * Função `sanitize_input()` para limpar input de usuário

### Changed
- **Validação de input** em scripts interativos
  * `module.sh`: validação rigorosa de nomes de módulo
  * `study.sh`: sanitização de inputs (challenge, concept, project)
  * Mensagens de erro claras e educativas

### Fixed
- **Operações de arquivo mais seguras**
  * `start.sh`: criação de log com safe_write + verificação mkdir
  * `end.sh`: verificação se log existe antes de escrever
  * `module.sh`: safe_write para README + verificação de permissões
- **Documentação atualizada**
  * Seção "Dependências" adicionada ao README (jq, bc, opencode)
  * Path `shared/scripts/` → `scripts/` corrigido
  * Quick Start atualizado com passo de instalação de deps
- **Privacidade protegida**
  * `.gitignore`: logs pessoais, stats e SRS não vão para git

### Security
- Prevenção de injection de comandos via sanitização de inputs
- Validação rigorosa de nomes de módulo

### Documentation
- Auditoria completa salva em `reviews/audit-complete-v2.7.0-2026-02-20.md`

## [2.7.0] - 2026-02-20

### Added
- 16 scripts bash em `scripts/` para comandos do Makefile
  * `common.sh` - Funções e variáveis compartilhadas (cores, check_module, etc.)
  * `start.sh` - Iniciar sessão + quiz
  * `study.sh` - Loop de estudo interativo
  * `end.sh` - Encerrar sessão
  * `module.sh` - Criar novo módulo
  * `switch.sh` - Alternar módulo ativo
  * `plan.sh` - Planejar semana
  * `resources.sh` - Mapear recursos
  * `review.sh` - Spaced repetition
  * `retro.sh` - Retrospectiva semanal
  * `break.sh` - Modo difuso
  * `drill-extra.sh` - Overlearning
  * `status.sh` - Ver status
  * `archive.sh` - Arquivar projeto
  * `backup.sh` - Backup de dados
  * `setup.sh` - Configuração inicial

### Changed
- **Makefile completamente refatorado:**
  * Reduzido de 463 para 74 linhas (-84%)
  * Apenas delega comandos para scripts
  * Comandos organizados em seções lógicas
  * Sistema de ajuda simplificado

### Technical
- Separação de responsabilidades: lógica nos scripts, orquestração no Makefile
- Scripts reutilizáveis independentemente do make
- Variáveis centralizadas em `common.sh`
- Facilita testes e manutenção

