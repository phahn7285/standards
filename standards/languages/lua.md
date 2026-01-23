=========================================================

languages/lua.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# lua Standards



\## Standards

\- Lua code MUST prioritize simplicity, correctness, and predictability.

\- Supported, stable Lua versions MUST be used unless explicitly constrained.

\- Global variables MUST be avoided.

\- Modules MUST be used to encapsulate functionality.

\- State MUST be explicit and passed through function boundaries.

\- Error handling MUST be explicit and consistent.

\- pcall or xpcall MUST be used when handling recoverable errors.

\- Metatables MUST be used intentionally and documented.

\- Dynamic typing MUST be managed carefully with validation at boundaries.

\- Functions MUST be small, focused, and composable.

\- Side effects MUST be minimized and controlled.

\- Configuration MUST be externalized and environment-aware.

\- Sensitive data MUST NOT be hard-coded or logged.

\- Lua scripts MUST be deterministic and non-interactive by default.

\- Tests MUST be written for all non-trivial logic per agents/tests.md.

\- Lua usage MUST align with agents/security.md and agents/coding-standards.md.



\## Scope

In scope:

\- Lua application and library code

\- Scripting and automation use cases

\- Embedded Lua environments

\- Module and package usage

\- Error handling and runtime behavior



Out of scope:

\- Infrastructure provisioning specifics (platforms/\*)

\- UI or frontend concerns

\- Language extensions or custom runtimes unless explicitly scoped



Assumptions:

\- Lua may be embedded within other systems.

\- Performance characteristics may vary by runtime.

\- Simplicity and portability are priorities.



\## Responsibilities

\- Developers:

&nbsp; - Write idiomatic, modular Lua code

&nbsp; - Avoid global state and hidden side effects

&nbsp; - Add tests and validation



\- Reviewers:

&nbsp; - Enforce modularity and safety rules

&nbsp; - Reject uncontrolled dynamic behavior



\- DevSecOps:

&nbsp; - Ensure Lua runtime versions are consistent

&nbsp; - Enforce secure configuration and execution



\## Usage

\- Apply this file when:

&nbsp; - writing or modifying Lua code

&nbsp; - building scripts or embedded logic

\- This file MUST be composed with:

&nbsp; - agents/coding-standards.md

&nbsp; - agents/tests.md

&nbsp; - agents/security.md

&nbsp; - agents/performance.md when performance-sensitive



\## Structure

\- Lua projects SHOULD follow modular layout:

&nbsp; - src/ for production code

&nbsp; - test/ for test code

\- Modules MUST map clearly to responsibilities.

\- Entry points MUST be minimal and explicit.



\## File Decomposition

\- Modules:

&nbsp; - MUST define cohesive functionality.

\- Functions:

&nbsp; - MUST be small and testable.

\- Configuration:

&nbsp; - MUST be externalized and validated.

\- Tests:

&nbsp; - MUST validate behavior and edge cases.



\## Application Rules

\- State rules:

&nbsp; - Avoid globals; pass state explicitly.

\- Error handling rules:

&nbsp; - Use pcall or xpcall where recovery is required.

\- Metatable rules:

&nbsp; - Metaprogramming MUST be minimal and documented.

\- Dependency rules:

&nbsp; - Dependencies MUST be explicit.

\- Security rules:

&nbsp; - Validate external inputs.

\- Verification rules:

&nbsp; - Unit tests MUST cover critical logic.

&nbsp; - Static analysis SHOULD be used when available.

&nbsp; - Violations of these standards MUST be treated as defects.



