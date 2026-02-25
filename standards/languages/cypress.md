=========================================================

languages/cypress.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# cypress Standards



\## Standards

\- Cypress MUST be used for end-to-end and component testing of web applications where selected.

\- Cypress tests MUST validate user-observable behavior.

\- Tests MUST be deterministic, isolated, and repeatable.

\- Tests MUST avoid reliance on timing-based waits.

\- Application state MUST be controlled and reset between tests.

\- Selectors MUST be stable and resilient to UI changes.

\- Tests MUST avoid coupling to implementation details.

\- Network interactions MUST be stubbed or controlled where appropriate.

\- Tests MUST produce clear, actionable failure output.

\- Flaky tests MUST be treated as defects.

\- Cypress configuration MUST be explicit and version-controlled.

\- Cypress usage MUST align with agents/tests.md and agents/frontend.md.



\## Scope

In scope:

\- End-to-end browser tests

\- Component tests supported by Cypress

\- User flow validation

\- Network stubbing and fixtures

\- Test configuration and execution



Out of scope:

\- Unit testing frameworks

\- Mobile-native UI testing

\- Performance benchmarking

\- Visual design ownership



Assumptions:

\- Tests run in controlled browser environments.

\- CI executes Cypress tests consistently.

\- Applications expose stable hooks for testing.



\## Responsibilities

\- Frontend engineers:

&nbsp; - Author and maintain Cypress tests

&nbsp; - Ensure tests reflect real user behavior

&nbsp; - Maintain stable selectors



\- QA engineers:

&nbsp; - Define critical user flows and coverage

&nbsp; - Identify and eliminate flaky tests



\- Reviewers:

&nbsp; - Validate test quality and determinism

&nbsp; - Reject brittle or timing-dependent tests



\- DevSecOps:

&nbsp; - Integrate Cypress into CI pipelines

&nbsp; - Manage browser and environment configuration



\## Usage

\- Apply this file when:

&nbsp; - writing or modifying Cypress tests

&nbsp; - validating frontend user flows

\- This file MUST be composed with:

&nbsp; - agents/tests.md

&nbsp; - agents/frontend.md

&nbsp; - agents/ci-cd.md

&nbsp; - agents/security.md when authentication flows are tested

\- Framework standards MUST be composed with:

&nbsp; - languages/react.md or languages/javascript.md when applicable



\## Structure

\- Cypress tests SHOULD follow standard layout:

&nbsp; - cypress/e2e/ for end-to-end tests

&nbsp; - cypress/component/ for component tests

&nbsp; - cypress/fixtures/ for test data

&nbsp; - cypress/support/ for helpers and commands

\- Test files MUST be named descriptively.



\## File Decomposition

\- Test specs:

&nbsp; - MUST define clear scenarios and assertions.

\- Custom commands:

&nbsp; - MUST encapsulate reusable interactions.

\- Fixtures:

&nbsp; - MUST define stable, synthetic test data.

\- Configuration:

&nbsp; - MUST define base URLs, retries, and timeouts explicitly.



\## Application Rules

\- Selector rules:

&nbsp; - Use data attributes intended for testing.

&nbsp; - Avoid brittle selectors tied to layout or styling.

\- Timing rules:

&nbsp; - Use Cypress retry mechanisms instead of waits.

\- State rules:

&nbsp; - Tests MUST reset application state between runs.

\- Network rules:

&nbsp; - Stub external services when feasible.

\- Authentication rules:

&nbsp; - Login flows MUST be optimized and reusable.

\- Verification rules:

&nbsp; - Critical user flows MUST have coverage.

&nbsp; - Flaky or failing tests MUST be fixed immediately.

&nbsp; - Violations of these standards MUST be treated as defects.



