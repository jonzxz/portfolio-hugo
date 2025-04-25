.PHONY: default

define HELP
COMMANDS
		start - Starts the development environment using docker-compose
		stop - Stops the development environment using docker-compose
		restart - Restarts the development environment using docker-compose
		logs - View the container logs of the development environment
		install-theme - Git clones THEME_REMOTE into themes/ folder
		update-theme - Replaces the current theme with THEME_NAME in hugo.yaml
endef

export HELP

define THEME_REMOTE
https://github.com/LordMathis/hugo-theme-nightfall
endef

define THEME_NAME
nightfall
endef

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

# Installs theme
install-theme:
		git clone $(VERSION) themes/$(THEME_NAME)

# Update theme
update-theme:
		yq e -i '.theme = "$(THEME_NAME)"' hugo.yaml