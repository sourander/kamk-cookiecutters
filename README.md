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

### Preparation step: Choose the Cookiecutter

First, it will ask you to choose a cookiecutter from the list of available cookiecutters. These are the cookiecutters that are available in this repository. For this tutorial, **choose** the first one, **the learning diary**.

```
Select template:
1 - Oppimispäiväkirja (MkDocs learning diary)
2 - Project (MkDocs for project including ...)
Choose from 1, 2 [1]:
```

**NOTE**: The Finnish word *oppimispäiväkirja* translates to *learning diary*. This is a Finnish word that is worth remembering if you are a student at KAMK.

**NOTE**: The cookiecutter might warn you: *"You've downloaded path/to/file before."* and wants you to confirm that you want to override the template with the latest version. You should answer `y` to this question.

&nbsp;

### Steps 1-4: Fill in the required fields

Fill in the required fields. The default value is always shown in brackets. There are cases when the default value is ok, and cases when it is not. DO NOT SIMPLY PRESS ENTER. Always check the default value and change it if necessary.

#### Step 1

```
[1/4] course_name (Linux Perusteet 2024):
```

Fill the course name. It will be used in various places, such as in the title of the learning diary. Prefer the name that is in the **syllabus** (fin: opinto-opas).

#### Step 2:

```
[2/4] course_slug (whatever-you-typed-sluggiefied):
```

This step will show the **course name slug** for reference. You typically do not **need** to change this. It will be used in various places, such as for naming Docker images and containers. However, you **can change** this if you want to, but do not use any special characters or spaces.

Example: If you typed `Käyttöjärjestelmäsuunnittelun alkeet 2025` to Step 1, this will offer you `kayttojarjestelmasuunnittelun-alkeet-2025` as the default value. You might prefer `kjs-alkeet-2025` for brevity.

#### Step 3:

```
[3/4] containing_folder (.):
```

Now, you are asked into which folder you want to create the learning diary. The default value is `.` which means the current folder. If you choose the `.`, you **must** run the cookiecutter with the `-f` flag. If you want to create the learning diary into a new folder, you can type the name of the folder here. The folder will be created. 

For example, you can type `diary` here and the files will be created into the `diary` folder.

&nbsp;

#### Step 4:
    
```
[4/4] author (Lisa Johnson):
```

Fill your name. It will be used in various places, such in the MkDocs "Johdanto" (eng. Introduction) page.

&nbsp;

## Problems?

If you have any problems, contact the course lecturer. You shouldn't need to use cookiecutter if not instructed to do so. The cookiecutter is typically used in the first lecture of the course. Be sure to attend the first lecture.