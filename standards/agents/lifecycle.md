=========================================================

agents/lifecycle.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# lifecycle Standards



\## Standards

\- System lifecycle phases MUST be explicitly defined.

\- Standards applicability MUST vary by lifecycle phase.

\- Ownership MUST be defined for each phase.

\- Transition criteria between phases MUST be explicit.

\- Decommissioning MUST be planned and enforced.

\- Artifacts MUST persist across lifecycle transitions.

\- Lifecycle rules MUST be enforceable by orchestration.



\## Scope

In scope:

\- Design, build, deploy, operate, decommission phases

\- Ownership and responsibility transitions

\- Artifact lifecycle management



Out of scope:

\- Business product lifecycle strategy



Assumptions:

\- Systems evolve over time.

\- Ownership may change.



\## Responsibilities

\- Orchestrator:

&nbsp; - Apply phase-appropriate standards



\- Owners:

&nbsp; - Maintain phase artifacts



\## Usage

\- Apply this file when:

&nbsp; - creating or evolving systems

\- This file MUST be composed with:

&nbsp; - agents/orchestration.md

&nbsp; - agents/repo-hygiene.md

&nbsp; - agents/documentation.md



\## Structure

\- Lifecycle phases MUST be ordered and named.

\- Phase artifacts MUST be discoverable.



\## File Decomposition

\- Phases:

&nbsp; - MUST define entry and exit criteria.

\- Artifacts:

&nbsp; - MUST define persistence rules.



\## Application Rules

\- Phase transitions MUST be explicit.

\- Orphaned systems MUST be decommissioned.

\- Violations MUST be treated as defects.



