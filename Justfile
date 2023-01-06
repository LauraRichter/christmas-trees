# List just recipes
default:
  @just --list

# Compile requirements
requirements:
  pip-compile requirements.in -o requirements.txt

# Install requirements
setup:
  pip install -r requirements.txt

# Auto formatting
format:
  nbqa isort .
  nbqa black --line-length=100 .

# Linting
lint:
  nbqa isort --check .
  nbqa black --line-length=100 --check .
  nbqa flake8 --max-line-length=100 .
