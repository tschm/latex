## latex.mk - LaTeX compilation targets using tectonic

##@ LaTeX

.PHONY: uv
uv:  ## Install uv if not already installed
	@curl -LsSf https://astral.sh/uv/install.sh | sh

.PHONY: compile
compile: install  ## Compile document(s)
	./tectonic paper/document.tex

.PHONY: clean
clean:  ## Remove all files and directories ignored by git
	@git clean -d -X -f

.PHONY: install
install:  ## Install tectonic
	@curl --proto '=https' --tlsv1.2 -fsSL https://drop-sh.fullyjustified.net | sh
	@echo $$PATH

.PHONY: fmt
fmt: uv  ## Run autoformatting and linting
	@uvx pre-commit run --all-files
