=========================================================

languages/ruby.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# ruby Standards



\## Standards

\- Ruby code MUST prioritize readability, correctness, and maintainability.

\- Supported, actively maintained Ruby versions MUST be used unless explicitly constrained.

\- Code MUST follow consistent formatting and style conventions.

\- Static analysis and linting MUST be used where feasible.

\- Methods MUST be small, focused, and composable.

\- Classes MUST have a single, clear responsibility.

\- Modules MUST be used to organize shared behavior intentionally.

\- Metaprogramming MUST be minimized, explicit, and documented.

\- Global mutable state MUST be avoided.

\- Exceptions MUST be used for exceptional conditions, not control flow.

\- Errors MUST NOT be swallowed silently.

\- External inputs MUST be validated at boundaries.

\- Configuration MUST be externalized and environment-aware.

\- Secrets MUST NOT be hard-coded.

\- Logging MUST be structured and avoid sensitive data.

\- Dependency management MUST be explicit and reproducible.

\- Tests MUST be written for all non-trivial logic per agents/tests.md.

\- Ruby usage MUST align with agents/security.md and agents/coding-standards.md.



\## Scope

In scope:

\- Ruby application and library code

\- Scripting and automation

\- Dependency and environment management

\- Error handling, validation, and logging

\- Ruby service and background job patterns



Out of scope:

\- Infrastructure provisioning specifics (platforms/\*)

\- Frontend UI concerns

\- Framework-specific Rails conventions unless explicitly scoped



Assumptions:

\- Ruby may be used for web apps, APIs, and automation.

\- Code may run locally, in CI, or in containerized environments.

\- Maintainability and correctness are required.



\## Responsibilities

\- Developers:

&nbsp; - Write idiomatic, maintainable Ruby code

&nbsp; - Validate inputs and handle errors explicitly

&nbsp; - Manage dependencies responsibly

&nbsp; - Add tests and validation



\- Reviewers:

&nbsp; - Enforce style, safety, and maintainability rules

&nbsp; - Reject unsafe patterns, hidden side effects, and excessive metaprogramming



\- DevSecOps:

&nbsp; - Ensure Ruby versions and dependencies are consistent

&nbsp; - Enforce reproducible builds and CI validation



\## Usage

\- Apply this file when:

&nbsp; - writing or modifying Ruby code

&nbsp; - building Ruby services, apps, libraries, or automation

\- This file MUST be composed with:

&nbsp; - agents/coding-standards.md

&nbsp; - agents/tests.md

&nbsp; - agents/security.md

&nbsp; - agents/performance.md when performance-sensitive

\- Test framework specifics MUST be composed from:

&nbsp; - languages/rspec.md or languages/minitest.md when applicable



\## Structure

\- Ruby projects SHOULD follow standard layout:

&nbsp; - lib/ for reusable code

&nbsp; - app/ for application code when applicable

&nbsp; - spec/ or test/ for test code

\- Public APIs MUST be separated from internal implementation.

\- Entry points MUST be minimal and explicit.



\## File Decomposition

\- Classes:

&nbsp; - MUST have a single, clear responsibility.

\- Modules:

&nbsp; - MUST encapsulate shared behavior intentionally.

\- Services:

&nbsp; - MUST encapsulate business logic and external integration.

\- Configuration:

&nbsp; - MUST be externalized and validated.

\- Tests:

&nbsp; - MUST validate behavior, edge cases, and error handling.



\## Application Rules

\- Metaprogramming rules:

&nbsp; - Avoid method\_missing and runtime code generation unless explicitly justified.

\- Error handling rules:

&nbsp; - Catch exceptions only when recovery is possible.

&nbsp; - Re-raise or fail fast otherwise.

\- Validation rules:

&nbsp; - Validate all external inputs.

\- Dependency rules:

&nbsp; - Dependencies MUST be minimal and version-pinned where feasible.

\- Security rules:

&nbsp; - Avoid unsafe deserialization and command execution.

\- Verification rules:

&nbsp; - Linting SHOULD run in CI.

&nbsp; - Unit tests MUST cover critical logic.

&nbsp; - Violations of these standards MUST be treated as defects.



