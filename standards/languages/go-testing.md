=========================================================

languages/go-testing.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# go-testing Standards



\## Standards

\- Go tests MUST use the built-in testing package as the primary framework.

\- Tests MUST be deterministic, isolated, and repeatable.

\- Tests MUST validate observable behavior, not implementation details.

\- Table-driven tests MUST be preferred for covering multiple cases.

\- Subtests MUST be used to scope related cases.

\- Tests MUST fail fast with clear, actionable messages.

\- Tests MUST NOT depend on execution order.

\- Shared mutable state MUST be avoided or isolated per test.

\- External dependencies MUST be mocked, stubbed, or isolated.

\- Time-dependent behavior MUST use injectable clocks or controllable time.

\- Randomized tests MUST use fixed seeds and log seeds on failure.

\- Parallel tests MUST be used only when safe and explicitly declared.

\- Benchmarks MUST be written for performance-critical code.

\- Race detection MUST be enabled in CI where feasible.

\- Coverage MUST include standard paths, edge cases, and failure modes.

\- Go testing MUST align with agents/tests.md and agents/coding-standards.md.



\## Scope

In scope:

\- Unit tests using testing

\- Integration tests using testing

\- Table-driven and subtest patterns

\- Test helpers and fixtures

\- Benchmarks and profiling

\- Race detection



Out of scope:

\- End-to-end browser testing

\- Load and stress testing frameworks

\- CI pipeline configuration specifics



Assumptions:

\- Go modules are used.

\- Tests are executed locally and in CI.

\- Packages are structured idiomatically.



\## Responsibilities

\- Developers:

&nbsp; - Write and maintain Go tests

&nbsp; - Ensure coverage for new and changed behavior

&nbsp; - Keep tests fast and deterministic



\- Reviewers:

&nbsp; - Validate test coverage and quality

&nbsp; - Reject flaky, brittle, or slow tests



\- DevSecOps:

&nbsp; - Ensure tests run consistently in CI

&nbsp; - Enable race detection and coverage reporting



\## Usage

\- Apply this file when:

&nbsp; - writing or modifying Go tests

&nbsp; - validating Go package behavior

\- This file MUST be composed with:

&nbsp; - agents/tests.md

&nbsp; - agents/coding-standards.md

&nbsp; - agents/ci-cd.md

&nbsp; - agents/security.md when applicable



\## Structure

\- Test files MUST reside alongside code using the \_test.go suffix.

\- Test package naming MUST be intentional:

&nbsp; - same package for white-box tests

&nbsp; - package\_test for black-box tests

\- Test helpers SHOULD be placed in dedicated files.



\## File Decomposition

\- Unit tests:

&nbsp; - MUST test individual functions or methods.

\- Integration tests:

&nbsp; - MUST test interactions between packages or components.

\- Table-driven tests:

&nbsp; - MUST define input, expected output, and name.

\- Test helpers:

&nbsp; - MUST be reusable and side-effect free.

\- Benchmarks:

&nbsp; - MUST measure stable, meaningful performance characteristics.



\## Application Rules

\- Naming rules:

&nbsp; - Test functions MUST start with Test.

&nbsp; - Benchmark functions MUST start with Benchmark.

\- Assertion rules:

&nbsp; - Failures MUST include context and expected vs actual values.

\- Parallelism rules:

&nbsp; - t.Parallel MUST be used only when tests are isolated.

\- Dependency rules:

&nbsp; - Avoid global state and environment coupling.

\- Performance rules:

&nbsp; - Benchmarks MUST be isolated from functional tests.

\- Verification rules:

&nbsp; - Tests MUST pass with race detection enabled when feasible.

&nbsp; - Coverage regressions MUST be reviewed.

&nbsp; - Violations of these standards MUST be treated as defects.



