# How to Dev

To develop the scripts, you need to run the templates through the cookiecutter processor. This would be annoying manually, so we are using Docker for that. Run the following commands in the project root:

## Using Justfile

```bash
# List available recipes
just

# Start oppimispaivakirja by default
just start

# Start specific
just cookie=oppimispaivakirja start
just cookie=ai-customer-project start

# Stop whatever template is running
just down
```

## Oppimispäiväkirja with Docker

```bash
# Start oppimispaivakirja by default
docker compose up -watch --build

# Start specific
KAMK_CUTTER=oppimispaivakirja docker compose up --watch --build
KAMK_CUTTER=project docker compose up --watch --build

# Stop whatever template is running
docker compose down
```
