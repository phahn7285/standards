=========================================================

languages/bicep.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# bicep Standards



\## Standards

\- Bicep MUST be used for Azure infrastructure as code where Azure Resource Manager templates apply.

\- Bicep files MUST be version-controlled and treated as code.

\- Deployments MUST be idempotent and repeatable.

\- Parameters MUST be explicit and environment-aware.

\- Hard-coded environment values MUST be avoided.

\- Secrets MUST NOT be embedded in templates and MUST use secure references.

\- Modules MUST be used for reuse and composition.

\- Resource naming MUST be consistent and deterministic.

\- Outputs MUST be explicit and minimal.

\- RBAC assignments MUST follow least privilege.

\- Network security settings MUST follow secure defaults.

\- Bicep deployments MUST be validated automatically.

\- Bicep usage MUST align with agents/devsecops.md and agents/security.md.



\## Scope

In scope:

\- Azure resource definitions

\- Parameter and variable usage

\- Modularization with Bicep modules

\- Deployment validation and linting

\- RBAC and identity configuration

\- Network and security configuration



Out of scope:

\- Non-Azure infrastructure (languages/terraform.md, languages/cloudformation.md)

\- Application runtime logic

\- CI pipeline definition specifics (agents/ci-cd.md)



Assumptions:

\- Deployments target Azure environments.

\- Infrastructure changes are review-gated and automated.



\## Responsibilities

\- DevSecOps engineers:

&nbsp; - Author and maintain Bicep templates

&nbsp; - Ensure idempotent deployments and secure defaults

&nbsp; - Manage parameters and environment separation



\- Reviewers:

&nbsp; - Validate security and correctness of templates

&nbsp; - Reject templates that embed secrets or unsafe defaults



\## Usage

\- Apply this file when:

&nbsp; - defining Azure infrastructure using Bicep

&nbsp; - modifying resource definitions or parameters

\- This file MUST be composed with:

&nbsp; - agents/devsecops.md

&nbsp; - agents/security.md

&nbsp; - agents/repo-hygiene.md

\- Azure-specific standards MUST be composed with platforms/azure.md when applicable.



\## Structure

\- Bicep files SHOULD be organized by domain and environment:

&nbsp; - modules/ for reusable components

&nbsp; - env/ for environment parameter files

\- Naming conventions MUST be consistent.

\- Parameter files MUST be separated per environment.



\## File Decomposition

\- Main deployment files:

&nbsp; - MUST declare top-level resources and module composition.

\- Modules:

&nbsp; - MUST encapsulate reusable resource groups.

\- Parameters:

&nbsp; - MUST define environment-specific values.

\- Outputs:

&nbsp; - MUST expose only required values.



\## Application Rules

\- Parameterization rules:

&nbsp; - All environment-specific values MUST be parameters.

\- Secret rules:

&nbsp; - Secrets MUST use Key Vault or secure references.

\- Validation rules:

&nbsp; - Templates MUST be linted and validated before deployment.

\- RBAC rules:

&nbsp; - Permissions MUST be least privilege.

\- Drift rules:

&nbsp; - Deployments MUST detect and correct drift.

\- Verification rules:

&nbsp; - Infrastructure changes MUST be tested in non-production environments.

&nbsp; - Violations of these standards MUST be treated as defects.



