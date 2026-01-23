=========================================================

languages/powershell.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# powershell Standards



\## Standards

\- PowerShell scripts MUST be deterministic and non-interactive by default.

\- Scripts MUST validate parameters and fail fast on invalid inputs.

\- Error handling MUST be explicit and consistent.

\- Scripts MUST use strict mode where feasible.

\- Scripts MUST set ErrorActionPreference explicitly.

\- External commands MUST have their exit codes checked.

\- Output MUST be structured and machine-consumable when used in automation.

\- Logging MUST be clear and actionable.

\- Scripts MUST avoid hidden side effects and implicit state.

\- Scripts MUST avoid reliance on local machine configuration without validation.

\- Secrets MUST NOT be embedded in scripts.

\- Secrets MUST be provided via secure mechanisms.

\- Modules MUST be used to encapsulate reusable logic.

\- Scripts MUST be idempotent when used for provisioning or configuration.

\- Execution policy considerations MUST be documented for consumers.

\- PowerShell usage MUST align with agents/security.md and agents/ci-cd.md.



\## Scope

In scope:

\- PowerShell automation scripts

\- PowerShell modules

\- CI and deployment scripting using PowerShell

\- Windows and cross-platform PowerShell usage



Out of scope:

\- Application runtime logic

\- Infrastructure provisioning tools beyond scripting

\- GUI automation



Assumptions:

\- Scripts run locally or in CI environments.

\- Scripts may execute on Windows or cross-platform PowerShell.

\- Automation reliability is critical.



\## Responsibilities

\- Script authors:

&nbsp; - Write safe, parameterized PowerShell scripts

&nbsp; - Validate inputs and handle errors explicitly

&nbsp; - Avoid embedding secrets



\- Reviewers:

&nbsp; - Enforce determinism and safety rules

&nbsp; - Reject interactive or brittle scripts



\- DevSecOps:

&nbsp; - Standardize modules and execution patterns

&nbsp; - Ensure CI uses consistent PowerShell versions



\## Usage

\- Apply this file when:

&nbsp; - writing or modifying PowerShell scripts or modules

&nbsp; - automating build, test, or deployment tasks

\- This file MUST be composed with:

&nbsp; - agents/security.md

&nbsp; - agents/ci-cd.md

&nbsp; - agents/repo-hygiene.md

&nbsp; - agents/tests.md when scripts affect validation workflows



\## Structure

\- Scripts SHOULD reside in a dedicated directory.

\- Modules SHOULD reside in a dedicated module directory.

\- Script names MUST be descriptive and action-oriented.



\## File Decomposition

\- Entry scripts:

&nbsp; - MUST define parameters and validate prerequisites.

\- Modules:

&nbsp; - MUST encapsulate reusable functions.

\- Helpers:

&nbsp; - MUST provide shared utilities without global state.

\- Configuration:

&nbsp; - MUST be externalized and environment-aware.



\## Application Rules

\- Parameter rules:

&nbsp; - Parameters MUST be declared with types and validation.

\- Error handling rules:

&nbsp; - Use try/catch for recoverable errors.

&nbsp; - Do not suppress errors silently.

\- External command rules:

&nbsp; - Check exit codes and handle failures.

\- Secret rules:

&nbsp; - Inject secrets via secure stores or CI variables.

\- Idempotency rules:

&nbsp; - Scripts MUST be safe to re-run.

\- Verification rules:

&nbsp; - Scripts MUST be tested in representative environments.

&nbsp; - Violations of these standards MUST be treated as defects.



