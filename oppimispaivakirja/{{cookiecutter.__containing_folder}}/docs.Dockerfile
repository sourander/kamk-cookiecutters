FROM ghcr.io/astral-sh/uv:python3.12-bookworm

# The Add the dependencies file
COPY docs/pyproject.toml /docs/pyproject.toml
WORKDIR /docs

# Install what is mentioned in pyproject.toml
RUN uv sync

# Default command will run the mkdocs server
CMD ["uv", "run", "--no-sync", "mkdocs", "serve", "--dev-addr=0.0.0.0:8000", "--watch=docs"]