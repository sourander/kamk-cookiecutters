# Use an official Python runtime as a parent image
FROM ghcr.io/astral-sh/uv:python3.12-bookworm

# This points to oppimispaivakirja, project, ... kamk-cookiecutter template
ARG KAMK_CUTTER=oppimispaivakirja

RUN uv tool install cookiecutter
RUN uv tool install mkdocs --with mkdocs-material --with mkdocs-awesome-nav

# Copy the chosen cookiecutter template to templates dir
COPY ./${KAMK_CUTTER} /templates/${KAMK_CUTTER}

# Run in 
WORKDIR /app/${KAMK_CUTTER}
RUN echo "Running cookiecutter with ${KAMK_CUTTER} template"
RUN uvx cookiecutter /templates/${KAMK_CUTTER} --no-input -o . -f && \
    mkdir -p /app/${KAMK_CUTTER}/docs

# Run where mkdocs.yml is located
WORKDIR /app/${KAMK_CUTTER}/docs
CMD [ "uv", "tool", "run", "mkdocs", "serve", "-a", "0.0.0.0:8000" ]