=========================================================

languages/github-actions.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# github-actions Standards



\## Standards

\- GitHub Actions MUST be used for CI and automation where GitHub-hosted workflows are selected.

\- Workflows MUST be deterministic, repeatable, and version-controlled.

\- Workflows MUST fail fast on errors.

\- Jobs and steps MUST have clear, descriptive names.

\- Secrets MUST be stored in GitHub Secrets or approved secret managers and MUST NOT be hard-coded.

\- Least privilege MUST be applied to workflow permissions.

\- Actions MUST be pinned to specific versions or commit SHAs.

\- Reusable workflows MUST be preferred for shared logic.

\- Matrix builds MUST be used intentionally and bounded.

\- Artifacts and logs MUST be preserved where needed for debugging and compliance.

\- Workflows MUST support parallel execution where appropriate.

\- Conditional execution MUST be explicit and readable.

\- Workflow configuration MUST be linted and validated.

\- GitHub Actions usage MUST align with agents/ci-cd.md and agents/security.md.



\## Scope

In scope:

\- CI workflows

\- Build, test, and deployment automation

\- Job orchestration and dependencies

\- Secrets and permissions configuration

\- Artifact management



Out of scope:

\- Application code standards

\- Infrastructure provisioning specifics beyond workflow execution

\- Non-GitHub CI platforms



Assumptions:

\- Repositories are hosted on GitHub.

\- CI workflows run on GitHub-hosted or self-hosted runners.

\- Automation is review-gated via version control.



\## Responsibilities

\- DevSecOps engineers:

&nbsp; - Author and maintain workflows

&nbsp; - Enforce security and permission boundaries

&nbsp; - Optimize workflow performance and reliability



\- Developers:

&nbsp; - Ensure workflows support project build and test needs

&nbsp; - Avoid introducing unsafe or brittle steps



\- Reviewers:

&nbsp; - Validate workflow correctness and security

&nbsp; - Reject workflows that use unpinned actions or unsafe permissions



\## Usage

\- Apply this file when:

&nbsp; - creating or modifying GitHub Actions workflows

&nbsp; - automating build, test, or deployment processes

\- This file MUST be composed with:

&nbsp; - agents/ci-cd.md

&nbsp; - agents/security.md

&nbsp; - agents/repo-hygiene.md

\- Platform-specific deployment standards MUST be composed with platforms/\* when applicable.



\## Structure

\- Workflow files MUST reside in .github/workflows/.

\- Reusable workflows SHOULD be placed in a dedicated directory.

\- Workflow names MUST be descriptive and stable.



\## File Decomposition

\- Workflows:

&nbsp; - MUST define triggers, jobs, and steps explicitly.

\- Jobs:

&nbsp; - MUST define execution environment and dependencies.

\- Steps:

&nbsp; - MUST perform a single, clear task.

\- Permissions:

&nbsp; - MUST define required scopes explicitly.

\- Artifacts:

&nbsp; - MUST define retention and usage.



\## Application Rules

\- Security rules:

&nbsp; - Workflow permissions MUST be least privilege.

&nbsp; - Secrets MUST NOT be echoed or logged.

\- Versioning rules:

&nbsp; - Actions MUST be pinned to immutable versions.

\- Reliability rules:

&nbsp; - Retries MUST be used cautiously and explicitly.

\- Performance rules:

&nbsp; - Caching MUST be used where safe and effective.

\- Validation rules:

&nbsp; - Workflows MUST be linted and validated.

\- Verification rules:

&nbsp; - CI failures MUST block merges where required.

&nbsp; - Violations of these standards MUST be treated as defects.



