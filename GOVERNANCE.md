# SAGE Edu Governance Model

## 1. Project Mission
**SAGE Education** is a ***free and open-source*** project for ***educators, educational institutions, and governments***, built on the Tryton ERP framework. Our mission is to provide educational institutions, particularly in developing communities, with a robust, modular, and scalable digital management platform.

## 2. Leadership Structure (BDFL)
The project currently follows the **Benevolent Dictator For Life (BDFL)** model.

- **Project Lead (BDFL)**: Zacarias Juliano Capingala
- **Role**: The BDFL holds the final decision-making authority on all matters concerning the project, including architectural changes, release management, and conflict resolution. This authority is exercised with the goal of preserving the project's long-term health and mission.

## 3. Core Team (Future State)
As the community grows (target: 5+ substantial contributions), the project will transition to a **Meritocratic Steering Committee**.

- **Nomination**: Any contributor who has submitted 5 or more significant Pull Requests (PRs) that have been merged may be nominated.
- **Voting**: New members are approved by consensus of existing Core Team members (or by the BDFL during the initial phase).
- **Responsibilities**: Core Team members perform code reviews, triage issues, and vote on major feature proposals.

## 4. Decision-Making Process
- **Minor Features & Bug Fixes**: Decisions are made by the Core Team/Lead via GitHub Pull Request reviews. A simple majority of approvals is required.
- **Major Features & Breaking Changes (RFC)**: Significant changes require a **Request for Comments (RFC)** process.
    1.  An issue must be opened with the tag `[RFC]` detailing the proposal.
    2.  The proposal remains open for a minimum of **15 calendar days** for community feedback.
    3.  After the feedback period, the BDFL (or Core Team) makes a final decision.
- **Releases**: The BDFL or a designated Release Manager handles the final tagging and publishing of new versions to PyPI/Docker Hub.

## 5. Code of Conduct
All participants are expected to adhere to the [CODE_OF_CONDUCT.md](./CODE_OF_CONDUCT.md) file. Violations will be handled by the Core Team.

## 6. License
SAGE Edu is released under the **GNU General Public License v3.0 (GPL-3.0)**.