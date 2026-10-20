# SAGE Edu Architecture

SAGE Edu is a **vertical solution** built on top of the **Tryton ERP framework**. This means we leverage the robust, enterprise-grade features of Tryton (security, ORM, workflows, internationalization) and extend them with specific educational business logic.

This document describes how SAGE Education is built technically. For the
list and description of individual modules, this file does not repeat that content.

## 1. Design Principles

SAGE Education's architecture was designed around three non-negotiable
principles:

- **Modularity** — institutions activate only the modules they need.
- **Scalability** — the same architecture supports a small vocational
  training center and a national public education system.
- **Security** — data protection and access control are built into the
  base layer.

## 2. Technology Stack

| Layer | Technology |
|---|---|
| Application framework | [Tryton ERP](https://www.tryton.org/) |
| Language | Python (PEP 8) |
| Database | [PostgreSQL](https://www.postgresql.org/) |
| Client | Tryton Web Client (SAO) — see `frontend/` |
| Packaging | PyPI, one package per module - see [comunidade_do_saber](https://pypi.org/user/comunidade_do_saber/) |
| Containerization | Docker — see `docker/` |

## 3. System Overview

SAGE Education is a **meta-project**: this repository orchestrates
deployment (Docker, install scripts, frontend customizations,
documentation), while each functional module is developed and released
as an independent Tryton module.

```
                     ┌─────────────────────┐
                     │  Tryton Web Client  │
                     │       (SAO)         │
                     └──────────┬──────────┘
                                │
                     ┌──────────▼──────────┐
                     │  Tryton Server      │
                     │(trytond + SAGE Edu) │
                     └──────────┬──────────┘
                                │
                     ┌──────────▼──────────┐
                     │     PostgreSQL      │
                     └─────────────────────┘
```

## 4. Module Dependency Graph

`akademy-party` is the shared foundation — nearly every other module
depends on it for its Party model extension. The general dependency
order is:

```
akademy-party
   └── akademy-company
         └── akademy-classe
               ├── akademy-classe-evaluation
               ├── akademy-matriculation
               │      └── akademy-matriculation-confirmation
```

*(This diagram reflects logical/functional dependency, not necessarily
exact `tryton.cfg` `depends` entries — verify against each module's
configuration before relying on it for install ordering.)*



## 4.1. Core Modules

Although SAGE Edu is version 2.0, all modules follow the Tryton version in which they are installed, for example:

- SAGE Edu 0.1 - Tryton 6.8
- SAGE Edu 1.0 - Tryton 7.0
- SAGE Edu 2.0 - Tryton 8.0

| Module | Package (PyPI) | Description | Repository |
|---|---|---|---|
| Akademy Party | `akademy-party` | Extends the Tryton `Party` model as the shared base for students, employees, teachers, and institutions. | [akademy-party](https://github.com/zacariasjuliano/akademy-party) |
| Akademy Company | `akademy-company` | Manages institutions, companies, employee registration and roles, and student–supervisor relationships. | [akademy-company](https://github.com/zacariasjuliano/akademy-company) |
| Akademy Classe | `akademy-classe` | Academic structure: levels, areas, courses, classes, schedules, classrooms, teacher/student assignment, and attendance tracking. | [akademy-classe](https://github.com/zacariasjuliano/akademy-classe) |
| Akademy Classe Evaluation | `akademy-classe-evaluation` | *(description pending — see note below)* | [akademy-classe-evaluation](https://github.com/zacariasjuliano/akademy-classe-evaluation) |
| Akademy Matriculation | `akademy-matriculation` | Candidate registration, application evaluation, enrollment, and internal/external student transfers. | [akademy-matriculation](https://github.com/zacariasjuliano/akademy-matriculation) |
| Akademy Matriculation Confirmation | `akademy-matriculation-confirmation` | Wizard-based, auditable workflow for confirming and modifying enrollments. | [akademy-matriculation-confirmation](https://github.com/zacariasjuliano/akademy-matriculation-confirmation) |



## 4.2. Required Tryton Core Modules (v8.0)

SAGE Education depends on the following upstream Tryton modules (install
alongside the core modules above):

```bash
pip install trytond==8.0.0
pip install trytond-currency==8.0.0
pip install trytond-party-avatar==8.0.0
pip install trytond-bank==8.0.0
pip install proteus==8.0.0
```


## 5. Deployment Topology

- **Local development:** `docker/` provides a containerized stack
  (Tryton server + PostgreSQL) for contributors. `db/` contains
  synthetic database dumps for restoring a working dev environment
  quickly.
- **Production / demo:** the public demo server
  [Demo](`app.sage-edu.comunidadedosaber.ao`) runs the same module set with seeded
  demo profiles (student, teacher, secretary, direction, admin).
- **Installation scripts:** [scripts](./scripts/sage_edu-install.sh) automates setup for system
  administrators deploying on their own infrastructure — this is what
  gives institutions data sovereignty (self-hosting, no vendor
  lock-in).

## 6. Extending SAGE Education

Because each module is an independent Tryton package, institutions or
contributors can:

- Activate only the modules relevant to their context.
- Develop new modules that depend on `akademy-party` /
  `akademy-company` without modifying core code.
- Override or extend existing modules following standard Tryton
  inheritance patterns.

## 7. Related, Independent Projects

The following are separate, earlier-stage projects within the same
ecosystem, not yet integrated as SAGE Education modules:

- **Akademy** — LMS platform (prototype for students and teachers).
- **DASHIE (IEDASH)** — Information Educational Dashboard platform
  (prototype).