# Use an official Python runtime as a parent image
FROM ghcr.io/astral-sh/uv:python3.13-trixie

# This points to oppimispaivakirja, project, ... kamk-cookiecutter template
ARG KAMK_CUTTER=oppimispaivakirja

RUN uv tool install zensical

# Copy the chosen cookiecutter template to templates dir
COPY ./${KAMK_CUTTER} /templates/${KAMK_CUTTER}

# Run in
WORKDIR /app/${KAMK_CUTTER}
RUN echo "Running cookiecutter with ${KAMK_CUTTER} template"
RUN uvx cookiecutter /templates/${KAMK_CUTTER} --no-input -o . -f

# Run where zensical.toml is located
CMD [ "uv", "tool", "run", "zensical", "serve", "-a", "0.0.0.0:8000" ]
