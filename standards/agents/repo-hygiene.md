=========================================================

agents/repo-hygiene.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# repo-hygiene Standards



\## Standards

\- Repositories MUST be clean, consistent, and navigable.

\- Repository structure MUST reflect system architecture and responsibilities.

\- Files and directories MUST have clear ownership and purpose.

\- Repositories MUST avoid dead code, unused files, and stale artifacts.

\- Naming conventions MUST be consistent and descriptive.

\- Generated artifacts MUST NOT be committed unless explicitly required.

\- Secrets MUST NEVER be committed to repositories.

\- Large binary files MUST be avoided unless explicitly approved.

\- Repository configuration MUST be explicit and version-controlled.

\- Repositories MUST include documentation sufficient for onboarding and automation.

\- Repositories MUST support deterministic builds and execution.

\- Repositories MUST support automation by CI and AI agents.

\- Repository hygiene MUST be enforced continuously.

\- Repository hygiene standards MUST align with agents/documentation.md and agents/dependencies.md.



\## Scope

In scope:

\- Repository layout and structure

\- File and directory naming

\- Configuration files

\- Documentation placement

\- Version control practices

\- Cleanup and maintenance practices



Out of scope:

\- Code implementation details (agents/coding-standards.md)

\- CI/CD pipeline logic (agents/ci-cd.md)

\- Infrastructure provisioning specifics (agents/devsecops.md)



Assumptions:

\- Repositories are managed in a version control system.

\- Repositories may be used by humans and AI agents.

\- Automation relies on predictable repository structure.



\## Responsibilities

\- Developers:

&nbsp; - Maintain clean and organized repositories

&nbsp; - Remove unused files and code

&nbsp; - Follow naming and structure conventions



\- Reviewers:

&nbsp; - Enforce repository hygiene during code review

&nbsp; - Reject changes that introduce clutter or ambiguity



\- DevSecOps:

&nbsp; - Enforce repository policies via tooling

&nbsp; - Prevent secret leakage and unsafe artifacts



\## Usage

\- Apply this file when:

&nbsp; - creating a new repository

&nbsp; - adding or reorganizing files or directories

&nbsp; - performing cleanup or refactoring

\- This file MUST be composed with:

&nbsp; - agents/documentation.md

&nbsp; - agents/dependencies.md

&nbsp; - agents/code-review.md



\## Structure

\- Top-level directories SHOULD be limited and purposeful.

\- Each directory SHOULD include a README.md explaining its contents.

\- Configuration files SHOULD reside in predictable locations.

\- Temporary or experimental files MUST be isolated or excluded.



\## File Decomposition

\- Source code:

&nbsp; - MUST be grouped by responsibility or layer.

\- Configuration:

&nbsp; - MUST be separated from code.

&nbsp; - MUST NOT include secrets.

\- Documentation:

&nbsp; - MUST be colocated or referenced clearly.

\- Scripts:

&nbsp; - MUST be organized and documented.

\- Generated artifacts:

&nbsp; - MUST be excluded via ignore rules unless explicitly required.



\## Application Rules

\- Naming rules:

&nbsp; - Directory and file names MUST be descriptive and consistent.

&nbsp; - Avoid ambiguous or overloaded names.

\- Cleanup rules:

&nbsp; - Unused files MUST be removed promptly.

&nbsp; - Deprecated artifacts MUST be clearly marked or removed.

\- Ignore rules:

&nbsp; - Repositories MUST define ignore files for generated artifacts.

\- Ownership rules:

&nbsp; - Critical directories SHOULD have clear ownership.

\- Verification rules:

&nbsp; - Repository hygiene MUST be reviewed regularly.

&nbsp; - Violations of these standards MUST be treated as defects.



