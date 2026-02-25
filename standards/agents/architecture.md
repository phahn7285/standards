=========================================================

agents/architecture.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# architecture Standards



\## Standards

\- System architecture MUST be explicitly defined and documented before implementation begins.

\- Architecture MUST enforce clear boundaries between components and layers.

\- Architecture MUST minimize coupling and maximize cohesion.

\- Architecture MUST define ownership and responsibility per component.

\- Architecture MUST be evolvable without requiring large-scale rewrites.

\- Architecture MUST support testability at unit, integration, and system levels.

\- Architecture MUST define failure modes and recovery strategies.

\- Architecture MUST define data flow and control flow explicitly.

\- Architecture MUST define trust boundaries and security zones.

\- Architecture MUST define deployment topology and runtime boundaries.

\- Architecture MUST define scalability and performance characteristics.

\- Architecture MUST define observability requirements at design time.

\- Architecture MUST define configuration and environment separation.

\- Architecture MUST avoid global shared mutable state across boundaries.

\- Architecture MUST avoid circular dependencies between components.

\- Architecture MUST prefer asynchronous boundaries where latency or reliability requires it.

\- Architecture MUST document external dependencies and integration points.

\- Architecture MUST define backward compatibility and versioning strategy for public interfaces.

\- Architecture MUST align with agents/security.md, agents/privacy.md, agents/reliability.md, and agents/observability.md.



\## Scope

In scope:

\- Application and system-level architecture

\- Component and service boundaries

\- Layering and dependency direction

\- Integration patterns and interfaces

\- Data ownership and data flow

\- Deployment and runtime topology

\- Scalability, availability, and fault tolerance

\- Configuration and environment separation



Out of scope:

\- Language-specific implementation details (languages/\*)

\- Database engine internals (databases/\*)

\- Messaging platform internals (messaging/\*)

\- Cloud provider service configuration (platforms/\*)

\- CI/CD pipeline definition (agents/ci-cd.md)



Assumptions:

\- Systems may be monoliths, modular monoliths, or distributed services.

\- Systems may evolve over time and require incremental refactoring.

\- Systems may operate in regulated or high-availability environments.



\## Responsibilities

\- Architects and senior engineers:

&nbsp; - Define and approve architectural patterns and boundaries

&nbsp; - Ensure alignment with organizational standards

&nbsp; - Review significant architectural changes



\- Application engineers:

&nbsp; - Implement components according to defined boundaries

&nbsp; - Avoid introducing architectural violations

&nbsp; - Document deviations and required refactors



\- Reviewers:

&nbsp; - Enforce adherence to architectural boundaries

&nbsp; - Reject changes that increase coupling or violate dependency rules



\- DevSecOps:

&nbsp; - Validate deployment topology aligns with architecture

&nbsp; - Ensure runtime configuration matches architectural intent



\## Usage

\- Apply this file when:

&nbsp; - creating a new application or service

&nbsp; - introducing a new major component or integration

&nbsp; - refactoring system structure

&nbsp; - changing deployment topology

\- This file MUST be composed with:

&nbsp; - agents/security.md

&nbsp; - agents/privacy.md

&nbsp; - agents/reliability.md

&nbsp; - agents/observability.md

&nbsp; - agents/api-contracts.md when APIs are present



\## Structure

\- Architectures SHOULD be described using:

&nbsp; - component diagrams

&nbsp; - sequence or interaction diagrams

&nbsp; - deployment diagrams

\- Repositories SHOULD reflect architecture through:

&nbsp; - top-level module or package boundaries

&nbsp; - clear separation of layers (for example: ui, application, domain, infrastructure)

\- Dependency direction MUST be enforced by tooling or review.

\- Configuration MUST be externalized and environment-specific.



\## File Decomposition

\- Architecture documentation artifacts MAY include:

&nbsp; - architecture.md or docs/architecture.md for high-level design

&nbsp; - diagrams/ for visual artifacts

&nbsp; - adrs/ for architectural decision records

\- Each architectural artifact MUST:

&nbsp; - identify the decision or structure it represents

&nbsp; - define scope and assumptions

&nbsp; - document trade-offs and constraints



\## Application Rules

\- Boundary rules:

&nbsp; - Higher-level layers MUST NOT depend on lower-level implementation details.

&nbsp; - Domain logic MUST NOT depend on infrastructure concerns.

&nbsp; - UI components MUST NOT contain business logic.

\- Dependency rules:

&nbsp; - Dependencies MUST point inward toward stable abstractions.

&nbsp; - Cross-boundary calls MUST use defined interfaces or contracts.

\- Change rules:

&nbsp; - Architectural changes MUST be reviewed explicitly.

&nbsp; - Incremental refactoring MUST preserve behavior.

\- Failure rules:

&nbsp; - All components MUST define behavior for dependency failure.

&nbsp; - Cascading failures MUST be mitigated via isolation patterns.

\- Verification rules:

&nbsp; - Architecture compliance MUST be verifiable via code review and tooling.

&nbsp; - Violations MUST be treated as defects and corrected.



