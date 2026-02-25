=========================================================

platforms/aws.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# aws Standards



\## Standards

\- AWS MUST be used according to the shared responsibility model.

\- Accounts MUST be isolated by environment and risk boundary.

\- IAM MUST follow least-privilege principles.

\- Long-lived credentials MUST NOT be used.

\- Roles MUST be preferred over static credentials.

\- Secrets MUST be stored in managed secret services.

\- Encryption MUST be enabled for data at rest and in transit.

\- Network boundaries MUST be explicit and enforced.

\- Public exposure MUST be intentional and minimized.

\- Service limits MUST be understood and monitored.

\- Costs MUST be monitored, budgeted, and controlled.

\- Resource naming MUST be consistent, deterministic, and environment-aware.

\- Tagging MUST be mandatory for ownership, cost, and lifecycle.

\- Infrastructure MUST be defined as code.

\- Changes MUST be auditable and review-gated.

\- Logging MUST be enabled for all supported services.

\- Monitoring and alerting MUST be configured for critical resources.

\- Backup and recovery MUST be defined and tested.

\- Regional usage MUST be explicit and justified.

\- AWS usage MUST align with agents/security.md, agents/devsecops.md, agents/reliability.md, and agents/observability.md.



\## Scope

In scope:

\- AWS account structure and governance

\- Identity and access management

\- Networking and connectivity

\- Core compute, storage, and managed services

\- Logging, monitoring, and auditing

\- Cost management and controls



Out of scope:

\- Application-level business logic

\- Non-AWS cloud platforms

\- On-prem infrastructure specifics



Assumptions:

\- AWS is used as a primary or supported cloud platform.

\- Multiple environments are required.

\- Automation is preferred over manual configuration.



\## Responsibilities

\- Platform engineers:

&nbsp; - Design and maintain AWS account structure

&nbsp; - Enforce security, networking, and governance controls

&nbsp; - Monitor cost, performance, and reliability



\- Developers:

&nbsp; - Consume AWS services according to standards

&nbsp; - Avoid bypassing platform controls



\- Security teams:

&nbsp; - Define IAM, encryption, and audit requirements

&nbsp; - Monitor and respond to security events



\- Reviewers:

&nbsp; - Validate architecture, cost, and security decisions



\## Usage

\- Apply this file when:

&nbsp; - designing or modifying AWS-based platforms

&nbsp; - deploying workloads to AWS

\- This file MUST be composed with:

&nbsp; - agents/security.md

&nbsp; - agents/devsecops.md

&nbsp; - agents/reliability.md

&nbsp; - agents/observability.md

&nbsp; - agents/repo-hygiene.md

\- Service-specific standards MUST be composed where applicable:

&nbsp; - messaging/sqssns.md

&nbsp; - databases/\*



\## Structure

\- Accounts MUST be separated by environment and purpose.

\- VPCs MUST define explicit network boundaries.

\- Subnets MUST be segmented by function and risk.

\- Security groups and NACLs MUST be minimal and explicit.

\- Resource hierarchies MUST be consistent.



\## File Decomposition

\- Accounts:

&nbsp; - MUST define ownership, purpose, and environment.

\- IAM:

&nbsp; - MUST define roles, policies, and trust relationships.

\- Networking:

&nbsp; - MUST define VPCs, subnets, routing, and gateways.

\- Compute:

&nbsp; - MUST define runtime and scaling behavior.

\- Storage:

&nbsp; - MUST define durability, encryption, and lifecycle.

\- Logging:

&nbsp; - MUST define audit and operational visibility.

\- Monitoring:

&nbsp; - MUST define metrics, alarms, and alerts.

\- Cost controls:

&nbsp; - MUST define budgets and alerts.



\## Application Rules

\- Identity rules:

&nbsp; - Use roles, not users, for workloads.

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

&nbsp; - Security and compliance checks MUST run continuously.

&nbsp; - Platform drift MUST be detected and addressed.

&nbsp; - Violations of these standards MUST be treated as defects.



