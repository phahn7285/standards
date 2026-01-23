=========================================================

languages/bash.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# bash Standards



\## Standards

\- Bash scripts MUST be POSIX-aware and portable when portability is required.

\- Scripts MUST start with an explicit shebang.

\- Scripts MUST enable strict mode when feasible.

\- Scripts MUST fail fast on errors.

\- Scripts MUST validate inputs and environment dependencies.

\- Scripts MUST quote variables to prevent word splitting and globbing.

\- Scripts MUST avoid unsafe use of eval.

\- Scripts MUST avoid parsing ls output.

\- Scripts MUST avoid hard-coded paths and environment assumptions.

\- Scripts MUST be idempotent when used for automation.

\- Scripts MUST log meaningful progress and errors.

\- Scripts MUST avoid silent failures.

\- Scripts MUST clean up temporary files and resources.

\- Scripts MUST use functions for reusable logic.

\- Scripts MUST be formatted consistently.

\- Scripts MUST not embed secrets.

\- Bash usage MUST align with agents/security.md and agents/repo-hygiene.md.



\## Scope

In scope:

\- Shell scripts used for build, test, deployment, and automation

\- Local development scripts

\- CI helper scripts



Out of scope:

\- Complex applications that should be implemented in a general-purpose language

\- OS-specific provisioning handled by other tools



Assumptions:

\- Scripts may run in varied environments.

\- Scripts may be executed by CI systems and humans.



\## Responsibilities

\- Script authors:

&nbsp; - Write safe, portable, maintainable scripts

&nbsp; - Validate inputs and dependencies

&nbsp; - Provide clear error messages



\- Reviewers:

&nbsp; - Enforce safety and portability rules

&nbsp; - Reject scripts that are brittle or unsafe



\- DevSecOps:

&nbsp; - Integrate scripts into pipelines safely

&nbsp; - Ensure execution environments are consistent



\## Usage

\- Apply this file when:

&nbsp; - writing or modifying bash scripts

&nbsp; - adding automation scripts to repositories

\- This file MUST be composed with:

&nbsp; - agents/security.md

&nbsp; - agents/repo-hygiene.md

&nbsp; - agents/tests.md when scripts are part of validation workflows



\## Structure

\- Scripts SHOULD live in a dedicated directory (for example: scripts/).

\- Scripts MUST have descriptive names.

\- Shared helpers SHOULD be factored into reusable functions or libraries.



\## File Decomposition

\- Entry scripts:

&nbsp; - MUST parse arguments and validate prerequisites.

\- Library scripts:

&nbsp; - MUST define reusable functions and be source-safe.

\- CI scripts:

&nbsp; - MUST be deterministic and avoid interactive prompts.

\- Utility scripts:

&nbsp; - MUST be safe to run multiple times when applicable.



\## Application Rules

\- Safety rules:

&nbsp; - Use set -euo pipefail when compatible with the script behavior.

&nbsp; - Trap signals to ensure cleanup on exit.

\- Input rules:

&nbsp; - Validate required environment variables and arguments.

\- Quoting rules:

&nbsp; - Quote all variable expansions unless intentionally relying on splitting.

\- Tooling rules:

&nbsp; - Prefer portable commands and flags.

\- Secret rules:

&nbsp; - Secrets MUST be sourced from secure stores or environment injection.

\- Verification rules:

&nbsp; - Scripts MUST be linted when tooling is available.

&nbsp; - Scripts MUST be tested in CI when they affect builds or deployments.

&nbsp; - Violations of these standards MUST be treated as defects.



