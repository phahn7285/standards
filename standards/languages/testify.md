=========================================================

languages/testify.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# testify Standards



\## Standards

\- Testify MUST be used as an assertion and mocking helper for Go tests where selected.

\- The Go testing package MUST remain the primary test runner.

\- Tests MUST be deterministic, isolated, and repeatable.

\- Assertions MUST be specific and produce actionable failure output.

\- require MUST be used for fatal assertions; assert MUST be used for non-fatal assertions.

\- Mocks MUST be used only for external dependencies and boundaries.

\- Mock expectations MUST be explicit and verified.

\- Tests MUST avoid over-mocking internal logic.

\- Shared mutable state MUST be avoided or isolated per test.

\- Time-dependent behavior MUST use injectable clocks or controllable time.

\- Randomized tests MUST use fixed seeds and record seeds on failure.

\- Slow tests MUST be isolated and justified.

\- Testify usage MUST align with agents/tests.md and languages/go-testing.md.



\## Scope

In scope:

\- Assertions using assert and require

\- Mocking using testify/mock where selected

\- Test helpers for Go unit and integration tests



Out of scope:

\- End-to-end browser testing

\- Load and performance testing frameworks

\- CI pipeline configuration specifics



Assumptions:

\- Go tests run with the standard go test tool.

\- CI executes tests consistently on changes.



\## Responsibilities

\- Developers:

&nbsp; - Use Testify to improve test clarity and consistency

&nbsp; - Avoid over-mocking and brittle expectations

&nbsp; - Maintain deterministic tests



\- Reviewers:

&nbsp; - Validate appropriate use of assertions and mocks

&nbsp; - Reject tests that overuse mocking or hide behavior



\- DevSecOps:

&nbsp; - Ensure consistent dependency versions

&nbsp; - Integrate test execution and reporting in CI



\## Usage

\- Apply this file when:

&nbsp; - using Testify in Go tests

&nbsp; - adding assertions or mocks to Go test suites

\- This file MUST be composed with:

&nbsp; - agents/tests.md

&nbsp; - languages/go-testing.md

&nbsp; - languages/go.md

&nbsp; - agents/coding-standards.md



\## Structure

\- Testify usage MUST remain within Go test files.

\- Shared mock implementations SHOULD be isolated and reusable.

\- Mock expectations MUST be local to the test scenario.



\## File Decomposition

\- Assertions:

&nbsp; - MUST be used to make expectations explicit.

\- Mocks:

&nbsp; - MUST define behavior for external dependencies.

\- Suites:

&nbsp; - MAY be used when they improve organization.

\- Helpers:

&nbsp; - MUST be reusable and side-effect free.



\## Application Rules

\- Assertion rules:

&nbsp; - Use require for preconditions and fatal checks.

&nbsp; - Use assert for additional checks after preconditions.

\- Mock rules:

&nbsp; - Mock external boundaries only.

&nbsp; - Verify expectations explicitly.

\- Isolation rules:

&nbsp; - Tests MUST NOT rely on execution order.

\- Verification rules:

&nbsp; - New functionality MUST include new tests.

&nbsp; - Flaky tests MUST be treated as defects.

&nbsp; - Violations of these standards MUST be treated as defects.



