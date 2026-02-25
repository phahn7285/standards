=========================================================

agents/tests.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# tests Standards



\## Standards

\- All code changes MUST be validated by automated tests.

\- Tests MUST be treated as first-class production artifacts.

\- Tests MUST be deterministic, repeatable, and isolated.

\- Test coverage MUST include standard paths, edge cases, and failure modes.

\- Tests MUST validate observable behavior, not implementation details.

\- Tests MUST be readable, maintainable, and clearly named.

\- Tests MUST fail fast and provide actionable failure output.

\- Test execution MUST be automated and integrated into CI.

\- Tests MUST be written at appropriate levels of the testing pyramid.

\- Tests MUST avoid unnecessary coupling to environment or infrastructure.

\- Tests MUST clean up state and resources they create.

\- Tests MUST not depend on execution order.

\- Tests MUST validate security, privacy, and compliance requirements when applicable.

\- Tests MUST validate API contracts when APIs exist.

\- Tests MUST validate AI and ML behavior within defined bounds when applicable.



\## Scope

In scope:

\- Unit tests

\- Integration tests

\- Contract tests

\- End-to-end tests

\- Regression tests

\- Performance tests when applicable

\- AI and ML validation tests



Out of scope:

\- Manual testing procedures (agents/qa.md)

\- Production monitoring and alerting (agents/observability.md)

\- CI pipeline configuration details (agents/ci-cd.md)



Assumptions:

\- Automated test frameworks are available.

\- CI executes tests on every change.

\- Tests run in isolated, reproducible environments.



\## Responsibilities

\- Developers:

&nbsp; - Write and maintain tests for their code

&nbsp; - Ensure new behavior is covered by tests

&nbsp; - Fix failing tests promptly



\- QA engineers:

&nbsp; - Define integration and end-to-end test strategy

&nbsp; - Validate coverage across system boundaries



\- Reviewers:

&nbsp; - Verify adequate test coverage exists

&nbsp; - Reject changes that reduce test quality or coverage



\- DevSecOps:

&nbsp; - Ensure test execution is reliable and scalable

&nbsp; - Provide test environments and tooling



\## Usage

\- Apply this file when:

&nbsp; - writing or modifying code

&nbsp; - adding new features or fixing defects

&nbsp; - refactoring existing behavior

\- This file MUST be composed with:

&nbsp; - agents/code-review.md

&nbsp; - agents/coding-standards.md

&nbsp; - agents/security.md

&nbsp; - agents/privacy.md when applicable

\- Technology-specific test standards MUST be composed from languages/\* files:

&nbsp; - languages/pytest.md

&nbsp; - languages/jest.md

&nbsp; - languages/xunit.md

&nbsp; - languages/go-testing.md

&nbsp; - languages/playwright.md

&nbsp; - languages/cypress.md



\## Structure

\- Tests SHOULD follow the testing pyramid:

&nbsp; - unit tests at the base

&nbsp; - integration tests in the middle

&nbsp; - end-to-end tests at the top

\- Test directories SHOULD mirror source structure where practical.

\- Test configuration MUST be explicit and environment-aware.



\## File Decomposition

\- Unit tests:

&nbsp; - MUST validate individual functions or components.

&nbsp; - MUST cover edge cases and error conditions.

\- Integration tests:

&nbsp; - MUST validate interactions between components.

&nbsp; - MUST use controlled test doubles where appropriate.

\- Contract tests:

&nbsp; - MUST validate API behavior against contracts.

\- End-to-end tests:

&nbsp; - MUST validate critical user and system flows.

\- Test utilities:

&nbsp; - MUST be reusable and isolated.



\## Application Rules

\- Coverage rules:

&nbsp; - Critical logic MUST have unit test coverage.

&nbsp; - Integration points MUST be tested.

\- Isolation rules:

&nbsp; - Tests MUST NOT depend on shared mutable state.

\- Data rules:

&nbsp; - Tests MUST use synthetic or anonymized data.

\- Performance rules:

&nbsp; - Slow tests MUST be isolated and justified.

\- AI testing rules:

&nbsp; - Non-deterministic behavior MUST be bounded.

&nbsp; - Safety and correctness checks MUST exist.

\- Verification rules:

&nbsp; - All tests MUST pass before merge.

&nbsp; - Missing or inadequate tests MUST be treated as defects.



