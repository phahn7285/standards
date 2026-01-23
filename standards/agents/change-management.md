=========================================================

agents/change-management.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# change-management Standards



\## Standards

\- Changes MUST be intentional, reviewed, and traceable.

\- Breaking changes MUST be explicitly declared.

\- Backward compatibility MUST be preserved where required.

\- Deprecation MUST follow a defined process.

\- Change ownership MUST be explicit.

\- Changes MUST be versioned.

\- Emergency changes MUST be documented post hoc.

\- Change impact MUST be assessed prior to execution.



\## Scope

In scope:

\- Standards evolution

\- System and interface changes

\- Deprecation and removal



Out of scope:

\- Business change management processes



Assumptions:

\- Systems and standards evolve.

\- Consumers depend on stability.



\## Responsibilities

\- Change owners:

&nbsp; - Define and document changes



\- Reviewers:

&nbsp; - Validate impact and safety



\## Usage

\- Apply this file when:

&nbsp; - modifying standards or interfaces

\- This file MUST be composed with:

&nbsp; - agents/orchestration.md

&nbsp; - agents/repo-hygiene.md



\## Structure

\- Changes MUST be versioned.

\- Deprecations MUST be time-bounded.



\## File Decomposition

\- Change records:

&nbsp; - MUST define scope and impact.

\- Deprecations:

&nbsp; - MUST define timelines.



\## Application Rules

\- Undocumented changes MUST NOT be deployed.

\- Breaking changes MUST require approval.

\- Violations MUST be treated as defects.



