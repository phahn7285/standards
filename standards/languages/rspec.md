=========================================================

languages/rspec.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# rspec Standards



\## Standards

\- RSpec MUST be used for unit and integration testing of Ruby code where selected.

\- Tests MUST be deterministic, isolated, and repeatable.

\- Specs MUST validate observable behavior, not implementation details.

\- Spec descriptions MUST be clear, descriptive, and stable.

\- Expectations MUST be specific and produce actionable failure output.

\- Shared examples MUST be used intentionally and kept minimal.

\- Mocks and stubs MUST be used intentionally and minimized.

\- Allow and expect usage MUST be explicit and scoped.

\- Test doubles MUST not hide missing integration coverage.

\- Time-dependent behavior MUST use controllable clocks or time helpers.

\- Randomized tests MUST use fixed seeds and record seeds on failure.

\- IO and network interactions MUST be mocked or isolated.

\- Slow specs MUST be isolated, tagged, and justified.

\- RSpec configuration MUST be consistent and version-controlled.

\- RSpec usage MUST align with agents/tests.md and agents/coding-standards.md.



\## Scope

In scope:

\- Unit specs written with RSpec

\- Integration specs at module or service boundaries

\- Fixtures, factories, and helpers

\- Mocking and stubbing patterns

\- Spec execution and reporting



Out of scope:

\- End-to-end browser testing frameworks

\- Load and performance testing frameworks

\- CI pipeline configuration specifics



Assumptions:

\- Ruby projects follow conventional layouts.

\- CI executes the full test suite on changes.



\## Responsibilities

\- Developers:

&nbsp; - Write and maintain RSpec specs

&nbsp; - Ensure coverage for new and changed behavior

&nbsp; - Keep specs fast and deterministic



\- Reviewers:

&nbsp; - Validate spec quality, determinism, and coverage

&nbsp; - Reject flaky specs and over-mocking



\- DevSecOps:

&nbsp; - Integrate RSpec execution into CI pipelines

&nbsp; - Ensure consistent Ruby and dependency versions



\## Usage

\- Apply this file when:

&nbsp; - using RSpec in a Ruby codebase

&nbsp; - creating or modifying unit or integration specs

\- This file MUST be composed with:

&nbsp; - agents/tests.md

&nbsp; - agents/coding-standards.md

&nbsp; - agents/ci-cd.md

&nbsp; - languages/ruby.md



\## Structure

\- Spec files MUST reside under a spec/ directory.

\- Spec files MUST end with \_spec.rb.

\- Spec files SHOULD mirror the structure of the code under test.

\- Shared helpers MUST be centralized and minimal.



\## File Decomposition

\- Spec files:

&nbsp; - MUST group related behaviors by unit or feature.

\- Describe blocks:

&nbsp; - MUST define the unit under test.

\- Context blocks:

&nbsp; - MUST define meaningful scenario variations.

\- Shared examples:

&nbsp; - MUST define reusable behavior contracts.

\- Support helpers:

&nbsp; - MUST provide reusable setup and utilities.



\## Application Rules

\- Mocking rules:

&nbsp; - Prefer real objects for internal logic.

&nbsp; - Mock only external dependencies and boundaries.

\- Isolation rules:

&nbsp; - Specs MUST NOT rely on execution order.

\- Clarity rules:

&nbsp; - Avoid deeply nested contexts without justification.

\- Performance rules:

&nbsp; - Unit specs MUST execute quickly.

\- Verification rules:

&nbsp; - New functionality MUST include new specs.

&nbsp; - Failing or flaky specs MUST be treated as defects.



