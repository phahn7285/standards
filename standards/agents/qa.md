=========================================================

agents/qa.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# qa Standards



\## Standards

\- Quality assurance MUST be systematic, automated-first, and risk-based.

\- QA MUST validate functional correctness, non-functional requirements, and edge cases.

\- QA MUST ensure behavior matches documented requirements and contracts.

\- QA MUST be integrated into the development lifecycle.

\- QA MUST avoid reliance on manual testing as the primary validation mechanism.

\- QA MUST validate negative paths, failure modes, and boundary conditions.

\- QA MUST validate backward compatibility where applicable.

\- QA MUST validate security and privacy controls where relevant.

\- QA MUST validate performance characteristics when behavior changes.

\- QA MUST ensure AI systems behave safely, predictably, and within defined constraints.

\- QA artifacts MUST be version-controlled.

\- QA results MUST be visible and actionable.

\- QA MUST align with agents/tests.md and agents/code-review.md.



\## Scope

In scope:

\- Functional testing

\- Integration testing

\- End-to-end testing

\- Regression testing

\- Exploratory testing when required

\- Non-functional validation (performance, reliability, usability where applicable)

\- AI and ML behavior validation

\- Test data management and validation



Out of scope:

\- Unit test implementation details (languages/\* test framework files)

\- CI/CD pipeline definition (agents/ci-cd.md)

\- Production monitoring and alerting (agents/observability.md)



Assumptions:

\- Automated testing frameworks are available.

\- QA may operate across multiple environments.

\- Systems may evolve continuously.



\## Responsibilities

\- QA engineers:

&nbsp; - Design and maintain automated test suites

&nbsp; - Define test strategies and coverage

&nbsp; - Validate system behavior against requirements



\- Developers:

&nbsp; - Support testability and automation

&nbsp; - Fix defects identified by QA promptly



\- Reviewers:

&nbsp; - Ensure adequate test coverage exists

&nbsp; - Reject changes that reduce quality or coverage



\- DevSecOps:

&nbsp; - Ensure test execution environments are available

&nbsp; - Integrate QA automation into pipelines



\## Usage

\- Apply this file when:

&nbsp; - validating application behavior

&nbsp; - introducing new features or workflows

&nbsp; - performing regression testing

\- This file MUST be composed with:

&nbsp; - agents/tests.md

&nbsp; - agents/code-review.md

&nbsp; - agents/security.md

&nbsp; - agents/privacy.md when applicable

\- UI automation MUST be composed with:

&nbsp; - languages/playwright.md or languages/cypress.md

\- Mobile automation MUST be composed with:

&nbsp; - languages/detox.md when applicable



\## Structure

\- QA artifacts SHOULD be organized by test type:

&nbsp; - unit (owned by developers)

&nbsp; - integration

&nbsp; - e2e

&nbsp; - regression

\- Test environments MUST be clearly defined.

\- Test data MUST be managed and isolated.



\## File Decomposition

\- Test plans:

&nbsp; - MUST define scope, risks, and coverage goals.

\- Automated tests:

&nbsp; - MUST be deterministic and repeatable.

&nbsp; - MUST cover success and failure paths.

\- Test data:

&nbsp; - MUST be representative and privacy-compliant.

\- Reports:

&nbsp; - MUST capture results, failures, and trends.



\## Application Rules

\- Coverage rules:

&nbsp; - Critical paths MUST be covered by automated tests.

&nbsp; - Edge cases MUST be explicitly tested.

\- Regression rules:

&nbsp; - Regressions MUST be detected before release.

\- Defect rules:

&nbsp; - Defects MUST be logged, tracked, and prioritized.

\- AI validation rules:

&nbsp; - AI outputs MUST be validated for safety and correctness.

&nbsp; - Non-deterministic behavior MUST be bounded and monitored.

\- Environment rules:

&nbsp; - Tests MUST NOT depend on production data.

\- Verification rules:

&nbsp; - QA approval MUST be required for release readiness.

&nbsp; - Violations of these standards MUST be treated as defects.



