=========================================================

languages/rust.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# rust Standards



\## Standards

\- Rust code MUST prioritize correctness, safety, and maintainability.

\- Supported, stable Rust toolchains MUST be used unless explicitly constrained.

\- Rust edition MUST be explicitly defined and kept current where feasible.

\- Clippy and rustfmt MUST be used and enforced.

\- Ownership and borrowing rules MUST be used to prevent unsafe memory patterns.

\- unsafe blocks MUST be avoided and used only when absolutely necessary.

\- All unsafe usage MUST be minimal, documented, and tested.

\- Errors MUST be handled explicitly using Result and Option.

\- panics MUST be avoided in library and application logic except for unrecoverable programmer errors.

\- Public APIs MUST be minimal, stable, and documented.

\- Traits MUST be designed for composability and clarity.

\- Concurrency MUST be safe and explicit.

\- Shared state MUST be synchronized or eliminated.

\- Timeouts MUST be defined for external calls and long-running operations.

\- Configuration MUST be externalized and environment-aware.

\- Sensitive data MUST NOT be hard-coded or logged.

\- Dependencies MUST be minimal, version-pinned, and audited.

\- Tests MUST be written for all non-trivial logic per agents/tests.md.

\- Rust usage MUST align with agents/security.md and agents/coding-standards.md.



\## Scope

In scope:

\- Rust application and library code

\- Cargo project structure and dependency management

\- Error handling patterns

\- Unsafe usage governance

\- Concurrency and performance patterns



Out of scope:

\- Infrastructure provisioning specifics (platforms/\*)

\- Frontend UI concerns

\- Rust-specific embedded or no\_std constraints unless explicitly scoped



Assumptions:

\- Rust is used for systems code, services, CLIs, or performance-sensitive components.

\- Safety and correctness are primary requirements.

\- Tooling for linting and formatting is available.



\## Responsibilities

\- Developers:

&nbsp; - Write idiomatic Rust code

&nbsp; - Minimize unsafe usage

&nbsp; - Handle errors explicitly

&nbsp; - Add tests and validation



\- Reviewers:

&nbsp; - Enforce formatting, linting, and safety rules

&nbsp; - Reject unnecessary unsafe blocks and panic usage



\- DevSecOps:

&nbsp; - Ensure toolchain consistency and reproducible builds

&nbsp; - Enforce dependency audits and CI validation



\## Usage

\- Apply this file when:

&nbsp; - writing or modifying Rust code

&nbsp; - building Rust services, libraries, or tooling

\- This file MUST be composed with:

&nbsp; - agents/coding-standards.md

&nbsp; - agents/tests.md

&nbsp; - agents/security.md

&nbsp; - agents/performance.md when performance-sensitive



\## Structure

\- Rust projects MUST use Cargo.

\- src/lib.rs and src/main.rs MUST define clear crate boundaries.

\- Modules MUST be cohesive and avoid unnecessary complexity.

\- Public APIs MUST be explicitly exported.



\## File Decomposition

\- Crates:

&nbsp; - MUST define cohesive functionality.

\- Modules:

&nbsp; - MUST encapsulate responsibilities clearly.

\- Traits:

&nbsp; - MUST define clear contracts.

\- Configuration:

&nbsp; - MUST be externalized and validated.

\- Tests:

&nbsp; - MUST validate behavior, edge cases, and error handling.



\## Application Rules

\- Unsafe rules:

&nbsp; - unsafe MUST be minimized and documented.

&nbsp; - unsafe code MUST have focused tests.

\- Error handling rules:

&nbsp; - Use Result and Option, avoid panics.

\- Dependency rules:

&nbsp; - Dependencies MUST be minimal and audited.

\- Concurrency rules:

&nbsp; - Prefer safe concurrency primitives.

\- Verification rules:

&nbsp; - rustfmt and clippy MUST run in CI.

&nbsp; - Unit tests MUST cover critical logic.

&nbsp; - Violations of these standards MUST be treated as defects.



