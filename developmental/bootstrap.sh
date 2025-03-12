#!/bin/bash -eux

# Define the template name, template path, and app directory
TEMPLATE_NAME="$1"
TEMPLATE_PATH="/templates/$TEMPLATE_NAME"
APP_DIR="/app"

sleep 20

cd /app/oppimispaivakirja

# Run the MkDocs server
# uv run mkdocs serve -a 0.0.0.0:8000

