=========================================================

platforms/gcp.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# gcp Standards



\## Standards

\- GCP MUST be used according to the shared responsibility model.

\- Projects MUST be isolated by environment and risk boundary.

\- IAM MUST follow least-privilege principles.

\- Service accounts MUST be used for workloads.

\- Long-lived credentials MUST NOT be used.

\- Secrets MUST be stored in managed secret services.

\- Encryption MUST be enabled for data at rest and in transit.

\- Network boundaries MUST be explicit and enforced.

\- Public exposure MUST be intentional and minimized.

\- Resource naming MUST be consistent and environment-aware.

\- Labels MUST be mandatory for ownership and cost tracking.

\- Infrastructure MUST be defined as code.

\- Logging MUST be enabled by default.

\- Monitoring and alerting MUST be configured.

\- Backup and recovery MUST be defined.

\- GCP usage MUST align with agents/security.md, agents/devsecops.md, agents/reliability.md, and agents/observability.md.



\## Scope

In scope:

\- GCP project governance

\- Identity and access management

\- Networking and connectivity

\- Core GCP services

\- Logging, monitoring, and cost management



Out of scope:

\- Application business logic

\- Non-GCP platforms



Assumptions:

\- GCP may be a primary or secondary platform.

\- Multiple environments exist.



\## Responsibilities

\- Platform engineers:

&nbsp; - Govern projects and IAM

&nbsp; - Enforce security and reliability



\- Developers:

&nbsp; - Consume services according to standards



\## Usage

\- Apply this file when:

&nbsp; - deploying workloads to GCP

\- This file MUST be composed with:

&nbsp; - agents/security.md

&nbsp; - agents/devsecops.md

&nbsp; - agents/reliability.md

&nbsp; - agents/observability.md



\## Structure

\- Organizations define top-level boundaries.

\- Projects define workload scope.

\- VPCs define network boundaries.



\## File Decomposition

\- Projects:

&nbsp; - MUST define environment and ownership.

\- IAM:

&nbsp; - MUST define roles and bindings.

\- Networking:

&nbsp; - MUST define VPCs and subnets.

\- Services:

&nbsp; - MUST define runtime and scaling behavior.

\- Monitoring:

&nbsp; - MUST define metrics and alerts.



\## Application Rules

\- Identity MUST use service accounts.

\- Encryption MUST be enabled.

\- Changes MUST be automated and auditable.

\- Drift MUST be detected.

\- Violations MUST be treated as defects.



