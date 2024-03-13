This will include the "How to read this tutorial" guide.

## Sprint Zero

The first (0th) sprint is the Sprint Zero. During this sprint, you will set up:

* Product Vision
* Initial backlog
    * ... for 2 sprints worth of work
* Architecture approach
* Coding practices
* Development environment
* Initial roadmap (or release plan)

The release plan will most likely not be accurate, since you lack the imperical evidence on how fast your team is at delivering. That's ok. You will steer the project as you go, including adjusting the release plan. This is why we have sprint reviews.

At the end of the Sprint Zero, you should have something tangible to show to the stakeholders. Is it a shippable product? No, a customer would not probably pay for it. Having that said, it is ready based on its own acceptance criteria.

## Document Guides and Forms

!!! tip

    You can treat Form and Template as synonyms. They are used interchangeably in this context.

The guides and forms are located in the `docs/forms` and `docs/guides` folders. The guides provide context and ideas for writing the documents, and the forms are the documents themselves.

* The forms are written in a way that they can be used as a template. 
* The guides are written in a way that they can be used as a tutorial.

You should delete the `docs/guides` folder when you no longer need it. You shouldn't need it after the Sprint Zero.

!!! tip

    For more in-depth guide about technical documentation, check out [Diátaxis](https://diataxis.fr/). If you do not know the difference between tutorials, how-to guides, technical reference and explanation, you should definitely check the page out.

## What will be made

The required documents you will create are Vision and Scope, User Profiles, and The Spec. These artifacts will lead us to having items in four levels shown in the table below. Each level has its own home. For example, the Major Features are in the Vision and Scope. That is their single source of truth.

| Level | Business term          | Scrum term           | GitLab term            | Home             |
| ----- | ---------------------- | -------------------- | ---------------------- | ---------------- |
| 1     | Major Feature          | Initiative           | `[A] ...`              | Vision and Scope |
| 2     | Feature                | Epic                 | `[A][B] Issue heading` | The Spec         |
| 3     | Functional Requirement | Story/Task/Bug/Other | Issue (label the type) | GitLab           |
| 4     | N/A                    | Sub-Task             | Issue's Child Item     | GitLab           |

## Order of Work

- [x] Read the Start Here document.
- [ ] Read the Vision and Scope guide.
- [ ] Write the Vision and Scope form.
- [ ] Read the User Profiles guide.
- [ ] Write the User Profiles form.
- [ ] Read the User Requirements guide.
- [ ] Write the User Requirements form.
- [ ] Delete the `docs/guides` folder.
- [ ] Delete the Start Here document.
- [ ] Continue your own documentation process (remember Diátaxis!)