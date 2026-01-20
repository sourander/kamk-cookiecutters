# kamk-cookiecutters

Various cookiecutters for creating course-related files and directories.

## Prerequisites

* uv (Python package installer)
* git

If you have no idea of what cookiecutter is, spend 1-2 minutes reading this short documentation page: [Cookiecutter docs: Overview](https://cookiecutter.readthedocs.io/en/latest/overview.html).

## Usage

We will use **uvx** (an alias for `uv tool run`) to run the cookiecutter command. The uv is a Python package installer. The command `uvx` is an interface for running Python-based tools without installation.

```bash
uvx cookiecutter gh:sourander/kamk-cookiecutters -f
```

### Why the `-f` flag?

The `-f` flag is used to force the cookiecutter to override the existing files. This is required if you want to use the `.` as the target folder, because "this folder" exists.

Running the command above will prompt you to choose a cookiecutter from the list of available cookiecutters. After choosing a cookiecutter, you will be prompted to fill in the required fields. Below is an example of creating a learning diary for a course.

&nbsp;

## Using Templates

When launching the `cookiecutter` command, you will be prompted to choose a cookiecutter from the list of available cookiecutters. The available cookiecutter options are described below. Click to open.

<details>
<summary><strong>Oppimispäiväkirja (learning diary)</strong></summary>

![asciinema recording](doc-assets/cookiecutter.gif)

**Animaatio 1:** *Oppimispäiväkirja -template usage as GIF. Note that this is from a previous version where slug and containing directory were asked. Current version uses forced defaults.*

**TIP:** If you are interested in creating similar GIF animations, you can use tool `asciinema` for recording and `agg` for GIF conversion. The tools may not be compatible with Windows.

The steps and brief explanations are in the table below:

| Step              | Explanation                                                                       |
| ----------------- | --------------------------------------------------------------------------------- |
| Select a template | 1 (the index of this template)                                                    |
| Course name       | The name of the course you are in. The default value is always shown in brackets. |
| Course slug       | NO LONGER ASKED: defaults to slugified course name.                               |
| Containing folder | NO LONGER ASKED: defaults to "." Default requires the `-f` flag.                  |
| Author            | Your Full Name.                                                                   |

How to write a learning diary? Read from [Oppimispäiväkirja 101](https://sourander.github.io/oat) (in Finnish).
</details>

<details>
<summary><strong>AI-Asiakasprojekti</strong></summary>

The steps and brief explanations are in the table below. The process is very similar to the learning diary template. Key difference is in the files that are created: they contain guide on how to document a group project. This is also instructed in the corresponding course.

| Step              | Explanation                                                      |
| ----------------- | ---------------------------------------------------------------- |
| Select a template | 2 (the index of this template)                                   |
| Project name      | The name of the project your group is building.                  |
| Project slug      | NO LONGER ASKED: defaults to slugified project name.             |
| Containing folder | NO LONGER ASKED: defaults to "." Default requires the `-f` flag. |
| Group authors     | The names of the group member(s). Separate with a comma.         |

How to write a project documentation? The template itself includes a guide for this! Also, the introduction lesson of the course will guide you through the process. If not, ask your teacher.
</details>

