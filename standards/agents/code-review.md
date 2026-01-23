=========================================================

agents/code-review.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# code-review Standards



\## Standards

\- All code changes MUST be reviewed before merge.

\- Reviews MUST verify correctness, safety, and compliance with standards.

\- Reviews MUST be completed by a qualified reviewer who is not the author.

\- Reviews MUST be objective, evidence-based, and standards-driven.

\- Reviews MUST ensure changes are minimal, intentional, and scoped.

\- Reviews MUST verify that tests are added or updated to cover changes.

\- Reviews MUST verify that failures and edge cases are handled.

\- Reviews MUST verify adherence to agents/coding-standards.md.

\- Reviews MUST verify adherence to agents/security.md and agents/privacy.md.

\- Reviews MUST verify adherence to agents/tests.md.

\- Reviews MUST verify adherence to agents/api-contracts.md when APIs are changed.

\- Reviews MUST verify that observability is added or updated when behavior changes.

\- Reviews MUST verify that documentation is updated when required.

\- Reviews MUST reject changes that introduce duplication, drift, or conflicting patterns.

\- Reviews MUST reject changes that bypass CI or quality gates.

\- Reviews MUST ensure backward compatibility unless explicitly versioned.

\- Reviews MUST verify dependency changes comply with agents/dependencies.md.

\- Reviews MUST verify configuration changes are safe and environment-aware.

\- Reviews MUST ensure no secrets or sensitive data are introduced into code or logs.

\- Reviews MUST ensure performance regressions are identified and addressed.

\- Reviews MUST ensure architectural boundaries are preserved.

\- Reviews MUST ensure AI-related changes follow agents/ai-application.md when applicable.



\## Scope

In scope:

\- Source code changes

\- Configuration changes

\- Infrastructure-as-code changes

\- Pipeline and automation changes

\- Test changes

\- Documentation changes required by code changes

\- Dependency updates

\- AI prompts, tools, and evaluation assets when applicable



Out of scope:

\- Product requirement definition

\- UX or visual design review

\- Operational incident handling (agents/incident-response.md)



Assumptions:

\- Reviews occur through a version control system.

\- CI provides automated validation results to reviewers.

\- Reviewers have access to relevant standards files.



\## Responsibilities

\- Author responsibilities:

&nbsp; - Provide clear, minimal, and scoped changes

&nbsp; - Explain intent and impact of changes

&nbsp; - Ensure tests and documentation are updated

&nbsp; - Address review feedback promptly



\- Reviewer responsibilities:

&nbsp; - Validate correctness, safety, and standards compliance

&nbsp; - Identify defects, risks, and edge cases

&nbsp; - Enforce architectural and design boundaries

&nbsp; - Reject changes that violate mandatory standards



\- DevSecOps responsibilities:

&nbsp; - Ensure CI results are available to reviewers

&nbsp; - Ensure review gates are enforced in tooling



\## Usage

\- Apply this file when:

&nbsp; - reviewing any pull request or change set

&nbsp; - approving merges to protected branches

\- This file MUST be composed with:

&nbsp; - agents/coding-standards.md

&nbsp; - agents/tests.md

&nbsp; - agents/security.md

&nbsp; - agents/privacy.md

&nbsp; - agents/architecture.md

&nbsp; - agents/dependencies.md

\- Additional composition is REQUIRED when applicable:

&nbsp; - agents/api-contracts.md for API changes

&nbsp; - agents/ai-application.md for AI-related changes

&nbsp; - agents/devsecops.md for pipeline or infra changes



\## Structure

N/A



\## File Decomposition

N/A



\## Application Rules

\- Review completeness:

&nbsp; - At least one qualified reviewer is required.

&nbsp; - High-risk changes MAY require additional reviewers.

\- Approval rules:

&nbsp; - Reviews MUST explicitly approve or request changes.

&nbsp; - Silent approvals are not permitted.

\- Test rules:

&nbsp; - Changes without adequate test coverage MUST be rejected.

&nbsp; - Test-only changes MUST still be reviewed.

\- Security rules:

&nbsp; - Any introduction of secrets, credentials, or sensitive data MUST be rejected.

\- Dependency rules:

&nbsp; - Dependency additions or upgrades MUST include justification and risk assessment.

\- Documentation rules:

&nbsp; - Public behavior changes MUST include documentation updates.

\- Override rules:

&nbsp; - Overrides to standards MUST be explicitly documented and approved per orchestration rules.

\- Verification rules:

&nbsp; - Merged changes MUST reflect reviewed content exactly.

&nbsp; - Post-merge fixes for review misses MUST be treated as defects.



