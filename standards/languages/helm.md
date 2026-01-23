=========================================================

languages/helm.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# helm Standards



\## Standards

\- Helm MUST be used for packaging and deploying Kubernetes applications where selected.

\- Charts MUST be version-controlled and treated as code.

\- Charts MUST be deterministic and reproducible.

\- Values MUST be parameterized and environment-aware.

\- Hard-coded environment-specific values MUST be avoided.

\- Secrets MUST NOT be embedded in charts and MUST reference secure secret mechanisms.

\- Templates MUST be readable, minimal, and maintainable.

\- Logic in templates MUST be limited and justified.

\- Default values MUST be safe and secure.

\- Chart dependencies MUST be explicit and version-pinned.

\- Resource naming MUST be consistent and deterministic.

\- Linting and validation MUST be enforced.

\- Helm usage MUST align with agents/devsecops.md and agents/security.md.



\## Scope

In scope:

\- Helm chart authoring and structure

\- Template rendering and parameterization

\- Chart packaging and versioning

\- Dependency management

\- Validation and linting practices



Out of scope:

\- Kubernetes cluster provisioning (platforms/\*)

\- CI pipeline logic (agents/ci-cd.md)

\- Application runtime behavior



Assumptions:

\- Deployments target Kubernetes environments.

\- Charts are deployed via automated pipelines.

\- Environment separation is required.



\## Responsibilities

\- DevSecOps engineers:

&nbsp; - Author and maintain Helm charts

&nbsp; - Enforce secure defaults and parameterization

&nbsp; - Manage chart versions and dependencies



\- Developers:

&nbsp; - Ensure applications expose configurable values

&nbsp; - Avoid embedding environment assumptions



\- Reviewers:

&nbsp; - Validate chart correctness and security

&nbsp; - Reject unsafe or overly complex templates



\## Usage

\- Apply this file when:

&nbsp; - creating or modifying Helm charts

&nbsp; - packaging Kubernetes applications

\- This file MUST be composed with:

&nbsp; - agents/devsecops.md

&nbsp; - agents/security.md

&nbsp; - agents/repo-hygiene.md

&nbsp; - languages/kubernetes-yaml.md

\- Platform-specific standards MUST be composed with platforms/\* when applicable.



\## Structure

\- Helm charts MUST follow standard layout:

&nbsp; - Chart.yaml for metadata

&nbsp; - values.yaml for defaults

&nbsp; - templates/ for Kubernetes manifests

&nbsp; - charts/ for dependencies

\- Charts SHOULD be scoped to a single application or service.



\## File Decomposition

\- Chart.yaml:

&nbsp; - MUST define name, version, and dependencies.

\- values.yaml:

&nbsp; - MUST define default, safe values.

\- Templates:

&nbsp; - MUST define Kubernetes resources.

\- Helpers:

&nbsp; - MUST define reusable template functions.

\- Dependencies:

&nbsp; - MUST be version-pinned and documented.



\## Application Rules

\- Parameterization rules:

&nbsp; - All environment-specific values MUST be configurable.

\- Secret rules:

&nbsp; - Secrets MUST be referenced, not defined.

\- Template rules:

&nbsp; - Avoid complex conditionals and loops.

\- Validation rules:

&nbsp; - Charts MUST pass helm lint.

\- Upgrade rules:

&nbsp; - Charts MUST support safe upgrades and rollbacks.

\- Verification rules:

&nbsp; - Charts MUST be tested in non-production environments.

&nbsp; - Violations of these standards MUST be treated as defects.



