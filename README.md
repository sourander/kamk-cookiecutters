# kamk-cookiecutters

Various cookiecutters for creating course-related files and directories.

## Prerequisites

* Docker (Desktop)

If you have no idea of what cookiecutter is, spend 1-2 minutes reading this short documentation page: [Cookiecutter docs: Overview](https://cookiecutter.readthedocs.io/en/latest/overview.html).

## Usage

We will use Docker to run the cookiecutter command, utilizing **uvx** (an alias for `uv tool run`). The uv is a Python package installer. The command `uv tool` is an interface for running Python-based tools without installation. We will run uv in a Docker container, so the is no need to even install uv. 

#### 🐧 Linux / MacOS

```bash
docker run -it --rm \
-v "$(pwd):/workspace" \
-w /workspace \
ghcr.io/astral-sh/uv:python3.11-bookworm \
uvx cookiecutter gh:sourander/kamk-cookiecutters -f
```

#### 🐦 Git Bash (in Windows)

```bash
winpty docker run -it --rm \
-v "/$(pwd):/workspace" \
-w '//workspace' \
ghcr.io/astral-sh/uv:python3.11-bookworm \
uvx cookiecutter gh:sourander/kamk-cookiecutters -f
```


#### 🟦 PowerShell

```powershell
docker run -it --rm `
-v "${PWD}:/workspace" `
-w /workspace `
ghcr.io/astral-sh/uv:python3.11-bookworm `
uvx cookiecutter gh:sourander/kamk-cookiecutters -f
```

### Why the `-f` flag?

The `-f` flag is used to force the cookiecutter to override the existing files. This is required if you want to use the `.` as the target folder, because "this folder" exists.

Running the command above will prompt you to choose a cookiecutter from the list of available cookiecutters. After choosing a cookiecutter, you will be prompted to fill in the required fields. Below is an example of creating a learning diary for a course.

&nbsp;

## Using Templates

When launching the `cookiecutter` command, you will be prompted to choose a cookiecutter from the list of available cookiecutters. The available cookiecutters are:

1. Oppimispäiväkirja (a learning diary)
2. Project (a project documentation)

### Oppimispäiväkirja (learning diary)

![asciinema recording](doc-assets/cookiecutter.gif)

**TIP:** If you are interested in creating similar GIF animations, you can use tool `asciinema` for recording and `agg` for GIF conversion. The tools may not be compatible with Windows.

The steps and brief explanations are in the table below:

| Step              | Explanation                                                                       |
| ----------------- | --------------------------------------------------------------------------------- |
| Select a template | 1                                                                                 |
| Course name       | The name of the course you are in. The default value is always shown in brackets. |
| Course slug       | A slugified course name. You typically do not need to change this.                |
| Containing folder | The default is the current folder (`.`). Default requires the `-f` flag.          |
| Author            | Your Full Name.                                                                   |

How to write a learning diary? Read from [Oppimispäiväkirja 101](https://sourander.github.io/oat) (in Finnish).

### Project

![asciinema recording](doc-assets/project-cookie.gif)

The steps and brief explanations are in the table below:

| Step              | Explanation                                                                 |
| ----------------- | --------------------------------------------------------------------------- |
| Select a template | 2                                                                           |
| Course name       | The name of the course you are in.                                          |
| Group name        | The name of the group you are in.                                           |
| Project name      | The name of the project your group is building.                             |
| Project slug      | A slugified project name. Only use a-z and dash. No whitespace, no symbols. |
| Containing folder | The default is the current folder (`.`). Default requires the `-f` flag.    |

How to write a project documentation? The template itself includes a guide for this! Also, the introduction lesson of the course will guide you through the process. If not, ask your teacher.
