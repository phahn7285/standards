=========================================================

languages/csharp-dotnet.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# csharp-dotnet Standards



\## Standards

\- C# and .NET code MUST prioritize correctness, maintainability, and security.

\- Modern, supported .NET versions MUST be used unless explicitly constrained.

\- Code MUST follow managed runtime best practices and avoid unsafe constructs.

\- Memory management MUST rely on the garbage collector; manual memory management MUST NOT be used except in explicitly justified unsafe contexts.

\- Nullability annotations MUST be enabled and enforced.

\- Exceptions MUST be used for exceptional conditions, not control flow.

\- Exception handling MUST be explicit and consistent.

\- Asynchronous code MUST use async and await correctly.

\- Blocking on asynchronous operations MUST be avoided.

\- Dependency injection MUST be used for external dependencies.

\- Immutability SHOULD be preferred where practical.

\- Global mutable state MUST be avoided.

\- Logging MUST be structured and consistent.

\- Configuration MUST be externalized and environment-aware.

\- Sensitive data MUST be protected and not logged.

\- Thread safety MUST be explicit and documented.

\- Build and package configuration MUST be reproducible.

\- Tests MUST be written for all non-trivial logic per agents/tests.md.

\- C# and .NET code MUST align with agents/security.md and agents/coding-standards.md.



\## Scope

In scope:

\- C# application and library code

\- .NET runtime usage and configuration

\- Asynchronous programming patterns

\- Dependency injection and configuration

\- Exception handling and logging

\- Concurrency and threading

\- Build and packaging practices for .NET



Out of scope:

\- Native code and unmanaged libraries

\- Platform-specific runtime hosting details

\- UI framework specifics unless covered by frontend standards



Assumptions:

\- Code runs on a managed runtime.

\- Asynchronous and concurrent execution is common.

\- Applications may be long-lived services.



\## Responsibilities

\- Developers:

&nbsp; - Write idiomatic, safe C# code

&nbsp; - Use async patterns correctly

&nbsp; - Define clear dependency boundaries

&nbsp; - Add tests and validation



\- Reviewers:

&nbsp; - Enforce language and runtime best practices

&nbsp; - Reject unsafe or blocking patterns



\- DevSecOps:

&nbsp; - Ensure SDKs, runtimes, and CI enforce standards



\## Usage

\- Apply this file when:

&nbsp; - writing or modifying C# or .NET code

&nbsp; - building services, libraries, or tools on .NET

\- This file MUST be composed with:

&nbsp; - agents/coding-standards.md

&nbsp; - agents/tests.md

&nbsp; - agents/security.md

&nbsp; - agents/performance.md when performance-sensitive

\- Test framework specifics MUST be composed from:

&nbsp; - languages/xunit.md

&nbsp; - languages/nunit.md

&nbsp; - languages/mstest.md



\## Structure

\- .NET projects SHOULD follow standard layout:

&nbsp; - src/ for production code

&nbsp; - tests/ for test projects

\- Solution files SHOULD group related projects.

\- Public APIs SHOULD be clearly separated from internal code.



\## File Decomposition

\- Classes:

&nbsp; - MUST have a single, clear responsibility.

\- Interfaces:

&nbsp; - MUST define explicit contracts.

\- Services:

&nbsp; - MUST be registered via dependency injection.

\- Configuration:

&nbsp; - MUST be externalized and strongly typed.

\- Tests:

&nbsp; - MUST validate behavior and edge cases.



\## Application Rules

\- Nullability rules:

&nbsp; - Nullable reference types MUST be enabled.

&nbsp; - Null checks MUST be explicit.

\- Async rules:

&nbsp; - Async methods MUST be awaited.

&nbsp; - Async void MUST NOT be used except for event handlers.

\- Exception rules:

&nbsp; - Catch blocks MUST be specific.

&nbsp; - Exceptions MUST NOT be swallowed.

\- Dependency rules:

&nbsp; - Dependencies MUST be injected, not instantiated directly.

\- Concurrency rules:

&nbsp; - Shared state MUST be synchronized or eliminated.

\- Security rules:

&nbsp; - Validate inputs and protect sensitive data.

\- Verification rules:

&nbsp; - Unit tests MUST cover critical logic.

&nbsp; - Static analysis MUST run in CI when available.

&nbsp; - Violations of these standards MUST be treated as defects.



