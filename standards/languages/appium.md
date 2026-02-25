=========================================================

languages/appium.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# appium Standards



\## Standards

\- Appium MUST be used for mobile end-to-end testing only when Detox or platform-native frameworks are not suitable or are explicitly constrained.

\- Tests MUST validate user-observable behavior on real devices or emulators.

\- Tests MUST be deterministic, isolated, and repeatable.

\- Tests MUST avoid timing-based waits and sleeps.

\- Explicit waits MUST be used for dynamic UI states.

\- Selectors MUST be stable and resilient to UI changes.

\- Accessibility identifiers MUST be used as the primary selector strategy where supported.

\- Tests MUST avoid coupling to internal implementation details.

\- Application state MUST be controlled and reset between tests.

\- Test accounts and test data MUST be synthetic and environment-scoped.

\- Authentication setup MUST be optimized and reusable.

\- Network dependencies MUST be stubbed, mocked, or controlled where appropriate.

\- Flaky tests MUST be treated as defects.

\- Screenshots, logs, and videos MUST be captured on failure where feasible.

\- Appium server configuration MUST be explicit and version-controlled.

\- Device and emulator images MUST be version-pinned where feasible.

\- Appium usage MUST align with agents/tests.md, agents/qa.md, agents/security.md, and agents/ci-cd.md.



\## Scope

In scope:

\- Mobile end-to-end automation on iOS and Android

\- Critical user flow validation

\- Device and emulator execution

\- Selector strategy and synchronization strategy

\- Test configuration and artifact capture



Out of scope:

\- Unit testing frameworks

\- Web browser E2E testing frameworks

\- Load and stress testing frameworks

\- Mobile application performance profiling beyond functional E2E



Assumptions:

\- Test environments are controlled and reproducible.

\- CI can provision and run emulators or device farms.

\- Applications provide stable accessibility identifiers.



\## Responsibilities

\- QA automation engineers:

&nbsp; - Author and maintain Appium E2E tests

&nbsp; - Define critical mobile user flows and coverage

&nbsp; - Eliminate flaky tests and reduce runtime



\- Mobile engineers:

&nbsp; - Provide stable accessibility identifiers and test hooks

&nbsp; - Ensure screens expose reliable and accessible elements



\- Reviewers:

&nbsp; - Validate determinism, selector stability, and maintainability

&nbsp; - Reject timing-based and brittle patterns



\- DevSecOps:

&nbsp; - Provision and manage emulators, simulators, devices, and runners

&nbsp; - Integrate Appium execution, artifacts, and reporting in CI



\## Usage

\- Apply this file when:

&nbsp; - using Appium for iOS or Android end-to-end testing

&nbsp; - Detox is not applicable or is explicitly overridden

\- This file MUST be composed with:

&nbsp; - agents/tests.md

&nbsp; - agents/qa.md

&nbsp; - agents/security.md

&nbsp; - agents/ci-cd.md

&nbsp; - agents/accessibility.md when accessibility identifiers are used

\- Mobile framework standards MUST be composed with:

&nbsp; - languages/reactnative.md for React Native apps when applicable

&nbsp; - languages/swift.md or languages/kotlin.md when native modules are relevant



\## Structure

\- Appium tests SHOULD be organized with:

&nbsp; - e2e/ or tests/ for test specs

&nbsp; - pages/ or screens/ for screen abstractions if used

&nbsp; - fixtures/ for test data

&nbsp; - helpers/ for shared utilities

&nbsp; - config/ for Appium capabilities and environment configuration

\- Tests MUST be runnable via a single command in local and CI environments.



\## File Decomposition

\- Test specs:

&nbsp; - MUST define scenarios and assertions for user flows.

\- Screen abstractions:

&nbsp; - MAY encapsulate selectors and common interactions.

&nbsp; - MUST NOT hide assertions or business expectations.

\- Fixtures:

&nbsp; - MUST define stable, synthetic data inputs.

\- Helpers:

&nbsp; - MUST encapsulate setup, authentication, and environment utilities.

\- Configuration:

&nbsp; - MUST define capabilities, platform versions, devices, and timeouts.



\## Application Rules

\- Selector rules:

&nbsp; - Prefer accessibility identifiers.

&nbsp; - Avoid brittle selectors based on layout, index, or text when unstable.

\- Synchronization rules:

&nbsp; - Sleeps MUST be avoided.

&nbsp; - Use explicit waits for specific UI conditions.

\- State rules:

&nbsp; - Tests MUST reset app state between runs.

&nbsp; - Tests MUST NOT depend on execution order.

\- Environment rules:

&nbsp; - Tests MUST target a dedicated test environment.

&nbsp; - Test credentials MUST be scoped and rotated per policy.

\- Artifact rules:

&nbsp; - Capture screenshots and logs on failure where feasible.

\- Verification rules:

&nbsp; - Critical mobile flows MUST have coverage.

&nbsp; - Flaky tests MUST be fixed immediately.

&nbsp; - Violations of these standards MUST be treated as defects.



