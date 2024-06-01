
GREEN=$(shell tput setaf 2)
YELLOW=$(shell tput setaf 3)
END_COLOR=$(shell tput sgr0)

help: ## Show this help.
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST) | \
	sed -E 's/^([a-zA-Z0-9%_-]+):\s+(\w+)/$(GREEN)\1$(END_COLOR):~\u\2/' | \
	sed -E 's/(.*)(EX:)(.*)/\1$(YELLOW)\2\3$(END_COLOR)/' | \
	column -s '~' -t

build-frontend:
	(cd frontend && npm install)

run-frontend: ## run the React frontend
	(cd frontend && npm start)

run-backend: ## Run the Django backend
	./manage.py run_server
