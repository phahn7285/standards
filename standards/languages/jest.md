=========================================================

languages/jest.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# jest Standards



\## Standards

\- Jest MUST be used for unit and integration testing of JavaScript and TypeScript where selected.

\- Tests MUST be deterministic, isolated, and repeatable.

\- Tests MUST validate observable behavior, not implementation details.

\- Test names MUST be descriptive and stable.

\- Assertions MUST be specific and produce actionable failure output.

\- Mocks MUST be used intentionally and minimized.

\- Tests MUST avoid brittle snapshot usage.

\- Snapshots MUST be reviewed and updated intentionally.

\- Fake timers MUST be used for time-dependent behavior.

\- Randomized tests MUST use fixed seeds and record seeds on failure.

\- Network and IO MUST be mocked or isolated.

\- Tests MUST not depend on execution order.

\- Slow tests MUST be isolated and justified.

\- Jest configuration MUST be consistent and version-controlled.

\- Jest usage MUST align with agents/tests.md and agents/frontend.md.



\## Scope

In scope:

\- Unit tests

\- Integration tests at module boundaries

\- Mocking and spying

\- Snapshot testing

\- Test configuration and execution



Out of scope:

\- End-to-end browser testing (languages/playwright.md, languages/cypress.md)

\- Load testing frameworks

\- CI pipeline configuration specifics



Assumptions:

\- Tests run under Node.js or a browser-like environment.

\- CI executes tests consistently on changes.



\## Responsibilities

\- Developers:

&nbsp; - Write and maintain Jest tests

&nbsp; - Ensure coverage for new and changed behavior

&nbsp; - Keep tests fast and deterministic



\- Reviewers:

&nbsp; - Validate test quality and determinism

&nbsp; - Reject flaky tests and excessive mocking



\- DevSecOps:

&nbsp; - Integrate Jest into CI pipelines

&nbsp; - Ensure consistent Node.js and dependency versions



\## Usage

\- Apply this file when:

&nbsp; - writing or modifying Jest tests

&nbsp; - validating JavaScript or TypeScript behavior

\- This file MUST be composed with:

&nbsp; - agents/tests.md

&nbsp; - agents/frontend.md

&nbsp; - agents/ci-cd.md

&nbsp; - agents/security.md when applicable

\- Language standards MUST be composed with:

&nbsp; - languages/javascript.md or languages/typescript.md when applicable



\## Structure

\- Tests SHOULD be organized by feature or module.

\- Test files MUST use consistent naming:

&nbsp; - \*.test.\* or \*.spec.\*

\- Shared test helpers SHOULD live in a dedicated directory.



\## File Decomposition

\- Unit tests:

&nbsp; - MUST validate a single unit of behavior.

\- Integration tests:

&nbsp; - MUST validate module interactions.

\- Mocks:

&nbsp; - MUST be scoped to the test and reset between tests.

\- Fixtures:

&nbsp; - MUST be synthetic and stable.

\- Configuration:

&nbsp; - MUST define environment, transforms, and coverage.



\## Application Rules

\- Mocking rules:

&nbsp; - Prefer dependency injection over global mocking.

&nbsp; - Reset and restore mocks between tests.

\- Snapshot rules:

&nbsp; - Snapshots MUST be small and reviewed.

&nbsp; - Avoid snapshotting large structures.

\- Timing rules:

&nbsp; - Avoid setTimeout-based waits.

&nbsp; - Use fake timers when timing must be tested.

\- Environment rules:

&nbsp; - Tests MUST not depend on local developer machines.

\- Verification rules:

&nbsp; - Tests MUST run in CI on every change.

&nbsp; - Flaky tests MUST be fixed immediately.

&nbsp; - Violations of these standards MUST be treated as defects.



