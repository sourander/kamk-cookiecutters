#!/bin/bash

# Define the template name, template path, and app directory
TEMPLATE_NAME="$1"
TEMPLATE_PATH="/templates/$TEMPLATE_NAME"
APP_DIR="/app/$TEMPLATE_NAME"
DOCS_DIR="$APP_DIR/docs"

# Create the app directory if it doesn't exist
mkdir -p "$APP_DIR"

# Run cookiecutter with the default inputs from cookiecutter.json
cookiecutter "$TEMPLATE_PATH" --no-input -o "$APP_DIR" -f

# Run the MkDocs server
cd "$DOCS_DIR"
mkdocs serve -a 0.0.0.0:8000
