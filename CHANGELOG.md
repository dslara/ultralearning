# Changelog

Todas as mudanças notáveis neste projeto serão documentadas neste arquivo.

O formato é baseado em [Keep a Changelog](https://keepachangelog.com/pt-BR/1.0.0/),
e este projeto adere ao [Versionamento Semântico](https://semver.org/lang/pt-BR/).

## [Não Publicado]

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

