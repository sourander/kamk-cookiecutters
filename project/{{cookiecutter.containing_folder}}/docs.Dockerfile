FROM ghcr.io/astral-sh/uv:python3.12-bookworm

# The ./docs/mkdocs.yml will end up in /docs/mkdocs.yml etc.
COPY docs /docs
WORKDIR /docs

# Install what is mentioned in pyproject.toml
RUN uv sync

# Default command will run the mkdocs server
CMD ["uv", "run", "mkdocs", "serve", "--dev-addr=0.0.0.0:8000", "--watch=docs"]
