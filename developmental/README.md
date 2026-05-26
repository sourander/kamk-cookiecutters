# How to Dev

To develop the scripts, you need to run the templates through the cookiecutter processor. This would be annoying manually, so we are using Docker for that. Run the following commands in the project root:

## Using Makefile

```bash
# Start oppimispaivakirja by default
make start

# Start specific
make start cookie=oppimispaivakirja
make start cookie=ai-customer-project

# Stop whatever template is running
make down
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
