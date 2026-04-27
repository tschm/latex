# 🛠️ LaTeX

A professional LaTeX template repository with GitHub Actions
for academic and technical documents.
Streamline your document workflow with automated compilation
and template management.

## Overview

This repository serves one main purpose:

1. **GitHub Action**: A reusable action to sync LaTeX templates into other repositories

## Features

- Professional LaTeX document template with:
  - Custom headers/footers showing git metadata
  - Proper structure for academic papers
  - Code listing support with syntax highlighting
  - Figure and bibliography management
- Automated compilation using [Tectonic](https://tectonic-typesetting.github.io/)
- GitHub Actions workflows for CI/CD
- Makefile with helpful commands for local development
- Pre-commit hooks for code quality

## Installation

### As a Template Repository

```bash
# Clone the repository
git clone https://github.com/tschm/latex.git
cd latex

# Install dependencies
make install
```

### As a GitHub Action

Add the following to your GitHub workflow file:

```yaml
jobs:
  sync-latex:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3

      - name: Sync LaTeX templates
        uses: tschm/latex@main
        with:
          branch: 'sync/update-configs'  # Optional
          commit-message: 'chore: sync files from latex repo'  # Optional
```

#### GitHub Actions Workflow Options

The repository provides several GitHub Actions workflows:

1. **LaTeX Build**: Compiles LaTeX documents using Tectonic
2. **Sync Templates**: Syncs LaTeX templates to other repositories
3. **Pre-commit**: Runs code quality checks
4. **Release**: Automates the release process

## Usage

### Compiling LaTeX Documents

```bash
# Compile the example document
make compile
```

### Using the Template

1. Modify the `paper/document.tex` file with your content
2. Update `paper/references.bib` with your bibliography
3. Add your figures to the `paper` directory
4. Compile using `make compile`

## Documentation

### Example Files

- **Template Document**: See `paper/document.tex` for a complete example
- **Bibliography**: Check `paper/references.bib` for citation formatting
- **Header Template**: Review `paper/header.tex` for git metadata integration

### Build Configuration

- **Makefile**: Run `make help` to see available commands
- **GitHub Workflows**: Located in `.github/workflows/`
- **GitLab CI Pipelines**: Located in `.gitlab/ci/`
- **Tectonic**: This project uses [Tectonic](https://tectonic-typesetting.github.io/) for compilation

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Author

Thomas Schmelzer
