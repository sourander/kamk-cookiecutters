# {{ cookiecutter.project_name }} Report

This Material for MkDocs site contains the project plan and final report for a {{ cookiecutter.project_name }} (short: `{{ cookiecutter.project_slug }}`). The project has been created as a productive part of the course {{ cookiecutter.course_name }} at Kajaani University of Applied Sciences.

Note that the team may add and remove pages as needed. This is just a template.

## Authors

The project is created by the members of the group {{ cookiecutter.group_name }}. The members are:

{% set authors = cookiecutter.group_authors.split(', ') %}
{% for author in authors %}
* {{ author }}
{% endfor %}

!!! warning

    Disclaimer! Do not publish this documentation, the code, or any other material related to this project without the permission of KAMK and the customer (if applicable). The data may be sensitive or confidential.