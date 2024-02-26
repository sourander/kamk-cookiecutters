FROM squidfunk/mkdocs-material:latest

# Install additional packages
RUN pip install mkdocs-awesome-pages-plugin

# Copy the contents of the local "docs" directory into the container
COPY ./docs /docs
