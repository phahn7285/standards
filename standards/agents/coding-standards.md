=========================================================

agents/coding-standards.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# coding-standards Standards



\## Standards

\- All code MUST be readable, maintainable, and deterministic.

\- Code MUST prioritize correctness and clarity over brevity or cleverness.

\- Code MUST follow established architectural and layering rules.

\- Code MUST be written to be testable and observable.

\- Code MUST avoid duplication; shared logic MUST be abstracted appropriately.

\- Code MUST handle edge cases and error conditions explicitly.

\- Code MUST fail fast and fail safely.

\- Code MUST avoid undefined, implicit, or ambiguous behavior.

\- Code MUST be formatted consistently and automatically.

\- Code MUST use explicit naming that reflects intent.

\- Code MUST avoid magic numbers and undocumented constants.

\- Code MUST externalize configuration and environment-specific values.

\- Code MUST avoid tight coupling to frameworks and vendors.

\- Code MUST avoid global mutable state.

\- Code MUST be thread-safe or explicitly single-threaded where applicable.

\- Code MUST clean up resources deterministically.

\- Code MUST be backward compatible unless explicitly versioned.

\- Code MUST follow secure coding practices per agents/security.md.

\- Code MUST follow dependency governance per agents/dependencies.md.

\- Code MUST be reviewed per agents/code-review.md.



\## Scope

In scope:

\- Application source code

\- Shared libraries and internal frameworks

\- Configuration files that affect runtime behavior

\- Scripts that are part of the build, test, or runtime process



Out of scope:

\- Infrastructure definitions (agents/devsecops.md, platforms/\*)

\- Database engine internals (databases/\*)

\- Messaging broker internals (messaging/\*)

\- Language syntax rules (languages/\* define specifics)



Assumptions:

\- Code is maintained in version control.

\- Automated formatting and linting tools are available.

\- Code may be executed in concurrent or distributed environments.



\## Responsibilities

\- Developers:

&nbsp; - Write code that adheres to these standards

&nbsp; - Add tests for all new or modified behavior

&nbsp; - Refactor unsafe or unclear code when encountered



\- Reviewers:

&nbsp; - Enforce adherence to coding standards

&nbsp; - Reject code that introduces ambiguity, duplication, or unsafe behavior



\- DevSecOps:

&nbsp; - Ensure tooling supports formatting, linting, and static analysis

&nbsp; - Ensure CI enforces coding standards where possible



\## Usage

\- Apply this file when:

&nbsp; - writing or modifying application code

&nbsp; - writing shared libraries or internal tooling

&nbsp; - refactoring existing code

\- This file MUST be composed with:

&nbsp; - relevant languages/\* standards files

&nbsp; - agents/security.md

&nbsp; - agents/tests.md

&nbsp; - agents/code-review.md



\## Structure

\- Codebases SHOULD enforce consistent structure aligned with architecture.

\- Files SHOULD have a single clear responsibility.

\- Modules or packages SHOULD group related behavior.

\- Public interfaces SHOULD be minimal and explicit.

\- Internal helpers SHOULD be encapsulated and not exposed unnecessarily.



\## File Decomposition

\- Source files:

&nbsp; - MUST contain code related to a single responsibility.

&nbsp; - MUST include error handling and input validation where applicable.

\- Configuration files:

&nbsp; - MUST be separated from code.

&nbsp; - MUST NOT contain secrets.

\- Scripts:

&nbsp; - MUST be idempotent and safe to re-run.

&nbsp; - MUST include clear failure behavior.



\## Application Rules

\- Naming rules:

&nbsp; - Names MUST be descriptive and unambiguous.

&nbsp; - Abbreviations SHOULD be avoided unless widely understood.

\- Error handling rules:

&nbsp; - Errors MUST be handled explicitly.

&nbsp; - Errors MUST include sufficient context for debugging.

\- Control flow rules:

&nbsp; - Complex conditional logic MUST be refactored for clarity.

&nbsp; - Deep nesting SHOULD be avoided.

\- Dependency rules:

&nbsp; - Dependencies MUST be minimal and justified.

&nbsp; - Transitive dependencies MUST be understood and managed.

\- Performance rules:

&nbsp; - Performance-critical code MUST be identified and measured.

&nbsp; - Premature optimization MUST be avoided.

\- Refactoring rules:

&nbsp; - Refactors MUST preserve behavior.

&nbsp; - Refactors MUST include tests proving equivalence.

\- Verification rules:

&nbsp; - Code MUST pass all automated checks before merge.

&nbsp; - Violations of these standards MUST be treated as defects.



