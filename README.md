# kamk-cookiecutters

Various cookiecutters for creating course-related files and directories.

## Prerequisites

* (Recommended) [pipx](https://pipx.pypa.io/stable/installation/)
* (Mandatory) [cookiecutter 2.5.0 or higher](https://cookiecutter.readthedocs.io/en/latest/installation.html)

If you have no idea what pipx is, it is shortly a tool for creating isolated Python environments for command-line tools such as `cookiecutter`, `http`, `poetry`, and many others. It is a good practice to use pipx for installing these tools, because it keeps your system clean and you can easily uninstall the tools if you want to. Also, it allows you to run them in any directory without activating a virtual environment. In this context, **it is used to install** the `cookiecutter` tool.

If you have no idea of what cookiecutter is, spend 1-2 minutes reading this short documentation page: [Cookiecutter docs: Overview](https://cookiecutter.readthedocs.io/en/latest/overview.html).

&nbsp;

## Usage

```bash
# Run the cookiecutter against this repository
cookiecutter gh:sourander/kamk-cookiecutters

# Or maybe (Read below):
cookiecutter gh:sourander/kamk-cookiecutters -f
```

**WHY THE F FLAG?** The `-f` flag is used to force the cookiecutter to override the existing files. This is required if you want to use the `.` as the target folder, because "this folder" exists.

Running the command above will prompt you to choose a cookiecutter from the list of available cookiecutters. After choosing a cookiecutter, you will be prompted to fill in the required fields. Below is an example of creating a learning diary for a course.

&nbsp;

## Using Templates

### Oppimispäiväkirja (learning diary)

![asciinema recording](doc-assets/cookiecutter.gif)

**TIP:** If you are interested in creating similar GIF animations, you can use tool `asciinema` for recording and `agg` for GIF conversion. The tools may not be compatible with Windows.

The steps and brief explanations are in the table below:

| Step              | Explanation                                                                                                                   |
| ----------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| Select a template | Choose the cookiecutter from the list of available cookiecutters (check `cookiecutter.json`).                                 |
| Course name       | Fill in the required fields. The default value is always shown in brackets.                                                   |
| Course slug       | A slugified course name. Used in docker container names and similar. You typically do not need to change this.                |
| Containing folder | The folder where the learning diary will be created. The default is the current folder (`.`). Default requires the `-f` flag. |
| Author            | Your Full Name.                                                                                                               |

### Project

TODO: Record this GIF.