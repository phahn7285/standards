=========================================================

agents/documentation.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# documentation Standards



\## Standards

\- Documentation MUST be accurate, current, and version-controlled.

\- Documentation MUST be treated as a first-class artifact.

\- Documentation MUST reflect the actual behavior of the system.

\- Documentation MUST be updated as part of the same change that modifies behavior.

\- Documentation MUST be concise, explicit, and unambiguous.

\- Documentation MUST avoid narrative, opinion, and historical context unless explicitly required.

\- Documentation MUST use ASCII-only characters.

\- Documentation MUST use consistent terminology across files.

\- Documentation MUST clearly distinguish between requirements, guarantees, and examples.

\- Public-facing documentation MUST NOT expose internal implementation details, secrets, or internal URLs.

\- Documentation MUST be structured to support deterministic navigation by humans and AI agents.

\- Documentation MUST not duplicate authoritative standards defined elsewhere.

\- Documentation MUST reference authoritative standards files instead of restating rules.

\- Documentation MUST include ownership and responsibility where applicable.



\## Scope

In scope:

\- Architecture documentation

\- API documentation and contracts

\- Operational runbooks and playbooks

\- Developer onboarding documentation

\- Configuration and environment documentation

\- Data, ML, and AI documentation artifacts

\- Generated agent documentation files

\- README.md files for directory navigation



Out of scope:

\- Marketing or product documentation

\- User manuals unrelated to system behavior

\- External vendor documentation



Assumptions:

\- Documentation lives alongside code in the same repository.

\- Documentation is reviewed as part of code review.

\- Documentation is consumed by both humans and AI agents.



\## Responsibilities

\- Authors:

&nbsp; - Create and update documentation with every behavior change

&nbsp; - Ensure documentation matches implemented behavior

&nbsp; - Reference authoritative standards rather than duplicating them



\- Reviewers:

&nbsp; - Verify documentation accuracy and completeness

&nbsp; - Reject changes that introduce stale or misleading documentation



\- DevSecOps:

&nbsp; - Ensure documentation is published, accessible, and versioned

&nbsp; - Ensure documentation tooling integrates with CI where applicable



\## Usage

\- Apply this file when:

&nbsp; - adding or modifying system behavior

&nbsp; - introducing new components, APIs, or workflows

&nbsp; - changing configuration, deployment, or operational behavior

&nbsp; - generating role-specific agent documentation

\- This file MUST be composed with:

&nbsp; - agents/code-review.md

&nbsp; - agents/repo-hygiene.md

\- Additional composition MAY be required with:

&nbsp; - agents/api-contracts.md for API documentation

&nbsp; - agents/architecture.md for system design documentation

&nbsp; - agents/incident-response.md for operational documentation



\## Structure

\- Documentation MUST be organized by concern:

&nbsp; - README.md files for directory navigation

&nbsp; - docs/ or equivalent for detailed documentation

&nbsp; - runbooks/ or equivalent for operational procedures

\- Each documentation file MUST have a clear purpose.

\- File and directory names MUST be descriptive and stable.



\## File Decomposition

\- README.md files:

&nbsp; - MUST describe directory purpose and structure.

&nbsp; - MUST list child files and directories with one-line descriptions.

\- Design documents:

&nbsp; - MUST define scope, assumptions, and constraints.

&nbsp; - MUST reference related standards files.

\- Runbooks:

&nbsp; - MUST define triggers, steps, and expected outcomes.

&nbsp; - MUST define rollback and escalation paths.

\- Agent documentation:

&nbsp; - MUST list composed standards files.

&nbsp; - MUST define role-specific responsibilities and checks.



\## Application Rules

\- Accuracy rules:

&nbsp; - Documentation MUST be updated in the same change as code.

&nbsp; - Outdated documentation MUST be corrected or removed.

\- Duplication rules:

&nbsp; - Documentation MUST NOT duplicate standards content.

&nbsp; - References MUST point to authoritative files.

\- Review rules:

&nbsp; - Documentation changes MUST be reviewed with the same rigor as code.

\- Publication rules:

&nbsp; - Required documentation MUST be available before release.

\- Verification rules:

&nbsp; - Missing or incorrect documentation MUST be treated as a defect.



