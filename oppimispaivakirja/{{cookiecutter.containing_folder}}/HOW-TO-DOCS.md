# How to Run Learning Diary Docs

## Using Docker

```bash
# Run
docker compose -f docker-compose-docs.yml up # Add [-d] to run in detached mode
```

After this, navigate to [localhost:8000](http://localhost:8000) to see the documentation.

## Using Pipx

It is assumed that you installed cookiecutter using `pipx`. Instead of running the documentation inside a Docker container, you can run it directly on your machine.

```bash
# Install mkdocs
pipx install mkdocs

# Inject theme and extensions
pipx inject mkdocs mkdocs-material
pipx inject mkdocs mkdocs-awesome-pages-plugin

# Navigate to the directory containing
# the mkdocs.yml file
cd $YOUR_PROJECT_DIR/docs

# Serve the documentation
# Exits with Ctrl+C
mkdocs serve # [-a 0.0.0.0:8888]
```