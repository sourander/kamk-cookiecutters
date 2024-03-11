# The Spec

Below is a template you may use.

!!! warning

    This is currently a work in progress. The template is not yet complete.

## Features

Break down the **Major Features** (Initiatives) into one t-shirt size smaller **Features** (Epics). Make one list per Initiative. The details of the Features are described in the next section. The navigation or ToC (right side of the page) should able to quickly jump to the Feature Details section of any given Feature.

### FE-1: Major Epic's Name

| ID     | Short name    | Priority | Status | Date Updated | Rationale                                 |
| ------ | ------------- | -------- | ------ | ------------ | ----------------------------------------- |
| EPIC-1 | CSV ingestion | High     | Open   | 2020-12-31   | CSV is Research team's default            |
| EPIC-2 | Ham           | Medium   | Open   | 2020-12-31   | Ham is needed in pizza                    |
| EPIC-3 | Spam          | Low      | Open   | 2020-12-31   | Ham must be accompanied by spam spam spam |

### FE-2: [Short name]

| ID     | Short name      | Priority | Status | Date Updated | Rationale                                     |
| ------ | --------------- | -------- | ------ | ------------ | --------------------------------------------- |
| EPIC-4 | Something short | High     | Open   | 2020-12-31   | One-liner of this thingies reason of existing |

## Feature Details

### EPIC-1: CSV ingestion

**Description**: Neural network must be able to use XXX data.

!!! success "Acceptance Criteria"
    1. Lorem ipsum.
    2. Dolor sit amet.

### EPIC-2: Ham

**Description**: Neural network must be able to use XXX data.

!!! success "Acceptance Criteria"
    1. Lorem ipsum.
    2. Dolor sit amet.

### EPIC-3: Spam

**Description**: Neural network must be able to use XXX data.

!!! success "Acceptance Criteria"
    1. Lorem ipsum.
    2. Dolor sit amet.

### EPIC-4: Something short

**Description**: Neural network must be able to use XXX data.

!!! success "Acceptance Criteria"
    1. Lorem ipsum.
    2. Dolor sit amet.

## Architecture

Even though we are avoiding the Big Design Up Front (BDUF), we still need to have a high-level architecture in mind. This is to ensure that the system is scalable, maintainable, and everyone in the team is on the same page. If need be, you can move this arcitechture to a separate document. For now, it is here for the sake of simplicity.

!!! warning "Avoid spaghetti architecture"

    Remember that every system has an architecture. It is either by design or by accident. The latter is most likely a [big ball of mud](http://www.laputan.org/mud/mud.html) or spaghetti architecture.

    > A BIG BALL OF MUD is haphazardly structured, sprawling, sloppy, duct-tape and bailing wire, spaghetti code jungle. We’ve all seen them. These systems show unmistakable signs of unregulated growth, and repeated, expedient repair. Information is shared promiscuously among distant elements of the system, often to the point where nearly all the important information becomes global or duplicated. The overall structure of the system may never have been well defined. If it was, it may have eroded beyond recognition. <br> - Brian Foote & Joseph Yoder

    

### High-Level Architecture

Prefer to use diagrams to explain the architecture. This is the high-level architecture, the 30,000 foot view. It should be simple enough to be understood by a non-technical person. It should clarify the system's major components ("raviolis") and their interactions. This reveals the inter-component communication, data flow and dependencies.

```mermaid
graph TD
    A[Client] -->|Request| B[Server]
    B -->|Response| A
```

### Component Architectures

#### Component 1

Add diagrams explaining the architecture of any components of your system. Below is a dummy example of the server component (from the high-level architecture). This is the 10,000 foot view. Understanding it may require some technical knowledge, but it should NOT be a deep dive into a single component.

```puml
@startuml

actor User

card "Component 1" {
    rectangle "Frontend" as front

    rectangle Backend as back {

        rectangle Auth as auth.local {
            card "Username\nPassword"
        }

        rectangle API {
            card "Public" as api.pub
            card "Private" as api.priv
        }

        database "Storage" as storage.local
    }

    front --> API
    API -up-> storage.local
    API -up-> auth.local
}

User --> front
@enduml
```

#### Component 2

Here you would explain the architecture of another component. You may use different kind of diagrams based on the component's nature. Check the PlantUML reference guide for examples. The potential diagrams include:

* Sequence diagram
* Usecase diagram
* Activity diagram
* Component diagram
* Deployment diagram
* State diagram
* Timing diagram

Below is an example of a sequence diagram (from PlantUML's language referend guide, page 3).

```puml
@startuml
actor Bob #red
' The only difference between actor
'and participant is the drawing
participant Alice
participant "I have a really\nlong name" as L #99FF99
/' You can also declare:
participant L as "I have a really\nlong name" #99FF99
'/
Alice->Bob: Authentication Request
Bob->Alice: Authentication Response
Bob->L: Log transaction
@enduml
```


## Data Model

This heading is for the data model. Components of the system typically transfer data between each other. This data has a structure. This structure is the data model.

The actual contents depend on what you are building. It could be a database schema, a data flow diagram - or - maybe **a link to**  autogenerated documentation runnning in a another container (within the same Docker compose network, exposed to another port). For example, if you are using Pydantic or protobuf to define your schema as a code, it wouldn't make a lot of sense to manually copy-paste the contents here. Instead, use tools of automation! The team has a lot of freedom over this. Use that freedom wisely.

In simple cases, you might simply write the data model in a YAML format. Below is an example of a ultra simple data model (adapted from PlantUML's language reference guide, page 273).

```puml
@startyaml
fruit (VARCHAR): Apple
size (ENUM): 
- Small
- Large
color (ENUM):
- Red
- Green
@endyaml
```