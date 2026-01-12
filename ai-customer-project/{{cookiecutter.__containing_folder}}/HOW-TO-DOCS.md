# Run Development Server

Hosting the site locally is crucial when writing the content.

1. Install uv (and uvx) using ([guide by uv docs](https://docs.astral.sh/uv/getting-started/installation/))
2. Run commands below

```bash
# Go to the same directory as mkdocs.yml
cd docs

# Run with uvx
uvx --with mkdocs-material --with mkdocs-awesome-nav mkdocs serve --livereload --open --strict
```
