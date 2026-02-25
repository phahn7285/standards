=========================================================

languages/nunit.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# nunit Standards



\## Standards

\- NUnit MUST be used for unit and integration testing of .NET applications where selected.

\- Tests MUST be deterministic, isolated, and repeatable.

\- Tests MUST validate observable behavior, not implementation details.

\- Test method names MUST be descriptive and stable.

\- Assertions MUST be explicit and produce actionable failure output.

\- Parameterized tests MUST be used intentionally to cover multiple scenarios.

\- Test setup and teardown MUST be explicit and minimal.

\- Shared mutable state MUST be avoided or isolated per test.

\- External dependencies MUST be mocked or isolated.

\- Time-dependent behavior MUST use controllable clocks or abstractions.

\- Randomized tests MUST use fixed seeds and record seeds on failure.

\- Slow tests MUST be isolated, categorized, and justified.

\- NUnit configuration MUST be consistent and version-controlled.

\- NUnit usage MUST align with agents/tests.md and agents/coding-standards.md.



\## Scope

In scope:

\- Unit tests written with NUnit

\- Integration tests at module or service boundaries

\- Parameterized and data-driven testing

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

&nbsp; - Write and maintain NUnit tests

&nbsp; - Ensure coverage for new and changed behavior

&nbsp; - Keep tests fast and deterministic



\- Reviewers:

&nbsp; - Validate test quality and coverage

&nbsp; - Reject flaky or brittle tests



\- DevSecOps:

&nbsp; - Integrate NUnit execution into CI pipelines

&nbsp; - Ensure consistent SDK and tooling versions



\## Usage

\- Apply this file when:

&nbsp; - using NUnit in a .NET codebase

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

\- Test fixtures:

&nbsp; - MUST group related test cases.

\- Test methods:

&nbsp; - MUST test a single behavior or scenario.

\- Setup methods:

&nbsp; - MUST prepare minimal required state.

\- Teardown methods:

&nbsp; - MUST clean up resources explicitly.

\- Parameterized tests:

&nbsp; - MUST define inputs and expected outcomes clearly.



\## Application Rules

\- Assertion rules:

&nbsp; - Prefer explicit constraint-based assertions.

\- Parameterization rules:

&nbsp; - Use TestCase and TestCaseSource intentionally.

\- Isolation rules:

&nbsp; - Tests MUST NOT rely on execution order.

\- Categorization rules:

&nbsp; - Categories MUST be used to separate test types.

\- Verification rules:

&nbsp; - New functionality MUST include new tests.

&nbsp; - Failing or flaky tests MUST be treated as defects.



