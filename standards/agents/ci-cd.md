=========================================================

agents/ci-cd.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# ci-cd Standards



\## Standards

\- All repositories MUST use automated CI pipelines.

\- All changes MUST be validated by CI before merge.

\- CI pipelines MUST be deterministic and reproducible.

\- CI pipelines MUST fail fast on validation errors.

\- CD pipelines MUST deploy only artifacts that passed CI.

\- CI and CD pipelines MUST be defined as code and version-controlled.

\- Pipelines MUST be environment-aware and MUST separate build, test, and deploy stages.

\- Secrets MUST NOT be hard-coded in pipelines and MUST be sourced from approved secret managers.

\- Pipelines MUST enforce quality gates defined by agents/tests.md, agents/security.md, and agents/quality standards.

\- Pipelines MUST enforce dependency security checks per agents/dependencies.md.

\- Pipelines MUST enforce API contract validation when applicable.

\- Pipelines MUST produce artifacts suitable for promotion across environments.

\- Pipelines MUST support rollback to a previously known good state.

\- Pipelines MUST emit logs and metrics for observability.

\- Pipelines MUST NOT bypass mandatory checks via manual steps.

\- Pipelines MUST support parallel execution where safe to reduce cycle time.

\- Pipelines MUST support isolated execution environments.

\- Pipelines MUST fail on configuration drift or invalid pipeline definitions.



\## Scope

In scope:

\- Continuous integration pipelines

\- Continuous delivery and deployment pipelines

\- Build, test, package, and release automation

\- Pipeline configuration and execution environments

\- Artifact generation and promotion

\- Rollback and recovery mechanisms



Out of scope:

\- Application runtime behavior (agents/backend.md, agents/frontend.md)

\- Infrastructure provisioning details (agents/devsecops.md, platforms/\*)

\- Language-specific build commands (languages/\*)

\- Test implementation details (languages/\* test framework files)



Assumptions:

\- CI and CD run in managed or self-hosted pipeline systems.

\- Pipelines are triggered on code changes and release events.

\- Artifacts are stored in an accessible artifact repository.



\## Responsibilities

\- DevSecOps responsibilities:

&nbsp; - Design, implement, and maintain CI/CD pipelines

&nbsp; - Enforce mandatory quality gates

&nbsp; - Manage secrets and credentials securely

&nbsp; - Ensure pipeline reliability and observability



\- Application engineers:

&nbsp; - Ensure code changes pass all pipeline checks

&nbsp; - Maintain build and test configurations

&nbsp; - Fix pipeline failures introduced by changes



\- Reviewers:

&nbsp; - Verify pipeline definitions are updated when required

&nbsp; - Reject changes that weaken or bypass pipeline controls



\## Usage

\- Apply this file when:

&nbsp; - creating or modifying CI or CD pipelines

&nbsp; - introducing new build, test, or deployment steps

&nbsp; - changing artifact formats or promotion flow

\- This file MUST be composed with:

&nbsp; - agents/tests.md

&nbsp; - agents/security.md

&nbsp; - agents/dependencies.md

&nbsp; - agents/repo-hygiene.md

&nbsp; - agents/observability.md

\- Platform-specific pipeline standards MUST be composed from languages/\*:

&nbsp; - languages/github-actions.md

&nbsp; - languages/gitlab-ci.md

&nbsp; - other CI tooling standards when used



\## Structure

\- Pipeline definitions MUST reside in a well-known location, such as:

&nbsp; - .github/workflows/

&nbsp; - .gitlab-ci.yml

&nbsp; - ci/ or pipelines/

\- Pipelines SHOULD be organized into stages:

&nbsp; - validate

&nbsp; - build

&nbsp; - test

&nbsp; - package

&nbsp; - deploy

\- Environment-specific configuration MUST be externalized.

\- Pipeline steps MUST be small, explicit, and composable.



\## File Decomposition

\- Validation stage:

&nbsp; - Lint pipeline definitions.

&nbsp; - Validate configuration and syntax.

\- Build stage:

&nbsp; - Compile or package artifacts.

&nbsp; - Produce immutable build outputs.

\- Test stage:

&nbsp; - Execute unit, integration, and E2E tests per agents/tests.md.

&nbsp; - Execute contract tests when APIs exist.

\- Security stage:

&nbsp; - Run dependency vulnerability scans.

&nbsp; - Run static analysis and policy checks.

\- Package stage:

&nbsp; - Version and store artifacts.

&nbsp; - Generate checksums or signatures.

\- Deploy stage:

&nbsp; - Deploy artifacts to target environments.

&nbsp; - Verify deployment health.

&nbsp; - Support rollback.



\## Application Rules

\- Quality gates:

&nbsp; - Pipelines MUST fail if required tests fail.

&nbsp; - Pipelines MUST fail if security scans exceed allowed thresholds.

&nbsp; - Pipelines MUST fail if contract validation fails.

\- Artifact rules:

&nbsp; - Artifacts MUST be immutable once built.

&nbsp; - Artifacts MUST be traceable to source commit and pipeline run.

\- Deployment rules:

&nbsp; - Production deployments MUST require passing all prior stages.

&nbsp; - Deployment order MUST be controlled and repeatable.

\- Rollback rules:

&nbsp; - Rollback MUST be automated or documented.

&nbsp; - Rollback MUST restore a known good artifact.

\- Change rules:

&nbsp; - Pipeline changes MUST be reviewed like application code.

&nbsp; - Pipeline failures caused by changes MUST be fixed before merge.

\- Verification rules:

&nbsp; - CI MUST validate on every pull request or merge request.

&nbsp; - CD MUST validate deployment success before completion.



