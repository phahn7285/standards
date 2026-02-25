=========================================================

languages/terraform.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# terraform Standards



\## Standards

\- Terraform MUST be used for infrastructure as code where selected.

\- Infrastructure definitions MUST be declarative, version-controlled, and reproducible.

\- Providers MUST be explicitly defined and version-pinned.

\- Backend configuration MUST be explicit and environment-aware.

\- State files MUST be stored remotely and protected.

\- State locking MUST be enabled.

\- Secrets MUST NOT be embedded in configuration files.

\- Variables MUST be typed and validated.

\- Default values MUST be safe and minimal.

\- Modules MUST be used to enforce reuse and consistency.

\- Module interfaces MUST be explicit and stable.

\- Resource naming MUST be deterministic and environment-aware.

\- Drift detection MUST be enabled and addressed.

\- Destructive changes MUST require explicit approval.

\- Formatting and validation MUST be enforced.

\- Terraform usage MUST align with agents/devsecops.md and agents/security.md.



\## Scope

In scope:

\- Infrastructure provisioning using Terraform

\- Provider configuration and lifecycle management

\- State management and backend configuration

\- Module authoring and reuse

\- Plan, apply, and destroy workflows



Out of scope:

\- Cloud-specific architectural decisions (platforms/\*)

\- CI pipeline orchestration logic (agents/ci-cd.md)

\- Application runtime behavior



Assumptions:

\- Infrastructure is managed through automation.

\- Multiple environments are supported.

\- Changes are review-gated via plans.



\## Responsibilities

\- DevSecOps engineers:

&nbsp; - Author and maintain Terraform configurations

&nbsp; - Enforce secure state handling and provider governance

&nbsp; - Review and approve infrastructure plans



\- Developers:

&nbsp; - Consume exposed infrastructure outputs

&nbsp; - Avoid embedding environment assumptions in application code



\- Reviewers:

&nbsp; - Validate plans for safety and correctness

&nbsp; - Reject unbounded or destructive changes



\## Usage

\- Apply this file when:

&nbsp; - creating or modifying Terraform configurations

&nbsp; - provisioning or updating infrastructure resources

\- This file MUST be composed with:

&nbsp; - agents/devsecops.md

&nbsp; - agents/security.md

&nbsp; - agents/repo-hygiene.md

\- Platform-specific standards MUST be composed with platforms/\* when applicable.



\## Structure

\- Terraform projects SHOULD follow standard layout:

&nbsp; - modules/ for reusable infrastructure components

&nbsp; - env/ or environments/ for environment-specific configuration

&nbsp; - backend/ for backend configuration

\- Root modules MUST be minimal and orchestrate child modules.



\## File Decomposition

\- Root modules:

&nbsp; - MUST wire providers, backends, and child modules.

\- Child modules:

&nbsp; - MUST encapsulate a single infrastructure concern.

\- Variables:

&nbsp; - MUST define type, description, and validation.

\- Outputs:

&nbsp; - MUST expose required values only.

\- Backend configuration:

&nbsp; - MUST define remote state storage and locking.



\## Application Rules

\- Provider rules:

&nbsp; - Provider versions MUST be pinned and reviewed.

\- State rules:

&nbsp; - State files MUST be encrypted and access-controlled.

\- Module rules:

&nbsp; - Modules MUST be reusable and versioned.

\- Plan rules:

&nbsp; - Plans MUST be reviewed before apply.

\- Drift rules:

&nbsp; - Drift MUST be detected and reconciled.

\- Destruction rules:

&nbsp; - Destroy operations MUST require explicit intent.

\- Verification rules:

&nbsp; - Formatting and validation MUST run in CI.

&nbsp; - Infrastructure changes MUST be tested in non-production environments.

&nbsp; - Violations of these standards MUST be treated as defects.



