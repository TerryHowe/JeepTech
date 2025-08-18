# Makefile for MkDocs Site
# 
# This Makefile provides common development tasks
# static site built with MkDocs.

# Configuration
PYTHON := python3
PIP := pip
MKDOCS := mkdocs
SITE_DIR := site
HOST := 127.0.0.1
PORT := 8000

# Default target
.DEFAULT_GOAL := help

# Phony targets (don't correspond to files)
.PHONY: help install build serve clean check watch

##@ Help

help: ## Display this help message
	@echo "JeepTech - MkDocs Development Commands"
	@echo ""
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n"} /^[a-zA-Z_0-9-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

##@ Development

install: ## Install Python dependencies
	@echo "Installing dependencies..."
	$(PIP) install -r requirements.txt >/dev/null

build: install ## Build the static documentation site
	@echo "Building documentation..."
	@$(PIP) install -r requirements.txt >/dev/null
	$(MKDOCS) build --strict
	@echo "✓ Documentation built successfully in $(SITE_DIR)/"

serve: ## Start the development server with live reload
	@echo "Starting development server at http://$(HOST):$(PORT)"
	@echo "Press Ctrl+C to stop the server"
	$(MKDOCS) serve -o --dev-addr $(HOST):$(PORT)

server: serve

watch: serve

##@ Maintenance

clean: ## Remove generated site files
	@echo "Cleaning generated files..."
	rm -rf $(SITE_DIR);
	@echo "✓ Removed $(SITE_DIR)/ directory";

check: build
	@echo "✓ Documentation validation complete"

deploy: ## Deploy the website to github pages
	@echo "Deploying documentation..."
	$(MKDOCS) gh-deploy

##@ Information

info: ## Show project information
	@echo "JeepTecn MkDocs Project"
	@echo "================================="
	@echo "Python: $(shell $(PYTHON) --version 2>/dev/null || echo 'Not found')"
	@echo "MkDocs: $(shell $(MKDOCS) --version 2>/dev/null || echo 'Not installed')"
	@echo "Site directory: $(SITE_DIR)/"
	@echo "Dev server: http://$(HOST):$(PORT)"