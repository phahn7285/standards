=========================================================

languages/catch2.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# catch2 Standards



\## Standards

\- Catch2 MUST be used as a unit testing framework for C++ where selected.

\- Tests MUST be deterministic, isolated, and repeatable.

\- Tests MUST validate observable behavior, not implementation details.

\- Test names MUST be descriptive and stable.

\- Test cases MUST be small and focused.

\- Assertions MUST be specific and produce actionable failure output.

\- Fixtures MUST avoid hidden shared state and MUST clean up resources.

\- Randomized tests MUST use fixed seeds and MUST record seeds on failure.

\- Time-dependent tests MUST be controlled via injectable clocks or fakes.

\- IO and network dependencies MUST be mocked or isolated.

\- Tests MUST run quickly; slow tests MUST be isolated and justified.

\- Catch2 configuration MUST be consistent across repositories.

\- Catch2 usage MUST align with agents/tests.md and agents/coding-standards.md.



\## Scope

In scope:

\- Unit tests written with Catch2

\- Test organization and naming

\- Assertions and matchers usage

\- Fixtures and test setup

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

&nbsp; - Write and maintain Catch2 tests

&nbsp; - Ensure tests cover new and changed behavior

&nbsp; - Keep tests deterministic and fast



\- Reviewers:

&nbsp; - Verify test quality, coverage, and determinism

&nbsp; - Reject tests that are flaky or overly coupled to implementation



\- DevSecOps:

&nbsp; - Integrate Catch2 test execution into CI

&nbsp; - Ensure consistent toolchain and reporting



\## Usage

\- Apply this file when:

&nbsp; - using Catch2 in a C++ codebase

&nbsp; - creating or modifying unit tests

\- This file MUST be composed with:

&nbsp; - agents/tests.md

&nbsp; - agents/coding-standards.md

&nbsp; - agents/ci-cd.md

&nbsp; - languages/cpp.md when present



\## Structure

\- Tests SHOULD be placed under a dedicated directory (for example: tests/).

\- Test files SHOULD mirror the structure of the code under test.

\- Shared test utilities SHOULD live in a dedicated helper module.



\## File Decomposition

\- Test files:

&nbsp; - MUST group related test cases by unit or module.

\- Fixtures:

&nbsp; - MUST define setup and teardown explicitly.

\- Helpers:

&nbsp; - MUST provide reusable fakes, stubs, and builders.

\- Configuration:

&nbsp; - MUST define consistent reporters and runtime options.



\## Application Rules

\- Organization rules:

&nbsp; - One test file SHOULD map to one production unit or cohesive module.

\- Assertion rules:

&nbsp; - Assertions MUST be narrow and specific.

&nbsp; - Prefer explicit checks over broad, multi-condition assertions.

\- Fixture rules:

&nbsp; - Fixtures MUST be minimal.

&nbsp; - Fixtures MUST NOT leak shared state across tests.

\- Flake prevention rules:

&nbsp; - Avoid timing-based assertions.

&nbsp; - Avoid reliance on execution order.

\- Execution rules:

&nbsp; - Tests MUST be runnable locally with a single command.

&nbsp; - CI MUST publish test results artifacts when available.

\- Verification rules:

&nbsp; - New functionality MUST include new tests.

&nbsp; - Failing or flaky tests MUST be treated as defects.



