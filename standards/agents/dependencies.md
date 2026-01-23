=========================================================

agents/dependencies.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# dependencies Standards



\## Standards

\- All dependencies MUST be explicitly declared and version-controlled.

\- Dependencies MUST be sourced only from approved, trusted repositories.

\- Dependency versions MUST be pinned using lockfiles or equivalent mechanisms.

\- Unbounded version ranges MUST NOT be used in production code.

\- Dependencies MUST be minimal and justified by functional need.

\- Transitive dependencies MUST be understood and managed.

\- Duplicate or overlapping dependencies providing the same capability MUST be avoided.

\- Dependency updates MUST be intentional and reviewed.

\- Dependencies MUST comply with security, licensing, and compliance requirements.

\- Known vulnerable dependencies MUST NOT be introduced.

\- Dependency security scanning MUST be enforced in CI.

\- Dependency licenses MUST be compatible with project and organizational policy.

\- Dependencies MUST be removable without widespread refactoring.

\- Vendoring dependencies MUST be explicitly approved.

\- Runtime dependencies MUST be separated from development-only dependencies.

\- Optional dependencies MUST be explicitly declared and isolated.

\- Dependency resolution MUST be deterministic across environments.

\- Dependency changes MUST be traceable to a specific change request.



\## Scope

In scope:

\- Application runtime dependencies

\- Development and test dependencies

\- Build and tooling dependencies

\- Infrastructure-as-code dependencies

\- CI and automation dependencies

\- Transitive dependency management



Out of scope:

\- Operating system packages managed outside the repository

\- Platform-managed services (platforms/\*)

\- Language runtime internals



Assumptions:

\- Dependency management tooling exists for each language or ecosystem.

\- Lockfiles or equivalent artifacts are supported.

\- CI can execute dependency analysis and scanning.



\## Responsibilities

\- Developers:

&nbsp; - Declare dependencies explicitly and minimally

&nbsp; - Justify new or updated dependencies

&nbsp; - Maintain lockfiles and dependency manifests



\- Reviewers:

&nbsp; - Validate necessity and scope of dependency changes

&nbsp; - Reject unnecessary, risky, or duplicative dependencies

&nbsp; - Verify security and license implications



\- DevSecOps:

&nbsp; - Enforce dependency scanning and policy checks in CI

&nbsp; - Maintain approved dependency sources and mirrors

&nbsp; - Manage vulnerability alerting and remediation workflows



\## Usage

\- Apply this file when:

&nbsp; - adding, removing, or updating any dependency

&nbsp; - introducing a new framework, library, or tool

&nbsp; - modifying build, test, or CI tooling dependencies

\- This file MUST be composed with:

&nbsp; - agents/security.md

&nbsp; - agents/tests.md

&nbsp; - agents/ci-cd.md

&nbsp; - agents/code-review.md

\- Language-specific dependency rules MUST be composed from languages/\* standards files.



\## Structure

\- Dependency manifests MUST reside in standard, ecosystem-recognized locations.

\- Lockfiles MUST be committed to version control.

\- Dependency configuration MUST be environment-agnostic.

\- Private or internal dependencies MUST be clearly identified.

\- Dependency overrides MUST be explicit and documented.



\## File Decomposition

\- Dependency manifest files:

&nbsp; - MUST list all direct dependencies.

&nbsp; - MUST distinguish runtime and development dependencies.

\- Lockfiles:

&nbsp; - MUST fully resolve transitive dependencies.

&nbsp; - MUST be regenerated only through approved tooling.

\- Dependency configuration:

&nbsp; - MUST define approved sources and registries.

&nbsp; - MUST define proxy or mirror usage when applicable.



\## Application Rules

\- Addition rules:

&nbsp; - New dependencies MUST include justification in the change request.

&nbsp; - New dependencies MUST be reviewed for security, license, and maintenance risk.

\- Update rules:

&nbsp; - Updates MUST specify reason: security, bug fix, feature, or maintenance.

&nbsp; - Breaking updates MUST be evaluated for impact.

\- Removal rules:

&nbsp; - Unused dependencies MUST be removed promptly.

\- Security rules:

&nbsp; - CI MUST fail on critical or high-severity vulnerabilities unless explicitly overridden per orchestration rules.

\- License rules:

&nbsp; - Incompatible licenses MUST NOT be introduced.

\- Determinism rules:

&nbsp; - Builds MUST produce identical dependency graphs given the same inputs.

\- Verification rules:

&nbsp; - Dependency changes MUST pass all automated checks.

&nbsp; - Violations of these standards MUST be treated as defects.



