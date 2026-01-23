=========================================================

languages/playwright.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# playwright Standards



\## Standards

\- Playwright MUST be used for end-to-end testing of web applications where selected.

\- Playwright MAY be used for end-to-end testing of React Native apps when executed through supported webview or platform tooling.

\- Tests MUST validate user-observable behavior.

\- Tests MUST be deterministic, isolated, and repeatable.

\- Tests MUST avoid timing-based waits and sleeps.

\- Application state MUST be controlled and reset between tests.

\- Selectors MUST be stable and resilient to UI changes.

\- Tests MUST prefer role-based and accessibility selectors where applicable.

\- Tests MUST avoid coupling to internal implementation details.

\- Network interactions MUST be stubbed or controlled where appropriate.

\- Authentication setup MUST be optimized and reusable.

\- Tests MUST produce clear, actionable failure output.

\- Flaky tests MUST be treated as defects.

\- Screenshots, traces, and videos MUST be captured on failure where feasible.

\- Playwright configuration MUST be explicit and version-controlled.

\- Playwright usage MUST align with agents/tests.md and agents/frontend.md.



\## Scope

In scope:

\- End-to-end browser tests

\- User flow validation

\- Cross-browser testing when required

\- Network stubbing and fixtures

\- Test configuration and execution

\- Tracing and debugging artifacts



Out of scope:

\- Unit testing frameworks

\- Mobile-native UI testing without Playwright support

\- Load and stress testing frameworks



Assumptions:

\- Tests run in controlled browser environments.

\- CI executes Playwright tests consistently.

\- Applications expose stable hooks for testing.



\## Responsibilities

\- Frontend engineers:

&nbsp; - Author and maintain Playwright tests

&nbsp; - Ensure tests reflect real user behavior

&nbsp; - Maintain stable selectors



\- QA engineers:

&nbsp; - Define critical user flows and coverage

&nbsp; - Identify and eliminate flaky tests



\- Reviewers:

&nbsp; - Validate test determinism and selector stability

&nbsp; - Reject timing-dependent or brittle tests



\- DevSecOps:

&nbsp; - Integrate Playwright into CI pipelines

&nbsp; - Manage browser installation and environment configuration



\## Usage

\- Apply this file when:

&nbsp; - writing or modifying Playwright tests

&nbsp; - validating frontend user flows across browsers

\- This file MUST be composed with:

&nbsp; - agents/tests.md

&nbsp; - agents/frontend.md

&nbsp; - agents/ci-cd.md

&nbsp; - agents/security.md when authentication flows are tested

&nbsp; - agents/accessibility.md when role-based selectors are used

\- Framework standards MUST be composed with:

&nbsp; - languages/react.md or languages/javascript.md or languages/typescript.md when applicable



\## Structure

\- Playwright tests SHOULD follow standard layout:

&nbsp; - tests/ for test specs

&nbsp; - fixtures/ for test data

&nbsp; - helpers/ for shared utilities

&nbsp; - playwright.config.\* for configuration

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

&nbsp; - MUST define browsers, retries, timeouts, and reporters.



\## Application Rules

\- Selector rules:

&nbsp; - Prefer getByRole and accessibility selectors.

&nbsp; - Avoid brittle selectors tied to layout or styling.

\- Timing rules:

&nbsp; - Use Playwright auto-waiting and expectations, not sleeps.

\- State rules:

&nbsp; - Tests MUST reset state between runs.

\- Network rules:

&nbsp; - Stub external dependencies when feasible.

\- Artifact rules:

&nbsp; - Capture traces and screenshots on failures where feasible.

\- Verification rules:

&nbsp; - Critical user flows MUST have coverage.

&nbsp; - Flaky or failing tests MUST be fixed immediately.

&nbsp; - Violations of these standards MUST be treated as defects.



