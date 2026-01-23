=========================================================

languages/googletest.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# googletest Standards



\## Standards

\- GoogleTest MUST be used as a unit testing framework for C++ where selected.

\- Tests MUST be deterministic, isolated, and repeatable.

\- Tests MUST validate observable behavior, not implementation details.

\- Test suites MUST be small and focused.

\- Test names MUST be descriptive and stable.

\- Assertions MUST be specific and produce actionable failure output.

\- Fixtures MUST be minimal and MUST clean up resources.

\- Parameterized tests MUST be used for covering multiple cases efficiently.

\- Mocks MUST be used for external dependencies when appropriate.

\- Randomized tests MUST use fixed seeds and MUST record seeds on failure.

\- Time-dependent tests MUST be controlled via injectable clocks or fakes.

\- IO and network dependencies MUST be mocked or isolated.

\- Tests MUST run quickly; slow tests MUST be isolated and justified.

\- GoogleTest configuration MUST be consistent across repositories.

\- GoogleTest usage MUST align with agents/tests.md and agents/coding-standards.md.



\## Scope

In scope:

\- Unit tests written with GoogleTest

\- Parameterized tests

\- Fixtures and setup/teardown patterns

\- GoogleMock usage when selected

\- Test execution and reporting



Out of scope:

\- Integration and end-to-end test frameworks

\- Build system specifics beyond test execution requirements

\- Production code conventions (owned by language standards)



Assumptions:

\- C++ projects use a build system that can compile and run tests.

\- CI executes the full test suite on changes.



\## Responsibilities

\- Developers:

&nbsp; - Write and maintain GoogleTest tests

&nbsp; - Ensure tests cover new and changed behavior

&nbsp; - Keep tests deterministic and fast



\- Reviewers:

&nbsp; - Verify test quality, coverage, and determinism

&nbsp; - Reject tests that are flaky or overly coupled to implementation



\- DevSecOps:

&nbsp; - Integrate GoogleTest execution into CI

&nbsp; - Ensure consistent toolchain and reporting



\## Usage

\- Apply this file when:

&nbsp; - using GoogleTest in a C++ codebase

&nbsp; - creating or modifying unit tests

\- This file MUST be composed with:

&nbsp; - agents/tests.md

&nbsp; - agents/coding-standards.md

&nbsp; - agents/ci-cd.md

&nbsp; - languages/cpp.md



\## Structure

\- Tests SHOULD be placed under a dedicated directory (for example: tests/).

\- Test files SHOULD mirror the structure of the code under test.

\- Shared test utilities SHOULD live in a dedicated helper module.



\## File Decomposition

\- Test files:

&nbsp; - MUST group related test cases by unit or module.

\- Test fixtures:

&nbsp; - MUST define setup and teardown explicitly.

\- Parameterized tests:

&nbsp; - MUST define inputs, expected outputs, and names.

\- Mocks:

&nbsp; - MUST define explicit expectations and behavior.

\- Configuration:

&nbsp; - MUST define consistent reporters and runtime options.



\## Application Rules

\- Organization rules:

&nbsp; - One test file SHOULD map to one production unit or cohesive module.

\- Assertion rules:

&nbsp; - Assertions MUST be narrow and specific.

&nbsp; - Prefer explicit checks over broad, multi-condition assertions.

\- Fixture rules:

&nbsp; - Fixtures MUST be minimal and MUST NOT leak shared state.

\- Flake prevention rules:

&nbsp; - Avoid timing-based assertions.

&nbsp; - Avoid reliance on execution order.

\- Execution rules:

&nbsp; - Tests MUST be runnable locally with a single command.

&nbsp; - CI MUST publish test results artifacts when available.

\- Verification rules:

&nbsp; - New functionality MUST include new tests.

&nbsp; - Failing or flaky tests MUST be treated as defects.



