.PHONY: default

define HELP
		make start
		make stop
		make restart
endef

export HELP

default:
		@echo "$$HELP"

start:
		docker-compose up -d

stop:
		docker-compose down

restart:
		docker-compose restart

logs:
		docker logs portfolio-hugo

# Installs Nightly
# Update config.toml: 'theme =  "nightfall"'
install-theme:
		git clone https://github.com/LordMathis/hugo-theme-nightfall themes/nightfall