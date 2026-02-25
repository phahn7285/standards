=========================================================

languages/gitlab-ci.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# gitlab-ci Standards



\## Standards

\- GitLab CI MUST be used for CI and automation where GitLab-hosted pipelines are selected.

\- Pipelines MUST be deterministic, repeatable, and version-controlled.

\- Pipelines MUST fail fast on errors.

\- Jobs and stages MUST have clear, descriptive names.

\- Secrets MUST be stored using GitLab CI variables or approved secret managers and MUST NOT be hard-coded.

\- Least privilege MUST be applied to job permissions and runner access.

\- Included templates MUST be version-pinned.

\- Reusable pipeline templates MUST be preferred for shared logic.

\- Parallel and matrix jobs MUST be used intentionally and bounded.

\- Artifacts and logs MUST be preserved where required for debugging and compliance.

\- Conditional execution MUST be explicit and readable.

\- Pipeline configuration MUST be validated and linted.

\- GitLab CI usage MUST align with agents/ci-cd.md and agents/security.md.



\## Scope

In scope:

\- CI pipelines and job definitions

\- Build, test, and deployment automation

\- Stage orchestration and dependencies

\- Secrets and variable management

\- Artifact and cache management



Out of scope:

\- Application code standards

\- Infrastructure provisioning specifics beyond pipeline execution

\- Non-GitLab CI platforms



Assumptions:

\- Repositories are hosted on GitLab.

\- Pipelines run on GitLab-managed or self-hosted runners.

\- Automation is review-gated via version control.



\## Responsibilities

\- DevSecOps engineers:

&nbsp; - Author and maintain .gitlab-ci.yml configurations

&nbsp; - Enforce security, permissions, and runner isolation

&nbsp; - Optimize pipeline performance and reliability



\- Developers:

&nbsp; - Ensure pipelines support build and test requirements

&nbsp; - Avoid introducing unsafe or brittle jobs



\- Reviewers:

&nbsp; - Validate pipeline correctness and security

&nbsp; - Reject configurations that expose secrets or excessive permissions



\## Usage

\- Apply this file when:

&nbsp; - creating or modifying GitLab CI pipelines

&nbsp; - automating build, test, or deployment processes

\- This file MUST be composed with:

&nbsp; - agents/ci-cd.md

&nbsp; - agents/security.md

&nbsp; - agents/repo-hygiene.md

\- Platform-specific deployment standards MUST be composed with platforms/\* when applicable.



\## Structure

\- CI configuration MUST reside in .gitlab-ci.yml or approved included files.

\- Stages MUST be defined explicitly and ordered.

\- Templates SHOULD be stored in a shared repository or directory.



\## File Decomposition

\- Stages:

&nbsp; - MUST define pipeline flow and ordering.

\- Jobs:

&nbsp; - MUST define execution image, script, and artifacts.

\- Variables:

&nbsp; - MUST define environment-specific configuration.

\- Includes:

&nbsp; - MUST reference version-pinned templates.

\- Caches:

&nbsp; - MUST define scope and invalidation behavior.



\## Application Rules

\- Security rules:

&nbsp; - Secrets MUST NOT be echoed or logged.

&nbsp; - Protected variables MUST be used for sensitive values.

\- Versioning rules:

&nbsp; - Included templates MUST be pinned.

\- Reliability rules:

&nbsp; - Retries MUST be explicit and justified.

\- Performance rules:

&nbsp; - Caching MUST be used carefully and predictably.

\- Validation rules:

&nbsp; - Pipelines MUST pass GitLab CI lint validation.

\- Verification rules:

&nbsp; - Pipeline failures MUST block merges where required.

&nbsp; - Violations of these standards MUST be treated as defects.



