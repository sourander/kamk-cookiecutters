# How to Run Learning Diary Docs

## Using Docker

```bash
# Run (detached)
docker compose -f docker-compose-docs.yml up -d

# Check logs
docker compose -f docker-compose-docs.yml logs

# Stop
docker compose -f docker-compose-docs.yml down
```

After this, navigate to [localhost:8000](http://localhost:8000) to see the documentation.

### Tip: Rename the compose file

The template creates a non-conventional, long file name to avoid conflicts with a potentially existing `docker-compose.yml` file. Oops, that you destroy your work! 🙊

Luckily, you can rename the file to `docker-compose.yml` and use it as a regular `docker-compose` file (without the `-f <filename>` flag).

```bash
# Rename the file
mv docker-compose-docs.yml docker-compose.yml

# In future, running any docker compose command
# uses that file by default
docker compose up -d
```

## Alternative: using uv tools

If you have uv(x) installed, you can run the documentation without Docker.

```bash
# Go to the same directory as mkdocs.yml
cd docs

# Run with uvx
uvx --with mkdocs-material --with mkdocs-awesome-pages-plugin mkdocs serve
```