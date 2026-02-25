=========================================================

languages/kotlin.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# kotlin Standards



\## Standards

\- Kotlin code MUST prioritize readability, correctness, and safety.

\- Supported, stable Kotlin and JVM versions MUST be used unless explicitly constrained.

\- Null safety MUST be enforced and leveraged.

\- Nullable types MUST be explicit and minimized.

\- Immutability SHOULD be preferred where practical.

\- Data classes MUST be used intentionally for value objects.

\- Exceptions MUST be used for exceptional conditions, not control flow.

\- Coroutines MUST be used correctly for asynchronous and concurrent work.

\- Blocking operations MUST NOT run in coroutine contexts intended for non-blocking work.

\- Structured concurrency MUST be enforced.

\- Shared mutable state MUST be minimized and protected.

\- Dependency injection MUST be used for external dependencies in service applications.

\- Configuration MUST be externalized and environment-aware.

\- Logging MUST be structured and consistent.

\- Sensitive data MUST NOT be hard-coded or logged.

\- Build and dependency configuration MUST be reproducible.

\- Tests MUST be written for all non-trivial logic per agents/tests.md.

\- Kotlin usage MUST align with agents/security.md and agents/coding-standards.md.



\## Scope

In scope:

\- Kotlin application and library code

\- JVM runtime usage and configuration

\- Coroutines and asynchronous programming

\- Dependency and build management

\- Error handling and logging



Out of scope:

\- Java-specific implementation details beyond interoperability

\- Infrastructure provisioning specifics (platforms/\*)

\- UI framework specifics unless covered by frontend standards



Assumptions:

\- Kotlin may target JVM, Android, or multiplatform environments.

\- Asynchronous and concurrent execution is common.

\- Maintainability and safety are required.



\## Responsibilities

\- Developers:

&nbsp; - Write idiomatic, null-safe Kotlin code

&nbsp; - Use coroutines and concurrency primitives correctly

&nbsp; - Add tests and validation



\- Reviewers:

&nbsp; - Enforce Kotlin idioms and safety rules

&nbsp; - Reject unsafe null handling and blocking patterns



\- DevSecOps:

&nbsp; - Ensure Kotlin and JVM versions are consistent

&nbsp; - Enforce reproducible builds and dependency governance



\## Usage

\- Apply this file when:

&nbsp; - writing or modifying Kotlin code

&nbsp; - building Kotlin services, libraries, or applications

\- This file MUST be composed with:

&nbsp; - agents/coding-standards.md

&nbsp; - agents/tests.md

&nbsp; - agents/security.md

&nbsp; - agents/performance.md when performance-sensitive

\- Test framework specifics MUST be composed from:

&nbsp; - languages/junit.md when applicable



\## Structure

\- Kotlin projects SHOULD follow standard layout:

&nbsp; - src/main/kotlin for production code

&nbsp; - src/test/kotlin for test code

&nbsp; - src/main/resources for resources

\- Packages MUST be cohesive and avoid cycles.

\- Public APIs MUST be minimal and stable.



\## File Decomposition

\- Classes:

&nbsp; - MUST have a single, clear responsibility.

\- Data classes:

&nbsp; - MUST represent immutable value objects.

\- Services:

&nbsp; - MUST use dependency injection where applicable.

\- Coroutines:

&nbsp; - MUST define clear scope and lifecycle.

\- Tests:

&nbsp; - MUST validate behavior and edge cases.



\## Application Rules

\- Nullability rules:

&nbsp; - Avoid nullable types unless required.

&nbsp; - Null assertions MUST be avoided or explicitly justified.

\- Coroutine rules:

&nbsp; - Use appropriate dispatchers.

&nbsp; - Avoid GlobalScope.

\- Exception rules:

&nbsp; - Exceptions MUST not be swallowed.

\- Concurrency rules:

&nbsp; - Shared state MUST be synchronized or eliminated.

\- Logging rules:

&nbsp; - Logs MUST be structured and avoid sensitive data.

\- Verification rules:

&nbsp; - Static analysis SHOULD run in CI when available.

&nbsp; - Unit tests MUST cover critical logic.

&nbsp; - Violations of these standards MUST be treated as defects.



