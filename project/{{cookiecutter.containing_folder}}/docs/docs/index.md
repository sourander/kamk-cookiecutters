# {{ cookiecutter.project_name }} Report

This Material for MkDocs site contains the project plan and final report for a {{ cookiecutter.project_name }} (short: `{{ cookiecutter.project_slug }}`). The project has been created as a productive part of the course {{ cookiecutter.course_name }} at Kajaani University of Applied Sciences. The group can add and remove pages and modify the content as needed.

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