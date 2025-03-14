# Vision and Scope

## Template Information

Use this form/template to create the **Vision and Scope Document**. This template is heavily inspired by the *Applied Software Project Management* book [^621cc8]. Read the "Chapter 2. Software Project Planning" for more information. The major differences are that this template is shorter, and also the user-related section have been moved to the "User Requirements" document. This change is in line with the Software Requirementes book's templates [^0a1d1b].

## 1: Problem Statement

### 1.1 Project background

This section provides a synopsis of the problem that the project will solve. It should include a brief history of the issue/goal and an explanation of how the organisation justified the decision to develop software to address it. This is the "why" of the project, the business case or business opportunity.

### 1.2 Stakeholder profiles

This contains a **bullet point list** of stakeholders. Each stakeholder can be identified by title or role ("support group manager," "CTO," "senior manager"). Describe each stakeholder's needs and attitudes briefly.

* [Stakeholder 1]
* [Stakeholder 2]

### 1.3 Assumptions

Write here assumption as guided in the Vision and Scope guide.

!!! tip

    Assumptions can be identified by answering a set of question in a brainstorm session. Here are helping questions:

    * Are some technology or architecture decisions already made?
    * What about deployment or distribution related decisions?
    * Are there any hidden goals that the team is aware of but that are not written down?
    * Are there any constraints that are not written down (e.g. standards or regulatory)?

## 2: Vision of the Solution

### 2.1 Vision statement

Defining the project's desired outcomes is the aim of the vision statement. Writing the vision statement should ideally come after conducting stakeholder and user interviews and documenting their needs; by then, a clear concept of the project should be beginning to take shape. In KAMK context, this is usually unrealistic, so we must do our best to come up with a vision statement that is based on the information we have.

### 2.2 Business risks

This section outlines any potential dangers to the project (e.g. cause delays or schedule overruns) that are not under the project team's control.

### 2.3 Major features

A list of features can be found in this section. A feature is a section of software that offers a range of services or capabilities to meet a particular demand.

| ID   | Short name        | Description                                    |
| ---- | ----------------- | ---------------------------------------------- |
| FE-1 | User accounts     | Create, read, update, and delete user accounts |
| FE-2 | [Major Feature 2] | [Description]                                  |
| FE-3 | [Major Feature 3] | [Description]                                  |

!!! tip

    Consider adding a feature tree or a mind map here. This can help to visualize the features and their relationships. Check the example in the ["What is a Feature?"](../guides/vision.md#what-is-a-major-feature) section in the Vision and Scope guide.


### 2.4 Features that will not be developed

Features are frequently purposefully omitted from projects. Instead of deleting a once-planned feature from the project, move it under this heading. This way it is clear that the feature was considered and then rejected.

| ID  | Short Name | Description |
| --- | ---------- | ----------- |

[^621cc8]: Greene J. & Stellman A. *Applied Software Project Management*. O'Reilly Media. 2005.
[^0a1d1b]: Wiegers K. & Beatty J. *Software Requirements (3rd. ed.)*. Microsoft Press. 2013.