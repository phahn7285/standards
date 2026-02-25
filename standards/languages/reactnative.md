=========================================================

languages/reactnative.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# reactnative Standards



\## Standards

\- React Native applications MUST prioritize correctness, maintainability, accessibility, and performance.

\- React Native code MUST use function components and hooks by default.

\- Class components MUST NOT be introduced in new code except for explicit compatibility constraints.

\- Component responsibilities MUST be narrowly scoped and composable.

\- State MUST be minimal and colocated to the lowest responsible component.

\- Derived state MUST be computed, not stored.

\- Side effects MUST be isolated to useEffect or equivalent patterns.

\- useEffect dependencies MUST be correct and complete.

\- Effects MUST be idempotent where feasible.

\- Platform-specific behavior MUST be isolated and explicit.

\- Navigation MUST be centralized and consistent.

\- UI MUST be accessible using platform accessibility APIs.

\- Touch targets MUST meet platform usability expectations.

\- Performance MUST be monitored and regressions prevented.

\- Rendering MUST avoid unnecessary re-renders.

\- Expensive computations MUST be memoized only when measured and justified.

\- Network calls MUST be centralized and MUST handle retries and timeouts intentionally.

\- Offline behavior MUST be explicit when required.

\- Local storage MUST be used safely and consistently.

\- Secrets MUST NOT be embedded in mobile application bundles.

\- Configuration MUST be environment-aware and injected safely.

\- Crash reporting MUST be enabled where applicable.

\- Logging MUST avoid sensitive data.

\- Tests MUST be written per agents/tests.md and framework standards.

\- React Native testing MUST use Jest for unit tests and Cypress or Playwright where applicable, otherwise Detox for mobile E2E unless explicitly overridden.

\- React Native usage MUST align with agents/frontend.md, agents/security.md, and agents/observability.md.



\## Scope

In scope:

\- React Native mobile applications

\- Component structure and composition

\- State management patterns

\- Hooks and side effects

\- Navigation and screen composition

\- Accessibility and performance concerns

\- Testing patterns for React Native



Out of scope:

\- React web applications (languages/react.md)

\- Backend service implementation

\- Infrastructure provisioning specifics (platforms/\*)



Assumptions

\- JavaScript or TypeScript is used.

\- Applications target iOS and Android.

\- CI executes unit tests and selected E2E tests.



\## Responsibilities

\- Mobile engineers:

&nbsp; - Implement accessible, maintainable React Native components

&nbsp; - Manage state, effects, and navigation correctly

&nbsp; - Add unit and E2E tests



\- Reviewers:

&nbsp; - Enforce component boundaries, hook correctness, and platform best practices

&nbsp; - Reject anti-patterns and performance regressions



\- QA engineers:

&nbsp; - Validate critical mobile user flows and regressions

&nbsp; - Ensure E2E coverage meets requirements



\- DevSecOps:

&nbsp; - Ensure builds are reproducible and signing is handled securely

&nbsp; - Ensure test execution and artifact collection in CI



\## Usage

\- Apply this file when:

&nbsp; - building or modifying React Native applications

&nbsp; - creating or modifying shared mobile components

\- This file MUST be composed with:

&nbsp; - agents/frontend.md

&nbsp; - agents/accessibility.md

&nbsp; - agents/tests.md

&nbsp; - agents/security.md

&nbsp; - agents/observability.md

&nbsp; - languages/javascript.md or languages/typescript.md

&nbsp; - languages/jest.md

&nbsp; - languages/detox.md when mobile E2E is required

&nbsp; - languages/cypress.md or languages/playwright.md when testing through supported webviews or hybrid layers



\## Structure

\- React Native projects SHOULD be organized by feature or domain.

\- Components SHOULD be colocated with their tests and related assets.

\- Shared UI primitives SHOULD live in a shared directory.

\- Screens MUST be separated from shared components.

\- Data access code SHOULD be centralized.

\- Platform-specific code MUST be isolated.



\## File Decomposition

\- Components:

&nbsp; - MUST encapsulate a single UI responsibility.

&nbsp; - MUST expose a minimal, typed API.

\- Hooks:

&nbsp; - MUST encapsulate reusable stateful logic.

&nbsp; - MUST avoid hidden side effects.

\- Navigation:

&nbsp; - MUST define routes and access control consistently.

\- Data layer:

&nbsp; - MUST centralize network calls and error handling.

\- Storage:

&nbsp; - MUST define safe, explicit persistence behavior.

\- Tests:

&nbsp; - Unit tests MUST validate component and hook behavior.

&nbsp; - E2E tests MUST validate critical mobile user flows.



\## Application Rules

\- Hooks rules:

&nbsp; - Hooks MUST be called unconditionally and at top level.

&nbsp; - Dependency arrays MUST be complete.

\- State rules:

&nbsp; - Avoid derived state.

&nbsp; - Avoid duplicating the source of truth.

\- Platform rules:

&nbsp; - Platform conditionals MUST be isolated and documented.

\- Performance rules:

&nbsp; - Memoization MUST be measurement-driven.

&nbsp; - Avoid unnecessary re-renders by stabilizing props and callbacks where needed.

\- Accessibility rules:

&nbsp; - All components MUST meet agents/accessibility.md requirements.

\- Security rules:

&nbsp; - Do not store secrets in the app bundle.

&nbsp; - Validate and encode user-generated content.

\- Testing rules:

&nbsp; - Use Jest for unit tests by default.

&nbsp; - Use Detox for mobile E2E by default when required.

&nbsp; - Flaky tests MUST be treated as defects.

\- Verification rules:

&nbsp; - Linting and type checking MUST run in CI.

&nbsp; - Unit tests MUST run on every change.

&nbsp; - E2E tests MUST run per release gates.

&nbsp; - Violations of these standards MUST be treated as defects.



