=========================================================

languages/groovy.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# groovy Standards



\## Standards

\- Groovy code MUST prioritize readability, correctness, and maintainability.

\- Static compilation or type checking MUST be used when feasible for production code.

\- Dynamic features MUST be used intentionally and minimally.

\- Code MUST follow consistent formatting and style conventions.

\- Null handling MUST be explicit.

\- Exceptions MUST be used for exceptional conditions, not control flow.

\- External inputs MUST be validated and sanitized.

\- Groovy scripts MUST be deterministic and non-interactive by default.

\- Build and dependency configuration MUST be reproducible.

\- Sensitive data MUST NOT be hard-coded or logged.

\- Tests MUST be written for all non-trivial logic per agents/tests.md.

\- Groovy usage MUST align with agents/security.md and agents/coding-standards.md.



\## Scope

In scope:

\- Groovy application and library code

\- Groovy scripts used for automation

\- Build and pipeline scripts written in Groovy

\- Type checking and compilation practices



Out of scope:

\- Java code (languages/java.md)

\- CI platform configuration specifics (agents/ci-cd.md)

\- Infrastructure provisioning specifics (platforms/\*)



Assumptions:

\- Groovy may be used in JVM applications and build tooling.

\- Dynamic typing can introduce runtime risk.



\## Responsibilities

\- Developers:

&nbsp; - Write maintainable Groovy with intentional dynamic usage

&nbsp; - Prefer static typing where feasible

&nbsp; - Add tests and validation



\- Reviewers:

&nbsp; - Enforce safe and consistent Groovy usage

&nbsp; - Reject brittle dynamic constructs and hidden side effects



\- DevSecOps:

&nbsp; - Ensure build tooling and pipeline execution are consistent

&nbsp; - Enforce dependency governance



\## Usage

\- Apply this file when:

&nbsp; - writing or modifying Groovy code or scripts

&nbsp; - authoring Groovy-based build or pipeline logic

\- This file MUST be composed with:

&nbsp; - agents/coding-standards.md

&nbsp; - agents/tests.md

&nbsp; - agents/security.md

&nbsp; - agents/ci-cd.md when used in pipelines

\- JVM ecosystem standards MUST be composed with languages/java.md when applicable.



\## Structure

\- Groovy projects SHOULD separate:

&nbsp; - src/main/groovy for production code

&nbsp; - src/test/groovy for test code

&nbsp; - scripts/ for automation scripts when needed

\- Scripts MUST be named descriptively.



\## File Decomposition

\- Classes:

&nbsp; - MUST have a single, clear responsibility.

\- Scripts:

&nbsp; - MUST validate inputs and avoid interactive prompts.

\- Configuration:

&nbsp; - MUST be externalized and environment-aware.

\- Tests:

&nbsp; - MUST validate behavior and edge cases.



\## Application Rules

\- Typing rules:

&nbsp; - Prefer explicit types for public APIs and critical logic.

&nbsp; - Dynamic typing MUST be justified in production code.

\- Null rules:

&nbsp; - Null-safe operators MUST be used intentionally.

\- Error handling rules:

&nbsp; - Exceptions MUST not be swallowed.

\- Security rules:

&nbsp; - Validate and sanitize external inputs.

\- Verification rules:

&nbsp; - Static analysis and linting SHOULD be used when available.

&nbsp; - Unit tests MUST cover critical logic.

&nbsp; - Violations of these standards MUST be treated as defects.



