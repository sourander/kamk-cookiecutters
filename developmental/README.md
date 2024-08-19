# How to Dev

To develop the scripts, you need to run the templates through the cookiecutter processor. This would be annoying manually, so we are using Docker for that. Run the following commands in the project root:

## Oppimispäiväkirja

```bash
# Start
docker compose -f docker-compose-oat.yml up --build

# Stop
docker compose -f docker-compose-oat.yml down
```

## Project

The project is nearly identical to the learning diary, but it has http://puml:8080/ server for PlantUML diagrams.

```bash
# Start
docker compose -f docker-compose-project.yml up --build

# Stop
docker compose -f docker-compose-project.yml down
```