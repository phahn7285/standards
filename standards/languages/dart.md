=========================================================

languages/dart.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# dart Standards



\## Standards

\- Dart code MUST prioritize readability, correctness, and maintainability.

\- Stable, supported Dart SDK versions MUST be used unless explicitly constrained.

\- Sound null safety MUST be enabled and enforced.

\- Code MUST follow idiomatic Dart style and conventions.

\- Immutability SHOULD be preferred where practical.

\- Asynchronous code MUST use async and await correctly.

\- Futures and streams MUST be handled explicitly.

\- Blocking operations MUST be avoided.

\- Error handling MUST be explicit and consistent.

\- Exceptions MUST be used for exceptional conditions, not control flow.

\- Dependency injection or explicit dependency passing MUST be used.

\- Global mutable state MUST be avoided.

\- Side effects MUST be minimized and controlled.

\- Logging MUST be structured and consistent.

\- Configuration MUST be externalized and environment-aware.

\- Sensitive data MUST NOT be hard-coded or logged.

\- Tests MUST be written for all non-trivial logic per agents/tests.md.

\- Dart usage MUST align with agents/security.md and agents/coding-standards.md.



\## Scope

In scope:

\- Dart application and library code

\- Asynchronous programming with futures and streams

\- Package and dependency usage

\- Build and execution practices for Dart

\- Error handling and logging



Out of scope:

\- Flutter UI-specific concerns (languages/reactnative.md or platform-specific mobile standards)

\- Platform-specific runtime hosting details

\- Native extensions and FFI specifics



Assumptions:

\- Code may be used for backend services, tooling, or cross-platform applications.

\- Asynchronous execution is common.

\- Maintainability and safety are required.



\## Responsibilities

\- Developers:

&nbsp; - Write idiomatic, null-safe Dart code

&nbsp; - Use async constructs correctly

&nbsp; - Define clear ownership and responsibilities

&nbsp; - Add tests and validation



\- Reviewers:

&nbsp; - Enforce style, null safety, and async correctness

&nbsp; - Reject unsafe or blocking patterns



\- DevSecOps:

&nbsp; - Ensure SDK versions, tooling, and CI enforce standards



\## Usage

\- Apply this file when:

&nbsp; - writing or modifying Dart code

&nbsp; - building Dart libraries or services

\- This file MUST be composed with:

&nbsp; - agents/coding-standards.md

&nbsp; - agents/tests.md

&nbsp; - agents/security.md

&nbsp; - agents/performance.md when performance-sensitive

\- Test framework specifics MUST be composed from:

&nbsp; - languages/jest.md or Dart-native testing frameworks when applicable



\## Structure

\- Dart projects SHOULD follow standard layout:

&nbsp; - lib/ for production code

&nbsp; - test/ for test code

\- Public APIs SHOULD be defined in library entry points.

\- Internal implementation details SHOULD be hidden.



\## File Decomposition

\- Libraries:

&nbsp; - MUST define cohesive functionality.

\- Classes:

&nbsp; - MUST have a single, clear responsibility.

\- Functions:

&nbsp; - MUST be small and focused.

\- Configuration:

&nbsp; - MUST be externalized and strongly typed.

\- Tests:

&nbsp; - MUST validate behavior and edge cases.



\## Application Rules

\- Null safety rules:

&nbsp; - Non-nullable types MUST be used by default.

&nbsp; - Null assertions MUST be avoided or justified.

\- Async rules:

&nbsp; - Futures MUST be awaited or explicitly handled.

&nbsp; - Streams MUST be closed when no longer needed.

\- Error handling rules:

&nbsp; - Errors MUST propagate with context.

\- Dependency rules:

&nbsp; - Dependencies MUST be explicit and minimal.

\- Concurrency rules:

&nbsp; - Shared state MUST be synchronized or eliminated.

\- Security rules:

&nbsp; - Validate inputs and protect sensitive data.

\- Verification rules:

&nbsp; - Unit tests MUST cover critical logic.

&nbsp; - Static analysis MUST run in CI when available.

&nbsp; - Violations of these standards MUST be treated as defects.



