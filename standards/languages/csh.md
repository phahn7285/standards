=========================================================

languages/csh.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# csh Standards



\## Standards

\- C shell (csh/tcsh) MUST be avoided for new automation unless explicitly required.

\- csh MUST only be used for legacy compatibility or constrained environments.

\- Scripts MUST be deterministic and non-interactive by default.

\- Scripts MUST validate required inputs and environment variables.

\- Error handling MUST be explicit and checked after critical commands.

\- Quoting MUST be applied consistently to avoid globbing and word splitting.

\- Scripts MUST avoid complex logic and control flow.

\- Scripts MUST NOT embed secrets or credentials.

\- Scripts MUST log meaningful progress and errors.

\- Scripts MUST clean up temporary files and resources.

\- Scripts MUST be idempotent when used for automation.

\- csh usage MUST align with agents/security.md and agents/repo-hygiene.md.



\## Scope

In scope:

\- Legacy automation scripts written in csh or tcsh

\- Environment setup scripts where csh is mandated



Out of scope:

\- New automation or orchestration (languages/bash.md or other scripting languages preferred)

\- Complex application logic

\- CI pipeline definition



Assumptions:

\- csh is present due to historical or platform constraints.

\- Script usage is limited and controlled.

\- Maintainability risk is accepted but minimized.



\## Responsibilities

\- Script authors:

&nbsp; - Keep scripts minimal and simple

&nbsp; - Validate inputs and environment

&nbsp; - Avoid unsafe or complex constructs



\- Reviewers:

&nbsp; - Ensure csh usage is justified

&nbsp; - Reject scripts that introduce unnecessary complexity or risk



\- DevSecOps:

&nbsp; - Limit csh usage to approved cases

&nbsp; - Monitor and plan migration to safer alternatives where feasible



\## Usage

\- Apply this file when:

&nbsp; - maintaining or modifying existing csh scripts

&nbsp; - operating in environments where csh is required

\- This file MUST be composed with:

&nbsp; - agents/security.md

&nbsp; - agents/repo-hygiene.md

&nbsp; - agents/tests.md when scripts affect validation workflows



\## Structure

\- Scripts SHOULD reside in a dedicated directory.

\- Script names MUST be descriptive and indicate purpose.

\- Shared logic SHOULD be avoided; duplication is acceptable to limit complexity.



\## File Decomposition

\- Entry scripts:

&nbsp; - MUST validate arguments and prerequisites.

\- Utility scripts:

&nbsp; - MUST perform a single, simple task.

\- Environment scripts:

&nbsp; - MUST define variables explicitly.



\## Application Rules

\- Safety rules:

&nbsp; - Avoid complex conditionals and loops.

&nbsp; - Avoid reliance on csh-specific quirks.

\- Input rules:

&nbsp; - Validate all inputs before use.

\- Error handling rules:

&nbsp; - Check command exit status explicitly.

\- Secret rules:

&nbsp; - Secrets MUST be sourced from secure stores or environment injection.

\- Migration rules:

&nbsp; - csh scripts SHOULD be flagged for migration to safer languages.

\- Verification rules:

&nbsp; - Scripts MUST be tested in representative environments.

&nbsp; - Violations of these standards MUST be treated as defects.



