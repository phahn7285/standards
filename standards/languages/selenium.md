=========================================================

languages/selenium.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# selenium Standards



\## Standards

\- Selenium MUST be used for browser automation only when Playwright or Cypress are not suitable or are explicitly constrained.

\- Tests MUST validate user-observable behavior.

\- Tests MUST be deterministic, isolated, and repeatable.

\- Tests MUST avoid timing-based waits and sleeps.

\- Explicit waits MUST be used instead of implicit waits.

\- Selectors MUST be stable and resilient to UI changes.

\- Tests MUST prefer accessibility-aligned selectors where feasible.

\- Tests MUST avoid coupling to internal implementation details.

\- Application state MUST be controlled and reset between tests.

\- Authentication setup MUST be optimized and reusable.

\- Tests MUST produce clear, actionable failure output.

\- Screenshots MUST be captured on failure where feasible.

\- Logs and artifacts MUST be collected in CI where feasible.

\- Flaky tests MUST be treated as defects.

\- Selenium configuration MUST be explicit and version-controlled.

\- Selenium usage MUST align with agents/tests.md and agents/frontend.md.



\## Scope

In scope:

\- End-to-end browser automation using Selenium WebDriver

\- User flow validation

\- Cross-browser validation when required

\- Wait strategies and selector strategy

\- Test execution and reporting



Out of scope:

\- Unit testing frameworks

\- Load and stress testing frameworks

\- Mobile-native automation outside supported Selenium capabilities



Assumptions:

\- Selenium tests run in controlled browser environments.

\- CI provides stable drivers and browsers.

\- Applications expose stable hooks for testing.



\## Responsibilities

\- QA engineers:

&nbsp; - Author and maintain Selenium E2E tests

&nbsp; - Define and maintain critical user flows

&nbsp; - Identify and eliminate flaky tests



\- Frontend engineers:

&nbsp; - Provide stable selectors and accessibility attributes

&nbsp; - Support testability in UI components



\- Reviewers:

&nbsp; - Validate test determinism and selector stability

&nbsp; - Reject timing-dependent or brittle tests



\- DevSecOps:

&nbsp; - Manage browser and driver versions in CI

&nbsp; - Integrate test execution and artifact collection



\## Usage

\- Apply this file when:

&nbsp; - writing or modifying Selenium tests

&nbsp; - Playwright or Cypress cannot be used due to constraints

\- This file MUST be composed with:

&nbsp; - agents/tests.md

&nbsp; - agents/frontend.md

&nbsp; - agents/ci-cd.md

&nbsp; - agents/accessibility.md when role-based selectors are used

&nbsp; - languages/javascript.md or languages/typescript.md when applicable

\- Prefer languages/playwright.md or languages/cypress.md unless constrained.



\## Structure

\- Selenium tests SHOULD follow standard layout:

&nbsp; - tests/ or e2e/ for test specs

&nbsp; - pages/ for page objects if used

&nbsp; - fixtures/ for test data

&nbsp; - helpers/ for shared utilities

\- Test files MUST be named descriptively.



\## File Decomposition

\- Test specs:

&nbsp; - MUST define scenarios and assertions for user flows.

\- Page objects:

&nbsp; - MAY be used to encapsulate complex interactions.

&nbsp; - MUST not hide assertions.

\- Fixtures:

&nbsp; - MUST define stable, synthetic test data.

\- Helpers:

&nbsp; - MUST encapsulate reusable setup, authentication, and utilities.

\- Configuration:

&nbsp; - MUST define browser, driver, timeouts, and reporters.



\## Application Rules

\- Wait rules:

&nbsp; - Explicit waits MUST be used for dynamic elements.

&nbsp; - Implicit waits MUST be avoided.

\- Selector rules:

&nbsp; - Avoid brittle selectors tied to layout or styling.

\- Timing rules:

&nbsp; - Sleeps MUST be avoided.

\- State rules:

&nbsp; - Tests MUST reset state between runs.

\- Artifact rules:

&nbsp; - Capture screenshots and logs on failure where feasible.

\- Verification rules:

&nbsp; - Critical user flows MUST have coverage.

&nbsp; - Flaky or failing tests MUST be fixed immediately.

&nbsp; - Violations of these standards MUST be treated as defects.



