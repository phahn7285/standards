=========================================================

languages/scala.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# scala Standards



\## Standards

\- Scala code MUST prioritize readability, correctness, and maintainability.

\- Supported, stable Scala versions MUST be used unless explicitly constrained.

\- Code formatting MUST be consistent and enforced by tooling.

\- Immutability MUST be preferred by default.

\- Side effects MUST be explicit and isolated.

\- Null MUST be avoided; Option MUST be used instead.

\- Exceptions MUST be used for exceptional conditions, not control flow.

\- Error handling MUST be explicit and consistent.

\- Type inference MUST be used intentionally; public APIs MUST have explicit types.

\- Functional programming patterns MUST be used where they improve correctness and clarity.

\- Concurrency MUST be explicit and safe.

\- Asynchronous operations MUST define timeouts.

\- Dependency injection or explicit wiring MUST be used for external dependencies.

\- Configuration MUST be externalized and environment-aware.

\- Logging MUST be structured and avoid sensitive data.

\- Sensitive data MUST NOT be hard-coded or logged.

\- Dependencies MUST be minimal and version-pinned.

\- Tests MUST be written for all non-trivial logic per agents/tests.md.

\- Scala usage MUST align with agents/security.md and agents/coding-standards.md.



\## Scope

In scope:

\- Scala application and library code

\- JVM runtime usage and configuration

\- Functional and object-oriented patterns

\- Concurrency and async execution patterns

\- Build and dependency management



Out of scope:

\- Java-specific implementation details beyond interoperability

\- Infrastructure provisioning specifics (platforms/\*)

\- UI framework specifics unless covered by frontend standards



Assumptions:

\- Scala is used for backend services, data processing, or libraries.

\- Maintainability and correctness are required.

\- Tooling is available for formatting and static analysis.



\## Responsibilities

\- Developers:

&nbsp; - Write idiomatic Scala code with minimal side effects

&nbsp; - Prefer immutable data structures

&nbsp; - Add tests and validation



\- Reviewers:

&nbsp; - Enforce immutability and explicit error handling

&nbsp; - Reject unsafe null usage and hidden side effects



\- DevSecOps:

&nbsp; - Ensure Scala, JVM, and build tooling are consistent

&nbsp; - Enforce reproducible builds and dependency governance



\## Usage

\- Apply this file when:

&nbsp; - writing or modifying Scala code

&nbsp; - building Scala services, libraries, or data pipelines

\- This file MUST be composed with:

&nbsp; - agents/coding-standards.md

&nbsp; - agents/tests.md

&nbsp; - agents/security.md

&nbsp; - agents/performance.md when performance-sensitive



\## Structure

\- Scala projects SHOULD follow standard layout:

&nbsp; - src/main/scala for production code

&nbsp; - src/test/scala for test code

&nbsp; - src/main/resources for resources

\- Packages MUST be cohesive and avoid cycles.

\- Public APIs MUST be minimal and documented.



\## File Decomposition

\- Classes and objects:

&nbsp; - MUST have a single, clear responsibility.

\- Traits:

&nbsp; - MUST define clear contracts.

\- Services:

&nbsp; - MUST isolate side effects and external integration.

\- Configuration:

&nbsp; - MUST be externalized and validated.

\- Tests:

&nbsp; - MUST validate behavior and edge cases.



\## Application Rules

\- Null rules:

&nbsp; - Null MUST NOT be used in Scala code.

&nbsp; - Interop boundaries MUST translate null to Option.

\- Immutability rules:

&nbsp; - Prefer val over var.

\- Error handling rules:

&nbsp; - Prefer Either, Try, or domain error types where appropriate.

\- Concurrency rules:

&nbsp; - Define timeouts for futures and external calls.

\- Dependency rules:

&nbsp; - Dependencies MUST be minimal and version-pinned.

\- Verification rules:

&nbsp; - Formatting and static analysis SHOULD run in CI.

&nbsp; - Unit tests MUST cover critical logic.

&nbsp; - Violations of these standards MUST be treated as defects.



