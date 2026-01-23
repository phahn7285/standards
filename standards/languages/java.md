=========================================================

languages/java.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# java Standards



\## Standards

\- Java code MUST prioritize readability, correctness, and maintainability.

\- Supported LTS Java versions MUST be used unless explicitly constrained.

\- Code MUST follow consistent formatting and style conventions.

\- Null handling MUST be explicit.

\- Immutability SHOULD be preferred where practical.

\- Exceptions MUST be used for exceptional conditions, not control flow.

\- Exception handling MUST be explicit and consistent.

\- Dependency injection MUST be used for external dependencies in service applications.

\- Concurrency MUST be explicit and thread-safe.

\- Shared mutable state MUST be minimized and protected.

\- Timeouts MUST be defined for external calls and long-running operations.

\- Resource management MUST use try-with-resources where applicable.

\- Logging MUST be structured and consistent.

\- Configuration MUST be externalized and environment-aware.

\- Sensitive data MUST NOT be hard-coded or logged.

\- Build and dependency configuration MUST be reproducible.

\- Tests MUST be written for all non-trivial logic per agents/tests.md.

\- Java usage MUST align with agents/security.md and agents/coding-standards.md.



\## Scope

In scope:

\- Java application and library code

\- JVM runtime usage and configuration

\- Dependency and build management

\- Error handling and logging

\- Concurrency and resource management



Out of scope:

\- Groovy and Kotlin specifics (languages/groovy.md, languages/kotlin.md)

\- Infrastructure provisioning specifics (platforms/\*)

\- UI framework specifics unless covered by frontend standards



Assumptions:

\- Code may run in long-lived services.

\- Concurrency is common in server applications.

\- Maintainability and reliability are required.



\## Responsibilities

\- Developers:

&nbsp; - Write idiomatic Java code

&nbsp; - Handle resources and concurrency safely

&nbsp; - Add tests and validation



\- Reviewers:

&nbsp; - Enforce style, correctness, and safety rules

&nbsp; - Reject unsafe concurrency and resource handling patterns



\- DevSecOps:

&nbsp; - Ensure JDK versions and tooling are consistent

&nbsp; - Enforce build reproducibility and dependency governance



\## Usage

\- Apply this file when:

&nbsp; - writing or modifying Java code

&nbsp; - building Java services or libraries

\- This file MUST be composed with:

&nbsp; - agents/coding-standards.md

&nbsp; - agents/tests.md

&nbsp; - agents/security.md

&nbsp; - agents/performance.md when performance-sensitive

\- Test framework specifics MUST be composed from:

&nbsp; - languages/junit.md when present

&nbsp; - languages/testify.md is not applicable to Java



\## Structure

\- Java projects SHOULD follow standard layout:

&nbsp; - src/main/java for production code

&nbsp; - src/test/java for test code

&nbsp; - src/main/resources for resources

\- Packages MUST be cohesive and avoid cycles.

\- Public APIs MUST be minimal and stable.



\## File Decomposition

\- Classes:

&nbsp; - MUST have a single, clear responsibility.

\- Interfaces:

&nbsp; - MUST define explicit contracts.

\- Services:

&nbsp; - MUST use dependency injection where applicable.

\- Configuration:

&nbsp; - MUST be externalized and validated.

\- Tests:

&nbsp; - MUST validate behavior and edge cases.



\## Application Rules

\- Null rules:

&nbsp; - Avoid returning null; prefer Optional when appropriate.

&nbsp; - Validate external inputs.

\- Exception rules:

&nbsp; - Catch blocks MUST be specific.

&nbsp; - Exceptions MUST NOT be swallowed.

\- Resource rules:

&nbsp; - Use try-with-resources for closable resources.

\- Concurrency rules:

&nbsp; - Use java.util.concurrent primitives intentionally.

&nbsp; - Avoid shared mutable state where possible.

\- Logging rules:

&nbsp; - Logs MUST be structured and avoid sensitive data.

\- Verification rules:

&nbsp; - Static analysis SHOULD run in CI when available.

&nbsp; - Unit tests MUST cover critical logic.

&nbsp; - Violations of these standards MUST be treated as defects.



