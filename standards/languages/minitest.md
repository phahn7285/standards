=========================================================

languages/minitest.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# minitest Standards



\## Standards

\- Minitest MUST be used for unit and integration testing of Ruby code where selected.

\- Tests MUST be deterministic, isolated, and repeatable.

\- Tests MUST validate observable behavior, not implementation details.

\- Test names MUST be descriptive and stable.

\- Assertions MUST be specific and produce actionable failure output.

\- Tests MUST avoid shared mutable state.

\- Setup and teardown MUST be explicit and minimal.

\- Fixtures MUST be used intentionally and cleaned up after use.

\- Mocks and stubs MUST be scoped to the test and reset after execution.

\- Time-dependent behavior MUST use controllable clocks or time helpers.

\- Randomized tests MUST use fixed seeds and record seeds on failure.

\- IO and network interactions MUST be mocked or isolated.

\- Slow tests MUST be isolated and justified.

\- Minitest configuration MUST be consistent and version-controlled.

\- Minitest usage MUST align with agents/tests.md and agents/coding-standards.md.



\## Scope

In scope:

\- Unit tests written with Minitest

\- Integration tests at module or service boundaries

\- Assertions and expectations

\- Fixtures, mocks, and stubs

\- Test execution and reporting



Out of scope:

\- End-to-end browser testing

\- Load and performance testing frameworks

\- CI pipeline configuration specifics



Assumptions:

\- Ruby projects use standard testing conventions.

\- CI executes the full test suite on changes.



\## Responsibilities

\- Developers:

&nbsp; - Write and maintain Minitest tests

&nbsp; - Ensure tests cover new and changed behavior

&nbsp; - Keep tests fast and deterministic



\- Reviewers:

&nbsp; - Validate test quality and coverage

&nbsp; - Reject flaky or brittle tests



\- DevSecOps:

&nbsp; - Integrate Minitest execution into CI

&nbsp; - Ensure consistent Ruby and dependency versions



\## Usage

\- Apply this file when:

&nbsp; - using Minitest in a Ruby codebase

&nbsp; - creating or modifying unit or integration tests

\- This file MUST be composed with:

&nbsp; - agents/tests.md

&nbsp; - agents/coding-standards.md

&nbsp; - agents/ci-cd.md

&nbsp; - languages/ruby.md



\## Structure

\- Test files MUST reside under a test/ directory.

\- Test files MUST end with \_test.rb.

\- Test classes SHOULD mirror the structure of the code under test.

\- Shared test helpers SHOULD be isolated in a helper file.



\## File Decomposition

\- Test files:

&nbsp; - MUST group related tests by unit or module.

\- Test classes:

&nbsp; - MUST encapsulate setup, execution, and assertions.

\- Setup methods:

&nbsp; - MUST prepare minimal required state.

\- Teardown methods:

&nbsp; - MUST clean up resources explicitly.

\- Helpers:

&nbsp; - MUST be reusable and side-effect free.



\## Application Rules

\- Assertion rules:

&nbsp; - Prefer assert\_equal and explicit assertions over generic checks.

\- Mocking rules:

&nbsp; - Avoid over-mocking; mock only external dependencies.

\- State rules:

&nbsp; - Tests MUST not depend on execution order.

\- Performance rules:

&nbsp; - Unit tests MUST execute quickly.

\- Verification rules:

&nbsp; - New functionality MUST include new tests.

&nbsp; - Failing or flaky tests MUST be treated as defects.



