=========================================================

languages/zsh.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# zsh Standards



\## Standards

\- Zsh scripts MUST be deterministic and non-interactive by default.

\- Scripts MUST explicitly declare the interpreter using a shebang.

\- Strict error handling MUST be enabled where feasible.

\- Scripts MUST fail fast on errors.

\- Unset variables MUST be treated as errors where feasible.

\- Command failures MUST be detected and handled explicitly.

\- Quoting MUST be used consistently to avoid word splitting and globbing issues.

\- Globbing behavior MUST be explicit and predictable.

\- Scripts MUST avoid reliance on implicit shell state.

\- Functions MUST be used to encapsulate reusable logic.

\- Global variables MUST be minimized and named explicitly.

\- Environment variables MUST be validated before use.

\- Scripts MUST avoid interactive prompts in automation contexts.

\- Output MUST be readable and machine-consumable when used in automation.

\- Logging MUST be clear and actionable.

\- Secrets MUST NOT be embedded in scripts.

\- Secrets MUST be provided via secure mechanisms.

\- Scripts MUST be idempotent when used for setup or configuration.

\- Zsh usage MUST align with agents/security.md and agents/ci-cd.md.



\## Scope

In scope:

\- Zsh automation scripts

\- Developer tooling scripts

\- CI helper scripts using Zsh

\- Shell configuration scripts where explicitly scoped



Out of scope:

\- Application runtime logic

\- Interactive shell customization for personal environments

\- Infrastructure provisioning tools beyond scripting



Assumptions:

\- Scripts may run locally or in CI environments.

\- Scripts may execute on Unix-like systems.

\- Automation reliability is critical.



\## Responsibilities

\- Script authors:

&nbsp; - Write safe, predictable Zsh scripts

&nbsp; - Validate inputs and handle errors explicitly

&nbsp; - Avoid embedding secrets



\- Reviewers:

&nbsp; - Enforce determinism, quoting, and safety rules

&nbsp; - Reject interactive or brittle scripts



\- DevSecOps:

&nbsp; - Standardize script execution patterns

&nbsp; - Ensure CI uses consistent shell environments



\## Usage

\- Apply this file when:

&nbsp; - writing or modifying Zsh scripts

&nbsp; - automating development, build, or deployment tasks

\- This file MUST be composed with:

&nbsp; - agents/security.md

&nbsp; - agents/ci-cd.md

&nbsp; - agents/repo-hygiene.md

&nbsp; - agents/tests.md when scripts affect validation workflows



\## Structure

\- Scripts SHOULD reside in a dedicated directory.

\- Script names MUST be descriptive and action-oriented.

\- Shared utilities SHOULD be factored into sourced files.



\## File Decomposition

\- Entry scripts:

&nbsp; - MUST define strict modes and validate prerequisites.

\- Functions:

&nbsp; - MUST encapsulate reusable logic.

\- Helpers:

&nbsp; - MUST avoid side effects and hidden dependencies.

\- Configuration:

&nbsp; - MUST be externalized and environment-aware.



\## Application Rules

\- Error handling rules:

&nbsp; - Exit on command failure unless explicitly handled.

\- Quoting rules:

&nbsp; - Always quote variable expansions unless intentionally splitting.

\- Globbing rules:

&nbsp; - Avoid unintentional glob expansion.

\- Environment rules:

&nbsp; - Validate required environment variables at startup.

\- Secret rules:

&nbsp; - Inject secrets at runtime, never store them in scripts.

\- Idempotency rules:

&nbsp; - Scripts MUST be safe to re-run.

\- Verification rules:

&nbsp; - Scripts MUST be tested in representative environments.

&nbsp; - Violations of these standards MUST be treated as defects.



