# How to Run Learning Diary Docs

## Using Docker

```bash
# Run
docker compose -f docker-compose-docs.yml up # Add [-d] to run in detached mode
```

After this, navigate to [localhost:8000](http://localhost:8000) to see the documentation.

## Alternative: using uv tools

If you have uv(x) installed, you can run the documentation without Docker.

```bash
# Run with uvx
uvx --with mkdocs-material --with mkdocs-awesome-pages-plugin mkdocs serve
```