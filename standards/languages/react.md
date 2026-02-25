=========================================================

languages/react.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# react Standards



\## Standards

\- React applications MUST prioritize correctness, maintainability, accessibility, and performance.

\- React code MUST use function components and hooks by default.

\- Class components MUST NOT be introduced in new code except for explicit compatibility constraints.

\- Component responsibilities MUST be narrowly scoped and composable.

\- State MUST be minimal and colocated to the lowest responsible component.

\- Derived state MUST be computed, not stored.

\- Side effects MUST be isolated to useEffect or equivalent patterns.

\- useEffect dependencies MUST be correct and complete.

\- Effects MUST be idempotent where feasible.

\- Global state MUST be used only when required and MUST be encapsulated behind a clear interface.

\- Props MUST be typed (TypeScript preferred) and validated at boundaries.

\- Components MUST be accessible per agents/accessibility.md.

\- Semantic HTML MUST be used per languages/html.md.

\- Styling MUST be modular and predictable per languages/css.md.

\- Performance MUST be monitored and regressions prevented.

\- Expensive computations MUST be memoized only when measured and justified.

\- Rendering MUST avoid unnecessary re-renders.

\- Event handlers MUST avoid inline heavy logic.

\- Error boundaries MUST be used for non-trivial applications.

\- API calls MUST be centralized and MUST handle retries and timeouts intentionally.

\- Authentication state MUST be handled securely and consistently.

\- Secrets MUST NOT be embedded in frontend code.

\- Configuration MUST be environment-aware and injected at build or runtime.

\- Tests MUST be written per agents/tests.md and framework standards.

\- React testing MUST use Jest for unit tests and Cypress or Playwright for E2E unless explicitly overridden.

\- React usage MUST align with agents/frontend.md, agents/security.md, and agents/observability.md.



\## Scope

In scope:

\- React web applications and component libraries

\- Component structure and composition

\- State management patterns

\- Hooks and side effects

\- Routing, data fetching, and UI composition

\- Accessibility and performance concerns

\- Unit and end-to-end testing patterns for React



Out of scope:

\- React Native (languages/reactnative.md)

\- Backend service implementation

\- Infrastructure provisioning specifics (platforms/\*)



Assumptions

\- JavaScript or TypeScript is used.

\- Applications run in modern browsers.

\- CI executes unit tests and E2E tests.



\## Responsibilities

\- Frontend engineers:

&nbsp; - Implement accessible, maintainable React components

&nbsp; - Manage state and side effects correctly

&nbsp; - Add unit and E2E tests



\- Reviewers:

&nbsp; - Enforce component boundaries, hook correctness, and accessibility

&nbsp; - Reject anti-patterns and performance regressions



\- QA engineers:

&nbsp; - Validate critical user flows and regressions

&nbsp; - Ensure E2E coverage meets requirements



\- DevSecOps:

&nbsp; - Ensure builds are reproducible and environment configuration is correct

&nbsp; - Ensure test execution and artifact collection in CI



\## Usage

\- Apply this file when:

&nbsp; - building or modifying React web applications

&nbsp; - creating or modifying React component libraries

\- This file MUST be composed with:

&nbsp; - agents/frontend.md

&nbsp; - agents/accessibility.md

&nbsp; - agents/tests.md

&nbsp; - agents/security.md

&nbsp; - agents/observability.md

&nbsp; - languages/html.md

&nbsp; - languages/css.md

&nbsp; - languages/javascript.md or languages/typescript.md

&nbsp; - languages/jest.md

&nbsp; - languages/cypress.md or languages/playwright.md



\## Structure

\- React projects SHOULD be organized by feature or domain.

\- Components SHOULD be colocated with their styles, tests, and related assets.

\- UI primitives and shared components SHOULD live in a shared directory.

\- Pages or routes SHOULD be separated from shared components.

\- Data access code SHOULD be centralized.



\## File Decomposition

\- Components:

&nbsp; - MUST encapsulate a single UI responsibility.

&nbsp; - MUST expose a minimal, typed API.

\- Hooks:

&nbsp; - MUST encapsulate reusable stateful logic.

&nbsp; - MUST avoid hidden side effects.

\- State management:

&nbsp; - MUST be colocated unless cross-cutting needs justify shared state.

\- Data layer:

&nbsp; - MUST centralize API calls and error handling.

\- Routing:

&nbsp; - MUST define navigation structure and access control.

\- Tests:

&nbsp; - Unit tests MUST validate component behavior.

&nbsp; - E2E tests MUST validate critical user flows.



\## Application Rules

\- Hooks rules:

&nbsp; - Hooks MUST be called unconditionally and at top level.

&nbsp; - Dependency arrays MUST be complete.

\- State rules:

&nbsp; - Avoid derived state.

&nbsp; - Avoid duplicating the source of truth.

\- Rendering rules:

&nbsp; - Avoid unnecessary re-renders by stabilizing props and callbacks where needed.

&nbsp; - Memoization MUST be measurement-driven.

\- Accessibility rules:

&nbsp; - All components MUST meet agents/accessibility.md requirements.

\- Security rules:

&nbsp; - Do not store secrets in the client.

&nbsp; - Validate and encode user-generated content.

\- Testing rules:

&nbsp; - Use Jest for unit tests by default.

&nbsp; - Use Cypress or Playwright for E2E tests by default.

&nbsp; - Flaky tests MUST be treated as defects.

\- Verification rules:

&nbsp; - Linting and type checking MUST run in CI.

&nbsp; - Unit tests MUST run on every change.

&nbsp; - E2E tests MUST run per release gates.

&nbsp; - Violations of these standards MUST be treated as defects.



