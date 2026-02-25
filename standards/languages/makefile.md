=========================================================

languages/makefile.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# makefile Standards



\## Standards

\- Makefiles MUST provide deterministic, reproducible build and automation targets.

\- Targets MUST be idempotent where feasible.

\- Default target MUST be explicit.

\- Targets MUST be named consistently and descriptively.

\- Phony targets MUST be declared explicitly.

\- Commands MUST fail fast on errors.

\- Shell usage MUST be explicit where required.

\- Environment-specific configuration MUST be externalized.

\- Secrets MUST NOT be embedded in Makefiles.

\- Makefiles MUST avoid complex logic; prefer scripts when logic becomes non-trivial.

\- Dependencies between targets MUST be explicit.

\- Output MUST be readable and actionable.

\- Makefile usage MUST align with agents/ci-cd.md and agents/repo-hygiene.md.



\## Scope

In scope:

\- Build orchestration via make

\- Developer automation targets

\- CI helper targets

\- Dependency and target structure



Out of scope:

\- Full build system replacements where better tooling exists

\- Application runtime logic

\- Infrastructure provisioning specifics



Assumptions:

\- Developers and CI will execute targets locally and in pipelines.

\- Projects may have multiple languages or tools.



\## Responsibilities

\- Developers:

&nbsp; - Maintain a clear, minimal set of Make targets

&nbsp; - Ensure targets are deterministic and safe

&nbsp; - Keep logic readable and avoid hidden side effects



\- Reviewers:

&nbsp; - Enforce target clarity and determinism

&nbsp; - Reject Makefiles that embed secrets or complex logic



\- DevSecOps:

&nbsp; - Align Make targets with CI pipeline execution

&nbsp; - Ensure consistent execution environments



\## Usage

\- Apply this file when:

&nbsp; - creating or modifying Makefiles

&nbsp; - adding build or automation targets

\- This file MUST be composed with:

&nbsp; - agents/ci-cd.md

&nbsp; - agents/repo-hygiene.md

&nbsp; - agents/security.md when targets interact with sensitive systems

\- Language-specific standards MUST be composed for targets that build code.



\## Structure

\- A top-level Makefile SHOULD define primary developer and CI targets.

\- Included make fragments SHOULD be separated by concern when needed.

\- Target groups SHOULD be discoverable via a help target.



\## File Decomposition

\- Default target:

&nbsp; - MUST be explicit and safe.

\- Phony targets:

&nbsp; - MUST be declared with .PHONY.

\- Build targets:

&nbsp; - MUST define dependencies and outputs.

\- Test targets:

&nbsp; - MUST run unit tests and required validation.

\- Cleanup targets:

&nbsp; - MUST remove generated artifacts safely.



\## Application Rules

\- Determinism rules:

&nbsp; - Targets MUST not depend on local machine state without validation.

\- Safety rules:

&nbsp; - Destructive targets MUST require explicit intent.

\- Configuration rules:

&nbsp; - Environment values MUST come from variables or env files.

\- Secret rules:

&nbsp; - Secrets MUST be injected at runtime, not stored.

\- Maintainability rules:

&nbsp; - If logic exceeds simple orchestration, move it to scripts.

\- Verification rules:

&nbsp; - Make targets used in CI MUST be tested regularly.

&nbsp; - Violations of these standards MUST be treated as defects.



