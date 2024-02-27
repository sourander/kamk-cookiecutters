# Software Requirements Specification

## Introduction

This is the Software Requirements Specification (SRS) for the project. The purpose of this document is to describe the requirements that the **system has**.

!!! note

    This template is a single `srs.md` file. For the actual SRS, you may want to split this into multiple files within a folder, like:

    ```bash
    └── srs/
        ├── egg.md
        ├── ham.md
        ├── spam.md
        └── .pages
    ```

    Set the ordering in the `.pages` file.


## Features

A feature is a service that the system provides to the user. It consist of multiple related user requirements.

```mermaid
graph LR

  subgraph Features
    A[Check-In]
    B[Flight Schedules]
  end

  subgraph User Requirements N
    N1[Check in for a flight]
  end

  subgraph User Requirements M
    M1[List arrival and departure times by airport]
    M2[Set airport as home airport]
    M3[View airplane on map]
  end

  subgraph Functional Requirements N1
    N1.1[1. The system shall display active boarding passes]
    N1.2[2. The user shall be able to view boarding pass details]
    N1.3[3. The user shall be able to check in for a flight]
  end

  subgraph Functional Requirements M1
    M1.1[1. ...]
    M1.2[2. ...]
  end

  subgraph Functional Requirements M2
    M2.1[1. ...]
  end

  subgraph Functional Requirements M3
    M3.1[1. ...]
  end

A --> N1
B --> M1
B --> M2
B --> M3
N1 --> N1.1
N1 --> N1.2
N1 --> N1.3
M1 --> M1.1
M1 --> M1.2
M2 --> M2.1
M3 --> M3.1
```


!!! note

    Product (or system) consist of multiple features. Each feature consist of multiple user requirements. Each user requirement consist of multiple functional requirements.
