=========================================================

platforms/azure.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# azure Standards



\## Standards

\- Azure MUST be used according to the shared responsibility model.

\- Subscriptions MUST be isolated by environment and risk boundary.

\- Management groups MUST be used to enforce policy and governance.

\- Azure AD MUST be the single source of identity.

\- Least-privilege access MUST be enforced using RBAC.

\- Long-lived credentials MUST NOT be used.

\- Managed identities MUST be preferred over secrets.

\- Secrets MUST be stored in managed secret services.

\- Encryption MUST be enabled for data at rest and in transit.

\- Network boundaries MUST be explicit and enforced.

\- Public exposure MUST be intentional and minimized.

\- Resource naming MUST be consistent, deterministic, and environment-aware.

\- Tagging MUST be mandatory for ownership, cost, and lifecycle.

\- Infrastructure MUST be defined as code.

\- Changes MUST be auditable and review-gated.

\- Logging MUST be enabled for all supported services.

\- Monitoring and alerting MUST be configured for critical resources.

\- Backup and disaster recovery MUST be defined and tested.

\- Region selection MUST be explicit and justified.

\- Azure usage MUST align with agents/security.md, agents/devsecops.md, agents/reliability.md, and agents/observability.md.



\## Scope

In scope:

\- Azure tenant and subscription governance

\- Identity and access management

\- Networking and connectivity

\- Core compute, storage, and managed services

\- Logging, monitoring, and auditing

\- Cost management and controls



Out of scope:

\- Application-level business logic

\- Non-Azure cloud platforms

\- On-prem infrastructure specifics



Assumptions:

\- Azure is used as a primary or supported cloud platform.

\- Multiple environments are required.

\- Automation is preferred over manual configuration.



\## Responsibilities

\- Platform engineers:

&nbsp; - Design and maintain Azure tenant and subscription structure

&nbsp; - Enforce security, networking, and governance controls

&nbsp; - Monitor cost, performance, and reliability



\- Developers:

&nbsp; - Consume Azure services according to standards

&nbsp; - Avoid bypassing platform controls



\- Security teams:

&nbsp; - Define RBAC, encryption, and audit requirements

&nbsp; - Monitor and respond to security events



\- Reviewers:

&nbsp; - Validate architecture, cost, and security decisions



\## Usage

\- Apply this file when:

&nbsp; - designing or modifying Azure-based platforms

&nbsp; - deploying workloads to Azure

\- This file MUST be composed with:

&nbsp; - agents/security.md

&nbsp; - agents/devsecops.md

&nbsp; - agents/reliability.md

&nbsp; - agents/observability.md

&nbsp; - agents/repo-hygiene.md

\- Service-specific standards MUST be composed where applicable:

&nbsp; - messaging/\*

&nbsp; - databases/\*



\## Structure

\- Management groups MUST define governance hierarchy.

\- Subscriptions MUST represent environment and purpose.

\- Resource groups MUST define lifecycle and ownership.

\- VNets MUST define explicit network boundaries.

\- Subnets MUST be segmented by function and risk.

\- Network security groups MUST be minimal and explicit.



\## File Decomposition

\- Tenant:

&nbsp; - MUST define identity and policy boundaries.

\- Management groups:

&nbsp; - MUST define governance layers.

\- Subscriptions:

&nbsp; - MUST define environment and workload scope.

\- Resource groups:

&nbsp; - MUST define ownership and lifecycle.

\- Identity:

&nbsp; - MUST define RBAC and managed identities.

\- Networking:

&nbsp; - MUST define VNets, subnets, and routing.

\- Compute:

&nbsp; - MUST define runtime and scaling behavior.

\- Storage:

&nbsp; - MUST define durability, encryption, and lifecycle.

\- Logging:

&nbsp; - MUST define audit and operational visibility.

\- Monitoring:

&nbsp; - MUST define metrics, alerts, and diagnostics.

\- Cost controls:

&nbsp; - MUST define budgets and alerts.



\## Application Rules

\- Identity rules:

&nbsp; - Use managed identities for workloads.

\- Network rules:

&nbsp; - Deny by default, allow explicitly.

\- Encryption rules:

&nbsp; - Encrypt all supported resources.

\- Change rules:

&nbsp; - All changes MUST be automated and logged.

\- Cost rules:

&nbsp; - Track and review costs continuously.

\- Recovery rules:

&nbsp; - Backups MUST be tested.

\- Verification rules:

&nbsp; - Policy compliance MUST be enforced.

&nbsp; - Platform drift MUST be detected and addressed.

&nbsp; - Violations of these standards MUST be treated as defects.



