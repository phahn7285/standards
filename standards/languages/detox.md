=========================================================

languages/detox.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# detox Standards



\## Standards

\- Detox MUST be used for end-to-end testing of mobile applications where selected.

\- Detox tests MUST validate user-observable behavior on real or emulated devices.

\- Tests MUST be deterministic, isolated, and repeatable.

\- Tests MUST avoid timing-based waits and sleeps.

\- Application state MUST be reset between test runs.

\- Selectors MUST be stable and resilient to UI changes.

\- Tests MUST avoid coupling to internal implementation details.

\- Network interactions MUST be stubbed or controlled where feasible.

\- Tests MUST handle asynchronous UI behavior explicitly.

\- Flaky tests MUST be treated as defects.

\- Detox configuration MUST be explicit and version-controlled.

\- Detox usage MUST align with agents/tests.md and agents/frontend.md.



\## Scope

In scope:

\- End-to-end testing of mobile applications

\- User flow validation on iOS and Android

\- Device and emulator testing

\- Network stubbing and test data setup

\- Test configuration and execution



Out of scope:

\- Unit testing frameworks

\- Web-only end-to-end testing

\- Performance benchmarking

\- UI design ownership



Assumptions:

\- Tests run on emulators or physical devices.

\- CI environments support mobile test execution.

\- Applications expose stable identifiers for testing.



\## Responsibilities

\- Mobile engineers:

&nbsp; - Author and maintain Detox tests

&nbsp; - Ensure tests reflect real user behavior

&nbsp; - Maintain stable accessibility identifiers



\- QA engineers:

&nbsp; - Define critical mobile user flows

&nbsp; - Identify and eliminate flaky tests



\- Reviewers:

&nbsp; - Validate test determinism and coverage

&nbsp; - Reject brittle or timing-dependent tests



\- DevSecOps:

&nbsp; - Integrate Detox into CI pipelines

&nbsp; - Manage device and emulator configuration



\## Usage

\- Apply this file when:

&nbsp; - writing or modifying Detox tests

&nbsp; - validating mobile user flows

\- This file MUST be composed with:

&nbsp; - agents/tests.md

&nbsp; - agents/frontend.md

&nbsp; - agents/ci-cd.md

&nbsp; - agents/security.md when authentication flows are tested

\- Framework standards MUST be composed with:

&nbsp; - languages/reactnative.md when applicable



\## Structure

\- Detox projects SHOULD follow standard layout:

&nbsp; - e2e/ for test specs

&nbsp; - config/ for Detox configuration

&nbsp; - helpers/ for shared utilities

\- Test files MUST be named descriptively.



\## File Decomposition

\- Test specs:

&nbsp; - MUST define clear scenarios and assertions.

\- Matchers:

&nbsp; - MUST use accessibility identifiers.

\- Helpers:

&nbsp; - MUST encapsulate reusable interactions.

\- Configuration:

&nbsp; - MUST define devices, apps, and execution settings explicitly.



\## Application Rules

\- Selector rules:

&nbsp; - Use accessibility identifiers consistently.

&nbsp; - Avoid selectors tied to layout or styling.

\- Timing rules:

&nbsp; - Use Detox synchronization instead of manual waits.

\- State rules:

&nbsp; - Tests MUST reset app state between runs.

\- Network rules:

&nbsp; - External services SHOULD be stubbed when feasible.

\- Authentication rules:

&nbsp; - Login flows MUST be optimized and reusable.

\- Verification rules:

&nbsp; - Critical mobile user flows MUST have coverage.

&nbsp; - Flaky or failing tests MUST be fixed immediately.

&nbsp; - Violations of these standards MUST be treated as defects.



