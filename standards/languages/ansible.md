=========================================================

languages/ansible.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# ansible Standards



\## Standards

\- Ansible MUST be used for declarative configuration management and orchestration.

\- Playbooks MUST be idempotent.

\- Roles MUST be used to encapsulate reusable functionality.

\- Inventory MUST be explicit and environment-aware.

\- Variables MUST be scoped appropriately and documented.

\- Secrets MUST NOT be stored in plain text and MUST use secure vault mechanisms.

\- Playbooks MUST avoid shell commands when native modules exist.

\- Tasks MUST be atomic and clearly named.

\- Error handling MUST be explicit.

\- Conditional logic MUST be minimal and readable.

\- Handlers MUST be used for state-change-driven actions.

\- Ansible code MUST be linted and validated.

\- Ansible usage MUST align with agents/devsecops.md and agents/security.md.



\## Scope

In scope:

\- Playbooks

\- Roles

\- Inventories

\- Variables and templates

\- Handlers

\- Modules usage



Out of scope:

\- Infrastructure provisioning tools (languages/terraform.md, languages/cloudformation.md)

\- CI pipeline definition (agents/ci-cd.md)

\- Application runtime logic



Assumptions:

\- Target systems are reachable and managed via SSH or supported transports.

\- Desired state can be expressed declaratively.



\## Responsibilities

\- DevSecOps engineers:

&nbsp; - Author and maintain Ansible code

&nbsp; - Ensure idempotency and safety

&nbsp; - Secure secrets and credentials



\- Reviewers:

&nbsp; - Validate playbook correctness and idempotency

&nbsp; - Reject unsafe or imperative patterns



\## Usage

\- Apply this file when:

&nbsp; - managing configuration with Ansible

&nbsp; - orchestrating system state changes

\- This file MUST be composed with:

&nbsp; - agents/devsecops.md

&nbsp; - agents/security.md

&nbsp; - agents/repo-hygiene.md



\## Structure

\- Playbooks SHOULD reside in a dedicated directory.

\- Roles MUST follow standard Ansible role layout.

\- Inventory MUST be separated by environment.

\- Variables SHOULD be organized by scope and purpose.



\## File Decomposition

\- Playbooks:

&nbsp; - MUST define hosts, roles, and execution order.

\- Roles:

&nbsp; - MUST encapsulate related tasks, handlers, and templates.

\- Inventories:

&nbsp; - MUST define hosts and groups explicitly.

\- Variables:

&nbsp; - MUST be documented and scoped.

\- Templates:

&nbsp; - MUST be parameterized and reusable.



\## Application Rules

\- Idempotency rules:

&nbsp; - Re-running playbooks MUST NOT change state unnecessarily.

\- Security rules:

&nbsp; - Secrets MUST use vaults or external secret stores.

\- Module rules:

&nbsp; - Native modules MUST be preferred over shell.

\- Validation rules:

&nbsp; - Ansible linting MUST pass.

\- Verification rules:

&nbsp; - Playbooks MUST be tested in non-production environments.

&nbsp; - Violations of these standards MUST be treated as defects.



