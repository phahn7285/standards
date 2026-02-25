=========================================================

languages/yaml.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# yaml Standards



\## Standards

\- YAML MUST be used strictly as a data and configuration format.

\- YAML documents MUST be valid, well-formed, and parseable by standard YAML parsers.

\- YAML versions and schema expectations MUST be explicit where supported.

\- Indentation MUST use spaces only.

\- Indentation MUST be consistent within a document.

\- Tabs MUST NOT be used.

\- Key naming MUST be consistent and descriptive.

\- Anchors and aliases MUST be used sparingly and only when they improve maintainability.

\- Complex YAML features MUST be avoided when they reduce readability or portability.

\- Scalars MUST use quoting intentionally to avoid type ambiguity.

\- Boolean-like strings MUST be quoted when ambiguity exists.

\- Dates and timestamps MUST be quoted unless a schema explicitly requires typed parsing.

\- Comments MUST be used sparingly and MUST NOT replace schema or documentation.

\- Secrets MUST NOT be embedded in plaintext YAML.

\- YAML used for IaC or CI MUST be validated with schema-aware tooling.

\- YAML usage MUST align with agents/coding-standards.md and agents/security.md.



\## Scope

In scope:

\- Configuration files expressed in YAML

\- CI configuration YAML

\- IaC and orchestration YAML

\- Data exchange documents expressed in YAML



Out of scope:

\- Application business logic

\- Binary data encoding

\- Presentation formatting rules beyond YAML validity



Assumptions:

\- YAML may be consumed by multiple tools with different YAML feature support.

\- Portability and readability are priorities.

\- Schema validation improves reliability.



\## Responsibilities

\- Developers:

&nbsp; - Produce valid, consistent YAML

&nbsp; - Avoid ambiguous typing and complex features

&nbsp; - Avoid embedding secrets



\- Reviewers:

&nbsp; - Validate structure, naming, and correctness

&nbsp; - Reject ambiguous or overly complex YAML



\- DevSecOps:

&nbsp; - Enforce validation and schema checks in CI for YAML-driven tools



\## Usage

\- Apply this file when:

&nbsp; - creating or modifying YAML configuration or payloads

&nbsp; - authoring CI or IaC YAML files

\- This file MUST be composed with:

&nbsp; - agents/coding-standards.md

&nbsp; - agents/security.md

&nbsp; - agents/tests.md when validation is automated

\- Tool-specific YAML MUST also compose with:

&nbsp; - languages/kubernetes-yaml.md for Kubernetes manifests

&nbsp; - languages/github-actions.md for GitHub workflows

&nbsp; - languages/gitlab-ci.md for GitLab pipelines



\## Structure

\- YAML files SHOULD be formatted consistently.

\- Key ordering SHOULD be logical and grouped by purpose.

\- Repeated structures SHOULD be factored carefully without excessive anchors.



\## File Decomposition

\- Configuration YAML:

&nbsp; - MUST define explicit keys and values.

\- Tooling YAML:

&nbsp; - MUST conform to tool schemas and validation rules.

\- Secret references:

&nbsp; - MUST reference secure secret mechanisms.

\- Test fixtures:

&nbsp; - MUST use minimal, representative data.



\## Application Rules

\- Validation rules:

&nbsp; - YAML MUST be validated before use.

&nbsp; - Schema validation SHOULD be enforced where applicable.

\- Compatibility rules:

&nbsp; - Avoid non-portable YAML features unless explicitly required.

\- Security rules:

&nbsp; - Secrets MUST be referenced, not embedded.

\- Maintainability rules:

&nbsp; - Avoid excessive anchors and aliases.

\- Verification rules:

&nbsp; - Automated validation MUST run in CI when applicable.

&nbsp; - Violations of these standards MUST be treated as defects.



