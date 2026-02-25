=========================================================

agents/platform.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# platform Standards



\## Standards

\- Platforms MUST provide consistent, secure, and reliable runtime foundations for applications.

\- Platform concerns MUST be abstracted from application business logic.

\- Platform selection MUST prioritize portability, security, and operational maturity.

\- Platform configurations MUST be defined as code and version-controlled.

\- Platform services MUST be consumed through well-defined interfaces.

\- Platform capabilities MUST be discoverable and documented.

\- Platform usage MUST enforce least privilege and isolation by default.

\- Platform changes MUST be review-gated and auditable.

\- Platform dependencies MUST be explicit and governed.

\- Platform configuration MUST be environment-specific and externalized.

\- Platform services MUST support observability, reliability, and scalability requirements.

\- Platform usage MUST align with agents/security.md, agents/privacy.md, agents/reliability.md, and agents/observability.md.

\- Platform constraints MUST be respected by application architecture and deployment models.

\- Platform lock-in MUST be minimized where feasible.



\## Scope

In scope:

\- Cloud and on-prem platforms

\- Runtime environments and hosting models

\- Networking, identity, and access foundations

\- Managed services consumption patterns

\- Platform-level configuration and governance

\- Platform abstraction and portability strategies



Out of scope:

\- Application business logic (agents/backend.md, agents/frontend.md)

\- CI/CD pipeline definitions (agents/ci-cd.md)

\- Database engine internals (databases/\*)

\- Messaging broker internals (messaging/\*)

\- Vendor-specific implementation details beyond standards (platforms/\*)



Assumptions:

\- Applications may run on cloud, on-prem, hybrid, or local environments.

\- Multiple platforms may coexist.

\- Platform capabilities evolve over time.



\## Responsibilities

\- Platform engineers:

&nbsp; - Define and maintain platform standards and abstractions

&nbsp; - Ensure platform security, reliability, and scalability

&nbsp; - Provide shared services and documentation



\- Application engineers:

&nbsp; - Consume platform services through approved interfaces

&nbsp; - Respect platform constraints and governance rules



\- DevSecOps:

&nbsp; - Enforce platform configuration and access controls

&nbsp; - Integrate platform services into delivery pipelines



\- Reviewers:

&nbsp; - Validate platform usage aligns with standards

&nbsp; - Reject changes that bypass platform governance



\## Usage

\- Apply this file when:

&nbsp; - selecting or modifying a platform

&nbsp; - integrating with platform-managed services

&nbsp; - defining runtime environments and deployment models

\- This file MUST be composed with:

&nbsp; - agents/security.md

&nbsp; - agents/privacy.md

&nbsp; - agents/reliability.md

&nbsp; - agents/observability.md

&nbsp; - agents/devsecops.md

\- Platform-specific standards MUST be composed from platforms/\* files.



\## Structure

\- Platform configuration SHOULD be organized by concern:

&nbsp; - identity/ for IAM configuration

&nbsp; - network/ for networking and connectivity

&nbsp; - runtime/ for compute and execution environments

&nbsp; - services/ for managed service configuration

\- Environment-specific configuration MUST be separated.

\- Platform abstractions SHOULD be documented and reusable.



\## File Decomposition

\- Identity and access:

&nbsp; - MUST define roles, permissions, and trust boundaries.

&nbsp; - MUST enforce least privilege.

\- Networking:

&nbsp; - MUST define ingress, egress, and segmentation.

&nbsp; - MUST enforce secure communication.

\- Runtime:

&nbsp; - MUST define execution environments and resource limits.

\- Managed services:

&nbsp; - MUST define usage patterns and constraints.

&nbsp; - MUST define lifecycle and ownership.



\## Application Rules

\- Governance rules:

&nbsp; - Platform usage MUST comply with organizational policies.

&nbsp; - Unauthorized platform services MUST NOT be used.

\- Portability rules:

&nbsp; - Applications SHOULD avoid hard dependencies on platform-specific features when feasible.

\- Security rules:

&nbsp; - Platform access MUST be auditable.

&nbsp; - Secrets MUST be managed per agents/security.md.

\- Reliability rules:

&nbsp; - Platform services MUST meet availability requirements.

&nbsp; - Failures MUST be isolated and observable.

\- Change rules:

&nbsp; - Platform changes MUST be reviewed and documented.

\- Verification rules:

&nbsp; - Platform integrations MUST be validated before release.

&nbsp; - Violations of these standards MUST be treated as defects.



