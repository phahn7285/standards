=========================================================

languages/typescript.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# typescript Standards



\## Standards

\- TypeScript MUST be used for type-safe JavaScript development where selected.

\- TypeScript strict mode MUST be enabled.

\- Any usage MUST be avoided and explicitly justified when unavoidable.

\- Unknown MUST be preferred over any for untyped inputs.

\- Types MUST model domain intent and constraints.

\- Public APIs MUST be typed explicitly.

\- Type inference MUST be used intentionally; do not omit types where it reduces clarity.

\- Type assertions MUST be avoided; prefer type guards and validation.

\- Runtime validation MUST exist at trust boundaries.

\- Null and undefined handling MUST be explicit.

\- Enums MUST be used sparingly; prefer union types where appropriate.

\- Generics MUST be used intentionally and kept simple.

\- Utility types MUST be used intentionally and documented when non-obvious.

\- Imports MUST be explicit and organized consistently.

\- Module boundaries MUST be clear and stable.

\- Side effects at module top level MUST be minimized.

\- Exceptions MUST be used for exceptional conditions, not control flow.

\- Errors MUST NOT be swallowed silently.

\- Logging MUST be structured and avoid sensitive data.

\- Configuration MUST be externalized and environment-aware.

\- Secrets MUST NOT be embedded in client code or repositories.

\- Build outputs MUST be deterministic.

\- Linting and type checking MUST be enforced in CI.

\- Tests MUST be written for all non-trivial logic per agents/tests.md.

\- TypeScript usage MUST align with agents/coding-standards.md and agents/security.md.



\## Scope

In scope:

\- TypeScript application and library code

\- Type system usage and patterns

\- Module organization and boundaries

\- Runtime validation at boundaries

\- Build and compilation practices



Out of scope:

\- Framework-specific patterns (languages/react.md, languages/reactnative.md)

\- CSS and HTML specifics (languages/css.md, languages/html.md)

\- Infrastructure provisioning specifics (platforms/\*)



Assumptions:

\- TypeScript compiles to JavaScript for runtime execution.

\- Code may run in browsers, Node.js, or serverless runtimes.

\- Type safety is a core maintainability requirement.



\## Responsibilities

\- Developers:

&nbsp; - Write type-safe TypeScript

&nbsp; - Validate untrusted inputs at runtime boundaries

&nbsp; - Avoid unsafe casts and any

&nbsp; - Add tests and validation



\- Reviewers:

&nbsp; - Enforce strict typing and safe patterns

&nbsp; - Reject unsafe casts, implicit any, and missing boundary validation



\- DevSecOps:

&nbsp; - Enforce consistent TypeScript versions and build tooling

&nbsp; - Ensure linting and type checking in CI



\## Usage

\- Apply this file when:

&nbsp; - writing or modifying TypeScript code

&nbsp; - building TypeScript libraries or applications

\- This file MUST be composed with:

&nbsp; - agents/coding-standards.md

&nbsp; - agents/tests.md

&nbsp; - agents/security.md

&nbsp; - agents/performance.md when performance-sensitive

\- Test framework specifics MUST be composed from:

&nbsp; - languages/jest.md for unit tests when applicable

&nbsp; - languages/cypress.md or languages/playwright.md for E2E tests when applicable



\## Structure

\- TypeScript projects SHOULD follow standard layout:

&nbsp; - src/ for production code

&nbsp; - tests/ for test code

&nbsp; - config/ for configuration

\- Modules MUST define clear boundaries and avoid circular dependencies.

\- Public interfaces MUST be versioned and stable when shared.



\## File Decomposition

\- Types:

&nbsp; - MUST model domain objects and constraints.

\- Validation:

&nbsp; - MUST define runtime checks for untrusted inputs.

\- Modules:

&nbsp; - MUST encapsulate cohesive responsibilities.

\- Services:

&nbsp; - MUST isolate external integration and side effects.

\- Tests:

&nbsp; - MUST validate behavior, edge cases, and boundary validation.



\## Application Rules

\- Type safety rules:

&nbsp; - strict MUST be enabled.

&nbsp; - any MUST be avoided.

&nbsp; - unknown MUST be validated before use.

\- Boundary rules:

&nbsp; - Parse and validate all untrusted inputs.

\- Null rules:

&nbsp; - Avoid nullable types unless required.

&nbsp; - Handle undefined explicitly.

\- Error handling rules:

&nbsp; - Errors MUST be surfaced with actionable context.

\- Dependency rules:

&nbsp; - Dependencies MUST be minimal and version-pinned.

\- Verification rules:

&nbsp; - Type checking and linting MUST run in CI.

&nbsp; - Unit tests MUST cover critical logic.

&nbsp; - Violations of these standards MUST be treated as defects.



