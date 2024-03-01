---
hide:
  - toc
---

# {{ cookiecutter.project_name }} Report

This Material for MkDocs site contains design and specification documents for **{{ cookiecutter.project_name }}** (short: `{{ cookiecutter.project_slug }}`). The project is part of the course **{{ cookiecutter.course_name }}** at Kajaani University of Applied Sciences.

## Authors

The project is created by the members of the group **{{ cookiecutter.group_name }}**. The members are:

{% set authors = cookiecutter.group_authors.split(', ') %}
{% for author in authors %}
* {{ author }}
{% endfor %}

!!! warning

    Disclaimer! Before you publish this documentation, the code, or any other material related to this project without making sure that:

    * The other group members agree with the publication
    * No sensitive or confidential information is visible
    * If the project includes client's name, logo, data, source code, metadata or any other material, you should ask the client's permission to publish the material.