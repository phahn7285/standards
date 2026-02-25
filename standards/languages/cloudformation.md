=========================================================

languages/cloudformation.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# cloudformation Standards



\## Standards

\- AWS CloudFormation MUST be used for declarative infrastructure provisioning on AWS where selected.

\- Templates MUST be version-controlled and treated as code.

\- Deployments MUST be idempotent and repeatable.

\- Parameters MUST be explicit and environment-aware.

\- Hard-coded environment-specific values MUST be avoided.

\- Secrets MUST NOT be embedded in templates and MUST reference secure secret stores.

\- Nested stacks or modules MUST be used for reuse and composition.

\- Resource naming MUST be consistent, deterministic, and environment-aware.

\- Outputs MUST be explicit, minimal, and documented.

\- IAM roles and policies MUST follow least privilege.

\- Network security configurations MUST use secure defaults.

\- Change sets MUST be used to review infrastructure changes before execution.

\- Templates MUST be validated automatically.

\- CloudFormation usage MUST align with agents/devsecops.md and agents/security.md.



\## Scope

In scope:

\- AWS resource definitions

\- Parameter, mapping, and condition usage

\- Modularization using nested stacks

\- Change set review and validation

\- IAM, networking, and security configuration

\- Stack lifecycle management



Out of scope:

\- Non-AWS infrastructure (languages/terraform.md, languages/bicep.md)

\- Application runtime logic

\- CI pipeline definition specifics (agents/ci-cd.md)



Assumptions:

\- Deployments target AWS environments.

\- Infrastructure changes are automated and review-gated.



\## Responsibilities

\- DevSecOps engineers:

&nbsp; - Author and maintain CloudFormation templates

&nbsp; - Ensure idempotent and secure deployments

&nbsp; - Manage environment separation



\- Reviewers:

&nbsp; - Validate security, correctness, and change impact

&nbsp; - Reject templates that embed secrets or unsafe defaults



\## Usage

\- Apply this file when:

&nbsp; - defining AWS infrastructure using CloudFormation

&nbsp; - modifying resource definitions, parameters, or policies

\- This file MUST be composed with:

&nbsp; - agents/devsecops.md

&nbsp; - agents/security.md

&nbsp; - agents/repo-hygiene.md

\- AWS-specific standards MUST be composed with platforms/aws.md when applicable.



\## Structure

\- Templates SHOULD be organized by domain and environment.

\- Nested stacks SHOULD be placed in a dedicated directory.

\- Parameter files or mechanisms MUST separate environment values.



\## File Decomposition

\- Root templates:

&nbsp; - MUST declare top-level stacks and nested stack composition.

\- Nested stacks:

&nbsp; - MUST encapsulate reusable infrastructure components.

\- Parameters:

&nbsp; - MUST define all environment-specific values.

\- Mappings and conditions:

&nbsp; - MUST be used to control environment-specific behavior.

\- Outputs:

&nbsp; - MUST expose only required resource identifiers.



\## Application Rules

\- Parameterization rules:

&nbsp; - All environment-specific values MUST be parameters or mappings.

\- Secret rules:

&nbsp; - Secrets MUST reference secure stores such as AWS Secrets Manager or SSM.

\- Validation rules:

&nbsp; - Templates MUST pass validation before deployment.

\- IAM rules:

&nbsp; - Policies MUST be least privilege and reviewed.

\- Drift rules:

&nbsp; - Stack drift MUST be detected and addressed.

\- Verification rules:

&nbsp; - Infrastructure changes MUST be tested in non-production environments.

&nbsp; - Violations of these standards MUST be treated as defects.



