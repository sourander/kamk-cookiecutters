# Use an official Python runtime as a parent image
FROM python:3.11-slim

# ... since this wouldn't allow copying bootstrap.sh to /bootstrap.sh
# FROM squidfunk/mkdocs-material:latest

# Set the working directory to /app
WORKDIR /app

# The same command but broken into multi-line
RUN pip install --no-cache-dir \
     mkdocs \
     mkdocs-material \
     cookiecutter \
     mkdocs-awesome-pages-plugin \
     mkdocs_puml

# Create a directory for templates
RUN mkdir -p /templates

# Copy the template files into the image
COPY ./oppimispaivakirja /templates/oppimispaivakirja
COPY ./project /templates/project

# Copy the entrypoint script
COPY ./developmental/bootstrap.sh /bootstrap.sh

# Make the entrypoint script executable
RUN chmod +x /bootstrap.sh

# Set the entrypoint
ENTRYPOINT ["/bootstrap.sh"]
