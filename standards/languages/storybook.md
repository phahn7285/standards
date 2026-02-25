=========================================================

languages/storybook.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# storybook Standards



\## Standards

\- Storybook MUST be used to document and validate UI components where selected.

\- Stories MUST represent real, supported component states.

\- Stories MUST be deterministic and reproducible.

\- Each component MUST have at least one canonical story.

\- Variants MUST be represented as separate stories or clearly defined controls.

\- Stories MUST avoid mock data that misrepresents real usage.

\- Props and inputs MUST be typed and validated.

\- Default args MUST reflect safe, typical usage.

\- Accessibility checks MUST be enabled where supported.

\- Visual regression testing MUST be integrated where feasible.

\- Stories MUST NOT include application-specific routing or global side effects.

\- Network calls MUST be mocked or isolated.

\- Story names MUST be stable and descriptive.

\- Story organization MUST reflect component hierarchy and domain.

\- Documentation panels MUST be kept accurate and minimal.

\- Storybook configuration MUST be version-controlled.

\- Storybook usage MUST align with agents/frontend.md and agents/accessibility.md.



\## Scope

In scope:

\- UI component documentation

\- Component state exploration

\- Visual regression testing inputs

\- Accessibility validation

\- Developer and designer collaboration artifacts



Out of scope:

\- End-to-end user flow validation

\- Application routing and state management

\- Backend service integration

\- Performance benchmarking beyond visual checks



Assumptions:

\- Components are reusable and isolated.

\- Storybook runs in development and CI environments.

\- Components support controlled inputs.



\## Responsibilities

\- Frontend engineers:

&nbsp; - Author and maintain accurate component stories

&nbsp; - Ensure stories reflect supported component behavior

&nbsp; - Keep stories deterministic and isolated



\- Reviewers:

&nbsp; - Validate story coverage and correctness

&nbsp; - Reject misleading or incomplete stories



\- QA engineers:

&nbsp; - Use stories for exploratory and visual validation

&nbsp; - Identify visual or interaction regressions



\- DevSecOps:

&nbsp; - Integrate Storybook build and tests into CI where applicable



\## Usage

\- Apply this file when:

&nbsp; - creating or modifying UI components

&nbsp; - documenting component libraries or design systems

\- This file MUST be composed with:

&nbsp; - agents/frontend.md

&nbsp; - agents/accessibility.md

&nbsp; - agents/tests.md

&nbsp; - languages/react.md or languages/reactnative.md when applicable

&nbsp; - languages/jest.md for component-level tests when applicable



\## Structure

\- Storybook projects SHOULD be organized by:

&nbsp; - component domain or feature

&nbsp; - shared UI primitives

\- Stories SHOULD be colocated with components where feasible.

\- Configuration SHOULD be centralized.



\## File Decomposition

\- Stories:

&nbsp; - MUST define component variants and states.

\- Args:

&nbsp; - MUST define configurable inputs.

\- Controls:

&nbsp; - MUST expose meaningful, safe props.

\- Decorators:

&nbsp; - MUST be minimal and avoid side effects.

\- Documentation:

&nbsp; - MUST describe component usage and constraints accurately.



\## Application Rules

\- Coverage rules:

&nbsp; - All reusable components MUST have stories.

\- Accuracy rules:

&nbsp; - Stories MUST reflect actual supported behavior.

\- Accessibility rules:

&nbsp; - Accessibility checks MUST be enabled and reviewed.

\- Isolation rules:

&nbsp; - Stories MUST not depend on application state.

\- Maintenance rules:

&nbsp; - Stories MUST be updated with component changes.

\- Verification rules:

&nbsp; - Storybook builds MUST succeed in CI where applicable.

&nbsp; - Visual regressions MUST be reviewed intentionally.

&nbsp; - Violations of these standards MUST be treated as defects.



