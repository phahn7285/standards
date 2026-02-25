=========================================================

languages/swift.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# swift Standards



\## Standards

\- Swift code MUST prioritize safety, readability, and maintainability.

\- Supported, stable Swift and platform SDK versions MUST be used unless explicitly constrained.

\- Swift language features MUST be used idiomatically.

\- Immutability MUST be preferred by default.

\- Optionals MUST be handled explicitly and safely.

\- Force unwraps MUST be avoided except where explicitly justified and documented.

\- Error handling MUST be explicit using throws, Result, or domain-specific error types.

\- Asynchronous code MUST use structured concurrency where available.

\- Blocking operations MUST NOT run on main or UI threads.

\- Value types MUST be preferred unless reference semantics are required.

\- Access control MUST be explicit and minimal.

\- Protocols MUST be used to define contracts and enable testability.

\- Global mutable state MUST be avoided.

\- Dependency injection MUST be used for external dependencies.

\- Configuration MUST be externalized and environment-aware.

\- Secrets MUST NOT be hard-coded.

\- Logging MUST be structured and avoid sensitive data.

\- Build and dependency configuration MUST be reproducible.

\- Tests MUST be written for all non-trivial logic per agents/tests.md.

\- Swift usage MUST align with agents/security.md and agents/coding-standards.md.



\## Scope

In scope:

\- Swift application and library code

\- iOS, macOS, watchOS, and tvOS targets

\- Concurrency and asynchronous execution

\- Error handling and memory management

\- Dependency and package management



Out of scope:

\- Objective-C specifics

\- UI layout tooling specifics unless explicitly scoped

\- Infrastructure provisioning specifics (platforms/\*)



Assumptions:

\- Swift may be used for mobile, desktop, or service-side code.

\- Safety and correctness are required.

\- Tooling for formatting, linting, and testing is available.



\## Responsibilities

\- Developers:

&nbsp; - Write idiomatic, safe Swift code

&nbsp; - Handle optionals and errors explicitly

&nbsp; - Use concurrency primitives correctly

&nbsp; - Add tests and validation



\- Reviewers:

&nbsp; - Enforce safety, clarity, and idiomatic usage

&nbsp; - Reject unsafe optional handling and concurrency misuse



\- DevSecOps:

&nbsp; - Ensure Swift and SDK versions are consistent

&nbsp; - Enforce reproducible builds and CI validation



\## Usage

\- Apply this file when:

&nbsp; - writing or modifying Swift code

&nbsp; - building Swift applications or libraries

\- This file MUST be composed with:

&nbsp; - agents/coding-standards.md

&nbsp; - agents/tests.md

&nbsp; - agents/security.md

&nbsp; - agents/performance.md when performance-sensitive

\- Platform-specific UI standards MUST be composed where applicable.



\## Structure

\- Swift projects SHOULD follow standard layout:

&nbsp; - Sources/ for production code

&nbsp; - Tests/ for test code

\- Modules MUST be cohesive and avoid circular dependencies.

\- Public APIs MUST be minimal and documented.



\## File Decomposition

\- Types:

&nbsp; - MUST have a single, clear responsibility.

\- Protocols:

&nbsp; - MUST define explicit contracts.

\- Services:

&nbsp; - MUST encapsulate business logic and external integration.

\- Configuration:

&nbsp; - MUST be externalized and validated.

\- Tests:

&nbsp; - MUST validate behavior, edge cases, and error handling.



\## Application Rules

\- Optional handling rules:

&nbsp; - Prefer safe unwrapping patterns.

&nbsp; - Avoid force unwraps.

\- Concurrency rules:

&nbsp; - Use async/await and structured concurrency where available.

&nbsp; - Avoid shared mutable state across tasks.

\- Error handling rules:

&nbsp; - Use typed errors and handle them explicitly.

\- Dependency rules:

&nbsp; - Dependencies MUST be minimal and version-pinned.

\- Verification rules:

&nbsp; - Linting and static analysis SHOULD run in CI.

&nbsp; - Unit tests MUST cover critical logic.

&nbsp; - Violations of these standards MUST be treated as defects.



