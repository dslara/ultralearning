# Makefile para Sistema Ultralearning (Simplificado)
# Estrutura: Feature Modules no root
# 13 comandos essenciais

SHELL := /bin/bash
.DEFAULT_GOAL := help
.PHONY: help start study end module plan switch status review retro setup

# Cores
BLUE := \033[0;34m
GREEN := \033[0;32m
YELLOW := \033[1;33m
RED := \033[0;31m
PURPLE := \033[0;35m
NC := \033[0m

# Configurações
TODAY := $(shell date +%Y-%m-%d)
CURRENT_TOPIC := $(shell cat .current-topic 2>/dev/null || echo "nenhum")
TOPIC_PATH := $(CURRENT_TOPIC)

##@ 📋 Sessão Diária (3 comandos)

start: ## 🚀 Iniciar sessão + quiz automático
	@if [ "$(CURRENT_TOPIC)" = "nenhum" ]; then \
		echo -e "$(RED)❌ Nenhum módulo ativo. Use: make switch$(NC)"; \
		exit 1; \
	fi
	@echo -e "$(BLUE)━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$(NC)"
	@echo -e "$(GREEN)🚀 Iniciando Sessão de Ultralearning$(NC)"
	@echo -e "$(BLUE)━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$(NC)"
	@echo ""
	@echo -e "$(YELLOW)📦 Módulo: $(CURRENT_TOPIC)$(NC)"
	@echo -e "$(YELLOW)📅 Data: $(TODAY)$(NC)"
	@echo ""
	@mkdir -p "$(TOPIC_PATH)/logs/daily"
	@if [ ! -f "$(TOPIC_PATH)/logs/daily/$(TODAY).md" ]; then \
		echo "# 📅 $(TODAY) - $(CURRENT_TOPIC)" > "$(TOPIC_PATH)/logs/daily/$(TODAY).md"; \
		echo "" >> "$(TOPIC_PATH)/logs/daily/$(TODAY).md"; \
		echo "## 🎯 Objetivo" >> "$(TOPIC_PATH)/logs/daily/$(TODAY).md"; \
		echo "" >> "$(TOPIC_PATH)/logs/daily/$(TODAY).md"; \
		echo "## 📝 Notas" >> "$(TOPIC_PATH)/logs/daily/$(TODAY).md"; \
		echo "" >> "$(TOPIC_PATH)/logs/daily/$(TODAY).md"; \
		echo "## ✅ Aprendizados" >> "$(TOPIC_PATH)/logs/daily/$(TODAY).md"; \
		echo -e "$(GREEN)📝 Log criado: $(TOPIC_PATH)/logs/daily/$(TODAY).md$(NC)"; \
	fi
	@echo ""
	@# Warm-up automático com @tutor
	@echo -e "$(PURPLE)🧠 Warm-up: 3 perguntas rápidas...$(NC)"
	@echo ""
	@if command -v opencode &> /dev/null; then \
		opencode run --agent @tutor "#quiz 3 perguntas sobre $(CURRENT_TOPIC) baseado no que estudei ontem"; \
	else \
		echo -e "$(YELLOW)⚠️  OpenCode não instalado. Quiz pulado.$(NC)"; \
		echo -e "$(YELLOW)   Instale com: npm install -g opencode$(NC)"; \
	fi
	@echo ""
	@echo -e "$(GREEN)✅ Pronto! Use 'make study' para imersão$(NC)"

study: ## 💻 Loop de estudo: code → drill → feynman
	@if [ "$(CURRENT_TOPIC)" = "nenhum" ]; then \
		echo -e "$(RED)❌ Nenhum módulo ativo$(NC)"; \
		exit 1; \
	fi
	@if ! command -v opencode &> /dev/null; then \
		echo -e "$(YELLOW)⚠️  OpenCode não instalado$(NC)"; \
		echo "Modo offline: edite $(TOPIC_PATH)/logs/daily/$(TODAY).md"; \
		echo "Instale: npm install -g opencode"; \
		exit 0; \
	fi
	@echo -e "$(BLUE)━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$(NC)"
	@echo -e "$(GREEN)💻 Modo Estudo - $(CURRENT_TOPIC)$(NC)"
	@echo -e "$(BLUE)━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$(NC)"
	@echo ""
	@echo "Escolha o modo:"
	@echo "  1. 💻 Code      - Projeto prático"
	@echo "  2. 🎯 Drill     - Exercícios focados"
	@echo "  3. 💡 Feynman   - Explicar conceito"
	@echo "  4. 🏗️  Scaffold  - Criar estrutura"
	@echo "  5. 🧪 Experiment- Comparar soluções"
	@echo "  6. 📝 Feedback  - Revisar código"
	@echo "  q. Sair"
	@echo ""
	@read -p "Opção [1]: " mode; \
	mode=$${mode:-1}; \
	case $$mode in \
		1|code) \
			read -p "Qual desafio? " challenge; \
			opencode run --agent @tutor "#directness $$challenge"; \
			;; \
		2|drill) \
			read -p "Qual conceito? " concept; \
			opencode run --agent @tutor "#drill $$concept"; \
			;; \
		3|feynman) \
			read -p "Qual conceito explicar? " concept; \
			opencode run --agent @tutor "#feynman $$concept"; \
			;; \
		4|scaffold) \
			read -p "Descreva o projeto: " project; \
			opencode run --agent @tutor "#scaffold $$project"; \
			;; \
		5|experiment) \
			read -p "Qual conceito explorar? " concept; \
			opencode run --agent @tutor "#experiment $$concept"; \
			;; \
		6|feedback) \
			echo "Cole seu código e pressione Ctrl+D:"; \
			code=$$(cat); \
			opencode run --agent @tutor "#feedback $$code"; \
			;; \
		q|Q) \
			echo "Saindo..."; \
			;; \
		*) \
			echo -e "$(YELLOW)Opção inválida$(NC)"; \
			;; \
	esac

end: ## 🏁 Encerrar sessão (salva + streak)
	@if [ "$(CURRENT_TOPIC)" = "nenhum" ]; then \
		echo -e "$(RED)❌ Nenhum módulo ativo$(NC)"; \
		exit 1; \
	fi
	@echo -e "$(BLUE)━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$(NC)"
	@echo -e "$(GREEN)🏁 Encerrando Sessão$(NC)"
	@echo -e "$(BLUE)━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$(NC)"
	@echo ""
	@# Pedir resumo rápido
	@read -p "O que você aprendeu hoje? (breve): " learning; \
	if [ -n "$$learning" ]; then \
		echo "" >> "$(TOPIC_PATH)/logs/daily/$(TODAY).md"; \
		echo "## 📊 Resumo da Sessão" >> "$(TOPIC_PATH)/logs/daily/$(TODAY).md"; \
		echo "" >> "$(TOPIC_PATH)/logs/daily/$(TODAY).md"; \
		echo "$$learning" >> "$(TOPIC_PATH)/logs/daily/$(TODAY).md"; \
		echo "" >> "$(TOPIC_PATH)/logs/daily/$(TODAY).md"; \
		echo -e "$(GREEN)✅ Resumo salvo$(NC)"; \
	fi
	@echo ""
	@# Atualizar streak
	@./shared/scripts/streak.sh session
	@echo ""
	@echo -e "$(GREEN)📝 Log: $(TOPIC_PATH)/logs/daily/$(TODAY).md$(NC)"
	@echo -e "$(GREEN)✅ Sessão encerrada! Bom trabalho! 🎉$(NC)"

##@ 🗺️ Módulos (3 comandos)

module: ## 🆕 Criar novo módulo
	@echo -e "$(BLUE)🆕 Criando novo módulo$(NC)"
	@echo ""
	@read -p "Nome do módulo (ex: python-backend): " topic; \
	TOPIC_SLUG=$$(echo "$$topic" | tr '[:upper:]' '[:lower:]' | tr ' ' '-'); \
	if [ -d "$$TOPIC_SLUG" ]; then \
		echo -e "$(YELLOW)⚠️  Módulo já existe!$(NC)"; \
		exit 1; \
	fi; \
	mkdir -p "$$TOPIC_SLUG"/{meta,projects,logs/daily,knowledge}; \
	echo "# 📦 $$topic" > "$$TOPIC_SLUG/README.md"; \
	echo "" >> "$$TOPIC_SLUG/README.md"; \
	echo "**Status**: 🟢 Ativo" >> "$$TOPIC_SLUG/README.md"; \
	echo "**Criado**: $(TODAY)" >> "$$TOPIC_SLUG/README.md"; \
	echo "$$TOPIC_SLUG" > .current-topic; \
	echo -e "$(GREEN)✅ Módulo criado: $$TOPIC_SLUG/$(NC)"; \
	echo ""; \
	echo -e "$(YELLOW)Use @meta para planejar:$(NC)"; \
	echo "opencode run --agent @meta \"#decompose-goal $$topic\""

switch: ## 🔄 Alternar módulo ativo
	@echo -e "$(BLUE)📋 Módulos disponíveis:$(NC)"
	@echo ""
	@found=0; \
	for dir in */; do \
		if [ -d "$$dir/meta" ] || [ -d "$$dir/logs" ]; then \
			found=1; \
			topic=$$(basename "$$dir"); \
			current=""; \
			if [ "$$topic" = "$(CURRENT_TOPIC)" ]; then \
				current=" $(YELLOW)← atual$(NC)"; \
			fi; \
			logs=$$(ls -1 "$$dir/logs/daily"/*.md 2>/dev/null | wc -l | xargs); \
			echo -e "  📦 $$topic ($$logs dias)$$current"; \
		fi; \
	done; \
	if [ $$found -eq 0 ]; then \
		echo -e "$(YELLOW)Nenhum módulo. Use: make module$(NC)"; \
		exit 0; \
	fi; \
	echo ""; \
	read -p "Ativar módulo: " topic; \
	if [ -d "$$topic" ]; then \
		mkdir -p "$$topic"/{meta,projects,logs/daily,knowledge}; \
		echo "$$topic" > .current-topic; \
		echo -e "$(GREEN)✅ Ativo: $$topic$(NC)"; \
	else \
		echo -e "$(RED)❌ Módulo não existe$(NC)"; \
	fi

plan: ## 📅 Planejar semana com @meta
	@if [ "$(CURRENT_TOPIC)" = "nenhum" ]; then \
		echo -e "$(RED)❌ Nenhum módulo ativo$(NC)"; \
		exit 1; \
	fi
	@if ! command -v opencode &> /dev/null; then \
		echo -e "$(YELLOW)⚠️  OpenCode não instalado$(NC)"; \
		echo "Crie o plano manualmente em: $(TOPIC_PATH)/meta/"; \
		exit 0; \
	fi
	@echo -e "$(BLUE)📅 Planejando semana para: $(CURRENT_TOPIC)$(NC)"
	@echo ""
	@WEEK=$$(date +%U); \
	mkdir -p $(TOPIC_PATH)/meta; \
	opencode run --agent @meta "#create-weekly-plan semana $$WEEK" | tee $(TOPIC_PATH)/meta/week-$$WEEK.md; \
	echo ""; \
	echo -e "$(GREEN)✅ Plano salvo: $(TOPIC_PATH)/meta/week-$$WEEK.md$(NC)"

resources: ## 📚 Mapear recursos para o módulo
	@if [ "$(CURRENT_TOPIC)" = "nenhum" ]; then \
		echo -e "$(RED)❌ Nenhum módulo ativo$(NC)"; \
		exit 1; \
	fi
	@if ! command -v opencode &> /dev/null; then \
		echo -e "$(YELLOW)⚠️  OpenCode não instalado$(NC)"; \
		exit 0; \
	fi
	@echo -e "$(BLUE)📚 Mapeando recursos para: $(CURRENT_TOPIC)$(NC)"
	@echo ""
	@read -p "Tópico específico (ou Enter para módulo): " topic; \
	topic=$${topic:-$(CURRENT_TOPIC)}; \
	mkdir -p $(TOPIC_PATH)/meta; \
	opencode run --agent @meta "#map-resources $$topic" | tee $(TOPIC_PATH)/meta/resources.md; \
	echo ""; \
	echo -e "$(GREEN)✅ Recursos salvos: $(TOPIC_PATH)/meta/resources.md$(NC)"

##@ 🧠 Revisão (2 comandos)

review: ## 📚 Cards SRS + sessão interativa
	@echo -e "$(BLUE)📚 Spaced Repetition$(NC)"
	@echo ""
	@echo "  1. 📅 Ver cards para hoje"
	@echo "  2. 🎯 Sessão de revisão"
	@echo "  3. ➕ Adicionar card"
	@echo "  4. 📊 Estatísticas"
	@echo ""
	@read -p "Opção [1]: " opt; \
	opt=$${opt:-1}; \
	case $$opt in \
		1) ./shared/scripts/spaced-repetition.sh list ;; \
		2) ./shared/scripts/spaced-repetition.sh review ;; \
		3) \
			read -p "Pergunta: " q; \
			read -p "Resposta: " a; \
			./shared/scripts/spaced-repetition.sh add "$$q" "$$a" "geral"; \
			;; \
		4) ./shared/scripts/spaced-repetition.sh stats ;; \
	esac

retro: ## 📝 Retrospectiva semanal (3 perguntas)
	@if [ "$(CURRENT_TOPIC)" = "nenhum" ]; then \
		echo -e "$(RED)❌ Nenhum módulo ativo$(NC)"; \
		exit 1; \
	fi
	@echo -e "$(BLUE)━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$(NC)"
	@echo -e "$(GREEN)📝 Retrospectiva Semanal$(NC)"
	@echo -e "$(BLUE)━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$(NC)"
	@echo ""
	@# Resumo semanal automático
	@echo -e "$(YELLOW)📊 Resumo da Semana:$(NC)"
	@WEEK_START=$$(date -v-7d +%Y-%m-%d 2>/dev/null || date -d '7 days ago' +%Y-%m-%d); \
	LOGS_COUNT=$$(find $(TOPIC_PATH)/logs/daily -name "*.md" -newer /tmp 2>/dev/null | wc -l | xargs); \
	LOGS_THIS_WEEK=$$(ls -1 $(TOPIC_PATH)/logs/daily/*.md 2>/dev/null | while read f; do \
		FDATE=$$(basename "$$f" .md); \
		if [[ "$$FDATE" > "$$WEEK_START" ]] || [[ "$$FDATE" == "$$WEEK_START" ]]; then \
			echo "$$f"; \
		fi; \
	done | wc -l | xargs); \
	echo "   📅 Dias estudados esta semana: $$LOGS_THIS_WEEK"; \
	if [ "$$LOGS_THIS_WEEK" -ge 6 ]; then \
		echo -e "   $(GREEN)✅ Excelente! Meta de 6 dias atingida!$(NC)"; \
	elif [ "$$LOGS_THIS_WEEK" -ge 4 ]; then \
		echo -e "   $(YELLOW)⚠️  Bom! $$(( 6 - $$LOGS_THIS_WEEK )) dias para meta$(NC)"; \
	else \
		echo -e "   $(RED)❌ Faltaram $$(( 6 - $$LOGS_THIS_WEEK )) dias$(NC)"; \
	fi
	@echo ""
	@WEEK=$$(date +%U); \
	RETRO_FILE="$(TOPIC_PATH)/meta/retro-week-$$WEEK.md"; \
	echo "# Retro Semana $$WEEK - $(CURRENT_TOPIC)" > "$$RETRO_FILE"; \
	echo "" >> "$$RETRO_FILE"; \
	echo "**Data**: $(TODAY)" >> "$$RETRO_FILE"; \
	echo "" >> "$$RETRO_FILE"; \
	read -p "✅ O que funcionou? " worked; \
	echo "## ✅ O que funcionou" >> "$$RETRO_FILE"; \
	echo "$$worked" >> "$$RETRO_FILE"; \
	echo "" >> "$$RETRO_FILE"; \
	read -p "❌ O que não funcionou? " failed; \
	echo "## ❌ O que não funcionou" >> "$$RETRO_FILE"; \
	echo "$$failed" >> "$$RETRO_FILE"; \
	echo "" >> "$$RETRO_FILE"; \
	read -p "🎯 Foco próxima semana? " next; \
	echo "## 🎯 Próxima semana" >> "$$RETRO_FILE"; \
	echo "$$next" >> "$$RETRO_FILE"; \
	echo ""; \
	echo -e "$(GREEN)✅ Salvo: $$RETRO_FILE$(NC)"

##@ 📊 Status (2 comandos)

status: ## 📊 Ver status geral (streak + módulo)
	@echo -e "$(BLUE)━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$(NC)"
	@echo -e "$(GREEN)📊 Status Ultralearning$(NC)"
	@echo -e "$(BLUE)━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$(NC)"
	@echo ""
	@./shared/scripts/streak.sh
	@echo ""
	@if [ "$(CURRENT_TOPIC)" != "nenhum" ]; then \
		echo -e "$(YELLOW)📦 Módulo atual: $(CURRENT_TOPIC)$(NC)"; \
		logs=$$(ls -1 $(TOPIC_PATH)/logs/daily/*.md 2>/dev/null | wc -l | xargs); \
		echo "   Dias de estudo: $$logs"; \
	else \
		echo -e "$(YELLOW)⚠️  Nenhum módulo ativo$(NC)"; \
	fi
	@echo ""

help: ## 📖 Mostra ajuda
	@echo -e "$(BLUE)━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$(NC)"
	@echo -e "$(GREEN)  Ultralearning - 13 Comandos$(NC)"
	@echo -e "$(BLUE)━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$(NC)"
	@echo ""
	@awk 'BEGIN {FS = ":.*##"} /^[a-zA-Z_-]+:.*?##/ { printf "  $(YELLOW)%-12s$(NC) %s\n", $$1, $$2 } /^##@/ { printf "\n$(BLUE)%s$(NC)\n", substr($$0, 5) }' $(MAKEFILE_LIST)
	@echo ""
	@echo -e "$(BLUE)━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$(NC)"
	@echo -e "$(YELLOW)Workflow Diário (3 comandos):$(NC)"
	@echo ""
	@echo "  1. make start  → Inicia + quiz"
	@echo "  2. make study  → Loop de estudo"
	@echo "  3. make end    → Salva + streak"
	@echo ""
	@echo -e "$(BLUE)━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$(NC)"

##@ 🛠️ Setup

backup: ## 💾 Backup dos dados
	@echo -e "$(BLUE)💾 Criando backup...$(NC)"
	@BACKUP_DIR="backups/$$(date +%Y-%m-%d_%H%M%S)"; \
	mkdir -p "$$BACKUP_DIR"; \
	cp -r .ultralearning-stats "$$BACKUP_DIR/" 2>/dev/null || true; \
	cp -r .current-topic "$$BACKUP_DIR/" 2>/dev/null || true; \
	for dir in */knowledge */meta */logs; do \
		if [ -d "$$dir" ]; then \
			mkdir -p "$$BACKUP_DIR/$$(dirname $$dir)"; \
			cp -r "$$dir" "$$BACKUP_DIR/$$(dirname $$dir)/" 2>/dev/null; \
		fi; \
	done; \
	echo -e "$(GREEN)✅ Backup salvo em: $$BACKUP_DIR$(NC)"

setup: ## ⚙️ Configuração inicial
	@echo -e "$(BLUE)⚙️ Configurando Ultralearning...$(NC)"
	@echo ""
	@echo "Verificando dependências..."
	@command -v jq >/dev/null 2>&1 && echo -e "  $(GREEN)✓$(NC) jq" || echo -e "  $(RED)✗$(NC) jq (instale: brew install jq)"
	@command -v bc >/dev/null 2>&1 && echo -e "  $(GREEN)✓$(NC) bc" || echo -e "  $(YELLOW)⚠️$(NC) bc (opcional, para SRS)"
	@command -v opencode >/dev/null 2>&1 && echo -e "  $(GREEN)✓$(NC) opencode" || echo -e "  $(YELLOW)⚠️$(NC) opencode (instale para usar agentes)"
	@echo ""
	@mkdir -p shared/scripts .opencode/agents
	@chmod +x shared/scripts/*.sh 2>/dev/null || true
	@if [ ! -f ".current-topic" ]; then echo "nenhum" > .current-topic; fi
	@echo -e "$(GREEN)✅ Setup completo!$(NC)"
	@echo ""
	@echo "Próximos passos:"
	@echo "  1. make module  → Criar módulo"
	@echo "  2. make start   → Começar estudo"
