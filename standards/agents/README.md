=========================================================

agents/README.md

=========================================================



\# agents Standards



\## Standards

Cross-cutting standards that govern system-wide behavior, quality, security, orchestration, and roles.



\## Scope

Architecture, engineering practices, CI/CD, security, testing, reliability, operations, orchestration, and role-specific agent behavior.



\## Responsibilities

\- Define organization-wide non-negotiable standards

\- Provide orchestration and role composition rules

\- Override lower-level standards where conflicts exist

\- Ensure deterministic behavior across repositories and agents



\## Usage

Mandatory for all repositories, applications, features, and generated agents regardless of technology stack.



\## Structure

agents/

|-- accessibility.md Accessibility standards

|-- ai-application.md AI application and agent runtime standards

|-- api-contracts.md API schemas, versioning, and contract enforcement

|-- architecture.md System design principles and boundaries

|-- backend.md Backend service implementation standards

|-- change-management.md Standards for controlled evolution and breaking changes

|-- ci-cd.md Build, deployment, and release standards

|-- code-review.md Code review requirements

|-- coding-standards.md Global coding conventions

|-- compliance.md Regulatory mapping, evidence requirements, audit readiness, policy enforcement boundaries, overrides rules via orchestration

|-- data-ml.md Data and machine learning pipeline standards

|-- dependencies.md Dependency governance standards

|-- devsecops.md Secure delivery and automation standards

|-- documentation.md Documentation requirements

|-- frontend.md Front-end application standards

|-- incident-response.md Incident handling and escalation standards

|-- change-management.md Standards for controlled evolution and breaking changes

|-- marketing.md Marketing and SEO standards

|-- observability.md Logging, metrics, and tracing standards

|-- orchestration.md Standards selection, composition, and routing rules

|-- performance.md Performance engineering standards

|-- platform.md Platform abstraction and portability standards

|-- privacy.md Privacy, PII, and regulatory standards

|-- qa.md Quality assurance standards

|-- reliability.md Reliability and availability standards

|-- repo-hygiene.md Repository structure and maintenance standards

|-- security.md Security standards

|-- sre.md Site reliability engineering standards

|-- tests.md Testing strategy and execution standards

`-- README.md Directory mapping



\## File Decomposition

Each file defines exactly one cross-cutting standards domain.

No file duplicates rules defined in another agents file.



\## Application Rules

\- Always applied

\- Highest precedence in conflicts

\- Standards selection, composition, and precedence are governed exclusively by agents/orchestration.md

