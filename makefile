# Makefile

# Default target
.PHONY: all
all: help

# Help target
.PHONY: help
help:
	@echo "Usage:"
	@echo "  make push"
	@echo ""
	@echo "Targets:"
	@echo "  help           Display this help message"
	@echo "  push           Add, commit, and push changes to the current branch"

# Push target
.PHONY: push
push:
	@read -p "Enter commit message: " msg; \
	git add .; \
	git commit -m "$$msg"; \
	git push origin $$(git rev-parse --abbrev-ref HEAD)

