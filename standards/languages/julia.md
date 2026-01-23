=========================================================

languages/julia.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# julia Standards



\## Standards

\- Julia code MUST prioritize correctness, numerical stability, and performance.

\- Supported, stable Julia versions MUST be used unless explicitly constrained.

\- Code MUST follow idiomatic Julia style and conventions.

\- Type stability MUST be considered and enforced in performance-critical paths.

\- Multiple dispatch MUST be used intentionally and documented.

\- Global mutable state MUST be avoided.

\- Functions MUST be small, focused, and composable.

\- Explicit types SHOULD be used where they improve clarity or performance.

\- Broadcasting and vectorization MUST be used intentionally and correctly.

\- Memory allocations in hot paths MUST be minimized.

\- Parallelism and concurrency MUST be explicit and safe.

\- Randomness MUST use explicit RNGs and fixed seeds when reproducibility is required.

\- Errors MUST be handled explicitly; silent failures MUST be avoided.

\- Logging MUST be structured and meaningful.

\- Configuration MUST be externalized and environment-aware.

\- Sensitive data MUST NOT be hard-coded or logged.

\- Tests MUST be written for all non-trivial logic per agents/tests.md.

\- Julia usage MUST align with agents/performance.md and agents/security.md.



\## Scope

In scope:

\- Julia application and library code

\- Numerical computing and data processing

\- Performance optimization and profiling

\- Parallel and distributed execution

\- Package and dependency usage



Out of scope:

\- Infrastructure provisioning specifics (platforms/\*)

\- UI or frontend concerns

\- Non-Julia runtime integration details unless explicitly scoped



Assumptions:

\- Performance and numerical correctness are important.

\- Code may be used for data science, simulation, or backend services.

\- Reproducibility may be required.



\## Responsibilities

\- Developers:

&nbsp; - Write idiomatic, type-stable Julia code

&nbsp; - Optimize performance where required

&nbsp; - Add tests and validation



\- Reviewers:

&nbsp; - Enforce type stability and performance best practices

&nbsp; - Reject unnecessary allocations and unsafe patterns



\- DevSecOps:

&nbsp; - Ensure Julia versions and dependencies are consistent

&nbsp; - Enforce reproducible builds and execution



\## Usage

\- Apply this file when:

&nbsp; - writing or modifying Julia code

&nbsp; - building numerical, data, or computational services

\- This file MUST be composed with:

&nbsp; - agents/coding-standards.md

&nbsp; - agents/tests.md

&nbsp; - agents/security.md

&nbsp; - agents/performance.md

\- Data-specific standards MUST be composed with:

&nbsp; - agents/data-ml.md when applicable



\## Structure

\- Julia projects SHOULD follow standard layout:

&nbsp; - src/ for production code

&nbsp; - test/ for test code

\- Packages MUST define a clear module structure.

\- Public APIs MUST be minimal and documented.



\## File Decomposition

\- Modules:

&nbsp; - MUST define cohesive functionality.

\- Functions:

&nbsp; - MUST be small, composable, and testable.

\- Types:

&nbsp; - MUST be defined intentionally and documented.

\- Configuration:

&nbsp; - MUST be externalized and validated.

\- Tests:

&nbsp; - MUST validate correctness, edge cases, and numerical behavior.



\## Application Rules

\- Type stability rules:

&nbsp; - Use type-stable functions in performance-critical code.

&nbsp; - Avoid abstract types in hot paths.

\- Performance rules:

&nbsp; - Profile before optimizing.

&nbsp; - Avoid unnecessary allocations.

\- Dispatch rules:

&nbsp; - Multiple dispatch MUST be clear and intentional.

\- Randomness rules:

&nbsp; - Use explicit RNGs for reproducibility.

\- Concurrency rules:

&nbsp; - Shared state MUST be synchronized or eliminated.

\- Verification rules:

&nbsp; - Unit tests MUST cover critical logic.

&nbsp; - Performance benchmarks SHOULD be used where relevant.

&nbsp; - Violations of these standards MUST be treated as defects.



