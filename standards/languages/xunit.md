=========================================================

languages/xunit.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# xunit Standards



\## Standards

\- xUnit MUST be used for unit and integration testing of .NET applications where selected.

\- Tests MUST be deterministic, isolated, and repeatable.

\- Tests MUST validate observable behavior, not implementation details.

\- Test method names MUST be descriptive and stable.

\- Assertions MUST be explicit and produce actionable failure output.

\- Fixtures MUST be used intentionally and scoped correctly.

\- Shared mutable state MUST be avoided or isolated per test.

\- Data-driven tests MUST be used intentionally and documented.

\- External dependencies MUST be mocked or isolated.

\- Time-dependent behavior MUST use controllable clocks or abstractions.

\- Randomized tests MUST use fixed seeds and record seeds on failure.

\- Slow tests MUST be isolated, categorized, and justified.

\- xUnit configuration MUST be consistent and version-controlled.

\- xUnit usage MUST align with agents/tests.md and agents/coding-standards.md.



\## Scope

In scope:

\- Unit tests written with xUnit

\- Integration tests at module or service boundaries

\- Fixtures and shared setup patterns

\- Data-driven testing

\- Test execution and result reporting



Out of scope:

\- End-to-end UI testing frameworks

\- Load and performance testing frameworks

\- CI pipeline configuration specifics



Assumptions:

\- .NET SDKs are available in development and CI environments.

\- CI executes the full test suite on changes.



\## Responsibilities

\- Developers:

&nbsp; - Write and maintain xUnit tests

&nbsp; - Ensure coverage for new and changed behavior

&nbsp; - Keep tests fast and deterministic



\- Reviewers:

&nbsp; - Validate test quality and coverage

&nbsp; - Reject flaky or brittle tests



\- DevSecOps:

&nbsp; - Integrate xUnit execution into CI pipelines

&nbsp; - Ensure consistent SDK and tooling versions



\## Usage

\- Apply this file when:

&nbsp; - using xUnit in a .NET codebase

&nbsp; - creating or modifying unit or integration tests

\- This file MUST be composed with:

&nbsp; - agents/tests.md

&nbsp; - agents/coding-standards.md

&nbsp; - agents/ci-cd.md

&nbsp; - languages/csharp-dotnet.md



\## Structure

\- Test projects SHOULD be separated from production code.

\- Test files MUST follow consistent naming conventions.

\- Test classes SHOULD mirror the structure of the code under test.



\## File Decomposition

\- Test classes:

&nbsp; - MUST group related test methods.

\- Test methods:

&nbsp; - MUST test a single behavior or scenario.

\- Fixtures:

&nbsp; - MUST define explicit shared setup only when required.

\- Collections:

&nbsp; - MUST define shared context and isolation boundaries explicitly.

\- Data-driven tests:

&nbsp; - MUST define inputs and expected outcomes clearly.



\## Application Rules

\- Fixture rules:

&nbsp; - Prefer per-test setup unless shared setup is required.

&nbsp; - Avoid shared state across tests.

\- Parallelism rules:

&nbsp; - Parallel execution behavior MUST be explicit and controlled.

\- Data-driven rules:

&nbsp; - Use Theory and InlineData intentionally.

\- Isolation rules:

&nbsp; - Tests MUST NOT rely on execution order.

\- Verification rules:

&nbsp; - New functionality MUST include new tests.

&nbsp; - Failing or flaky tests MUST be treated as defects.

&nbsp; - Violations of these standards MUST be treated as defects.



