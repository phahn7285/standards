=========================================================

languages/python.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# python Standards



\## Standards

\- Python code MUST prioritize correctness, readability, and maintainability.

\- Supported, actively maintained Python versions MUST be used unless explicitly constrained.

\- Code MUST follow PEP 8 style and formatting rules.

\- Type hints MUST be used for all public functions, methods, and complex logic.

\- Static type checking MUST be enforced where feasible.

\- Dynamic behavior MUST be validated at runtime boundaries.

\- Functions MUST be small, focused, and composable.

\- Classes MUST have a single, clear responsibility.

\- Global mutable state MUST be avoided.

\- Exceptions MUST be used for exceptional conditions, not control flow.

\- Errors MUST NOT be swallowed silently.

\- Logging MUST be structured and avoid sensitive data.

\- Configuration MUST be externalized and environment-aware.

\- Secrets MUST NOT be hard-coded.

\- Dependency management MUST be explicit and reproducible.

\- Virtual environments MUST be used.

\- Imports MUST be explicit and ordered consistently.

\- Python code MUST be deterministic where reproducibility is required.

\- Concurrency and parallelism MUST be explicit and safe.

\- Tests MUST be written for all non-trivial logic per agents/tests.md.

\- Python usage MUST align with agents/security.md and agents/coding-standards.md.



\## Scope

In scope:

\- Python application and library code

\- Scripting and automation

\- Dependency and environment management

\- Error handling and logging

\- Concurrency and asynchronous execution



Out of scope:

\- Infrastructure provisioning specifics (platforms/\*)

\- Frontend UI concerns

\- Non-Python runtime integration unless explicitly scoped



Assumptions:

\- Python may be used for backend services, automation, data processing, or tooling.

\- Code may run locally, in CI, or in containerized environments.

\- Reliability and maintainability are required.



\## Responsibilities

\- Developers:

&nbsp; - Write idiomatic, typed Python code

&nbsp; - Validate inputs and handle errors explicitly

&nbsp; - Manage dependencies responsibly

&nbsp; - Add tests and validation



\- Reviewers:

&nbsp; - Enforce style, typing, and safety rules

&nbsp; - Reject unsafe patterns and hidden side effects



\- DevSecOps:

&nbsp; - Ensure Python versions and dependencies are consistent

&nbsp; - Enforce reproducible builds and CI validation



\## Usage

\- Apply this file when:

&nbsp; - writing or modifying Python code

&nbsp; - building Python services, libraries, or automation

\- This file MUST be composed with:

&nbsp; - agents/coding-standards.md

&nbsp; - agents/tests.md

&nbsp; - agents/security.md

&nbsp; - agents/performance.md when performance-sensitive

\- Test framework specifics MUST be composed from:

&nbsp; - languages/pytest.md when applicable



\## Structure

\- Python projects SHOULD follow standard layout:

&nbsp; - src/ for production code

&nbsp; - tests/ for test code

&nbsp; - config/ for configuration

\- Packages MUST define clear module boundaries.

\- Entry points MUST be minimal and explicit.



\## File Decomposition

\- Modules:

&nbsp; - MUST define cohesive functionality.

\- Functions:

&nbsp; - MUST be small and testable.

\- Classes:

&nbsp; - MUST encapsulate a single responsibility.

\- Configuration:

&nbsp; - MUST be externalized and validated.

\- Tests:

&nbsp; - MUST validate behavior, edge cases, and error handling.



\## Application Rules

\- Typing rules:

&nbsp; - Use type hints consistently.

&nbsp; - Avoid untyped public APIs.

\- Error handling rules:

&nbsp; - Catch exceptions only when recovery is possible.

&nbsp; - Re-raise or fail fast otherwise.

\- Concurrency rules:

&nbsp; - Shared mutable state MUST be synchronized or eliminated.

\- Dependency rules:

&nbsp; - Dependencies MUST be minimal and version-pinned.

\- Security rules:

&nbsp; - Validate all external inputs.

&nbsp; - Avoid unsafe deserialization.

\- Verification rules:

&nbsp; - Static analysis and linting SHOULD run in CI.

&nbsp; - Unit tests MUST cover critical logic.

&nbsp; - Violations of these standards MUST be treated as defects.



