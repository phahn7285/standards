=========================================================

languages/go.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# go Standards



\## Standards

\- Go code MUST prioritize simplicity, readability, and correctness.

\- Go modules MUST be used for dependency management.

\- Code MUST be formatted with gofmt.

\- Static analysis MUST be enabled and enforced.

\- Errors MUST be handled explicitly.

\- Panic MUST be avoided in application logic and used only for unrecoverable programmer errors.

\- Context propagation MUST be used for cancellation, timeouts, and request scoping.

\- Timeouts MUST be defined for external calls and long-running operations.

\- Concurrency MUST be explicit and safe.

\- Goroutines MUST not leak.

\- Channels MUST be used intentionally and not as a default abstraction.

\- Shared state MUST be protected or eliminated.

\- Interfaces MUST be small and defined at the consumer boundary.

\- Public APIs MUST be minimal, stable, and documented.

\- Configuration MUST be externalized and environment-aware.

\- Sensitive data MUST NOT be logged.

\- Tests MUST be written for all non-trivial logic per agents/tests.md.

\- Go code MUST align with agents/security.md and agents/coding-standards.md.



\## Scope

In scope:

\- Go application and library code

\- Package structure and module usage

\- Error handling patterns

\- Concurrency patterns

\- Context usage

\- Build and execution practices for Go



Out of scope:

\- Go testing details (languages/go-testing.md)

\- Infrastructure provisioning specifics (platforms/\*)

\- Frontend concerns



Assumptions:

\- Services are often concurrent and networked.

\- Simplicity and maintainability are primary goals.

\- Tooling is available for formatting and linting.



\## Responsibilities

\- Developers:

&nbsp; - Write idiomatic Go code

&nbsp; - Handle errors and contexts correctly

&nbsp; - Avoid unsafe concurrency patterns

&nbsp; - Add tests and validation



\- Reviewers:

&nbsp; - Enforce Go idioms and safety

&nbsp; - Reject unnecessary complexity and goroutine leaks



\- DevSecOps:

&nbsp; - Ensure tooling and CI enforce formatting and static analysis



\## Usage

\- Apply this file when:

&nbsp; - writing or modifying Go code

&nbsp; - building Go services, CLIs, or libraries

\- This file MUST be composed with:

&nbsp; - agents/coding-standards.md

&nbsp; - agents/tests.md

&nbsp; - agents/security.md

&nbsp; - languages/go-testing.md

&nbsp; - agents/performance.md when performance-sensitive



\## Structure

\- Go projects MUST use Go modules.

\- Packages MUST be cohesive and avoid circular dependencies.

\- Internal packages MUST be used to prevent unintended imports.

\- cmd/ SHOULD contain entrypoints for binaries.

\- pkg/ SHOULD contain reusable packages when required.



\## File Decomposition

\- Packages:

&nbsp; - MUST define cohesive functionality.

\- Interfaces:

&nbsp; - MUST be small and defined by consumers.

\- Entry points:

&nbsp; - MUST be minimal and wire dependencies.

\- Configuration:

&nbsp; - MUST be externalized and validated.

\- Tests:

&nbsp; - MUST validate behavior and edge cases.



\## Application Rules

\- Error handling rules:

&nbsp; - Errors MUST be wrapped with context.

&nbsp; - Sentinel errors MUST be used intentionally.

\- Context rules:

&nbsp; - context.Context MUST be the first parameter where used.

&nbsp; - Context MUST be propagated across boundaries.

\- Concurrency rules:

&nbsp; - Goroutines MUST have clear lifecycle ownership.

&nbsp; - Use sync primitives intentionally.

\- Logging rules:

&nbsp; - Logs MUST be structured and avoid sensitive data.

\- Dependency rules:

&nbsp; - Dependencies MUST be minimal and explicit.

\- Verification rules:

&nbsp; - gofmt MUST be enforced.

&nbsp; - Static analysis MUST run in CI.

&nbsp; - Unit tests MUST cover critical logic.

&nbsp; - Violations of these standards MUST be treated as defects.



