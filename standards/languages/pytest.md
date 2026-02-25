=========================================================

languages/pytest.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# pytest Standards



\## Standards

\- Pytest MUST be used for unit and integration testing of Python code where selected.

\- Tests MUST be deterministic, isolated, and repeatable.

\- Tests MUST validate observable behavior, not implementation details.

\- Test function names MUST be descriptive and stable.

\- Assertions MUST be explicit and produce actionable failure output.

\- Fixtures MUST be used for setup and teardown instead of ad-hoc initialization.

\- Fixture scope MUST be minimal and intentional.

\- Tests MUST avoid shared mutable state.

\- Parametrization MUST be used to cover multiple scenarios concisely.

\- Randomized tests MUST use fixed seeds and record seeds on failure.

\- Time-dependent behavior MUST use controllable clocks or monkeypatching.

\- Network, filesystem, and external services MUST be mocked or isolated.

\- Slow tests MUST be marked and isolated.

\- Pytest markers MUST be declared explicitly.

\- Pytest configuration MUST be version-controlled.

\- Pytest usage MUST align with agents/tests.md and agents/coding-standards.md.



\## Scope

In scope:

\- Unit tests written with pytest

\- Integration tests at module or service boundaries

\- Fixtures, parametrization, and markers

\- Test discovery, execution, and reporting



Out of scope:

\- End-to-end browser testing frameworks

\- Load and performance testing frameworks

\- CI pipeline configuration specifics



Assumptions:

\- Python environments are reproducible.

\- CI executes the full test suite on changes.



\## Responsibilities

\- Developers:

&nbsp; - Write and maintain pytest tests

&nbsp; - Ensure coverage for new and changed behavior

&nbsp; - Keep tests fast and deterministic



\- Reviewers:

&nbsp; - Validate test quality and coverage

&nbsp; - Reject flaky or brittle tests



\- DevSecOps:

&nbsp; - Integrate pytest execution into CI

&nbsp; - Ensure consistent Python versions and dependencies



\## Usage

\- Apply this file when:

&nbsp; - using pytest in a Python codebase

&nbsp; - creating or modifying unit or integration tests

\- This file MUST be composed with:

&nbsp; - agents/tests.md

&nbsp; - agents/coding-standards.md

&nbsp; - agents/ci-cd.md

&nbsp; - languages/python.md



\## Structure

\- Test files MUST reside under a tests/ directory.

\- Test files MUST be named test\_\*.py or \*\_test.py.

\- Tests SHOULD mirror the structure of the code under test.

\- Shared fixtures SHOULD be placed in conftest.py.



\## File Decomposition

\- Test modules:

&nbsp; - MUST group related tests by unit or feature.

\- Test functions:

&nbsp; - MUST test a single behavior or scenario.

\- Fixtures:

&nbsp; - MUST prepare minimal required state.

\- Parametrized tests:

&nbsp; - MUST define inputs and expected outcomes clearly.

\- Helpers:

&nbsp; - MUST be reusable and side-effect free.



\## Application Rules

\- Fixture rules:

&nbsp; - Prefer function scope unless broader scope is justified.

\- Parametrization rules:

&nbsp; - Use pytest.mark.parametrize for scenario coverage.

\- Isolation rules:

&nbsp; - Tests MUST NOT depend on execution order.

\- Performance rules:

&nbsp; - Unit tests MUST execute quickly.

\- Verification rules:

&nbsp; - New functionality MUST include new tests.

&nbsp; - Failing or flaky tests MUST be treated as defects.



