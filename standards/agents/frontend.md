=========================================================

agents/frontend.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# frontend Standards



\## Standards

\- Front-end applications MUST present a deterministic and accessible user experience.

\- Front-end code MUST separate presentation, state management, and business logic.

\- Front-end applications MUST treat all external data as untrusted.

\- Front-end applications MUST validate and sanitize user input before use.

\- Front-end applications MUST enforce authentication and authorization per agents/security.md.

\- Front-end applications MUST NOT embed secrets or sensitive configuration in client-side code.

\- Front-end applications MUST handle error states and edge cases explicitly.

\- Front-end applications MUST implement graceful degradation for partial failures.

\- Front-end applications MUST be performant and responsive under expected load.

\- Front-end applications MUST be observable with client-side logging and telemetry where applicable.

\- Front-end applications MUST be testable and MUST include automated tests per agents/tests.md.

\- Front-end applications MUST support internationalization and accessibility where required.

\- Front-end applications MUST avoid tight coupling to backend implementation details.

\- Front-end applications MUST follow agents/api-contracts.md when consuming APIs.

\- Front-end applications MUST follow agents/reliability.md for failure handling and resilience.



\## Scope

In scope:

\- Web user interfaces

\- Client-side application logic

\- State management and routing

\- Integration with backend APIs

\- Client-side validation and error handling

\- Performance and accessibility considerations



Out of scope:

\- Backend service logic (agents/backend.md)

\- Mobile-native applications (languages/reactnative.md)

\- Infrastructure provisioning (agents/devsecops.md, platforms/\*)

\- Server-side rendering infrastructure specifics

\- Language-specific syntax and tooling (languages/\*)



Assumptions:

\- Front-end applications run in user-controlled environments.

\- Front-end applications may be single-page or multi-page.

\- Front-end applications may integrate with multiple backend services.



\## Responsibilities

\- Front-end engineers:

&nbsp; - Implement UI behavior and client-side logic

&nbsp; - Enforce validation, error handling, and accessibility

&nbsp; - Write and maintain automated tests

&nbsp; - Ensure performance and usability requirements are met



\- Reviewers:

&nbsp; - Verify standards compliance and architectural boundaries

&nbsp; - Reject changes that introduce unsafe patterns or poor UX



\- DevSecOps:

&nbsp; - Ensure build, test, and deployment pipelines support front-end requirements

&nbsp; - Ensure environment configuration and secrets handling are correct



\## Usage

\- Apply this file when:

&nbsp; - building or modifying web user interfaces

&nbsp; - changing client-side application logic

&nbsp; - integrating new backend APIs into the UI

\- This file MUST be composed with:

&nbsp; - agents/security.md

&nbsp; - agents/tests.md

&nbsp; - agents/observability.md

&nbsp; - agents/reliability.md

&nbsp; - agents/api-contracts.md when consuming APIs

&nbsp; - relevant languages/\* standards files (for example: react.md, typescript.md)

\- E2E testing standards MUST be composed from languages/playwright.md or languages/cypress.md when applicable.



\## Structure

\- Front-end repositories SHOULD enforce clear separation of concerns, for example:

&nbsp; - components/ for reusable UI components

&nbsp; - pages/ or routes/ for route-level views

&nbsp; - state/ or store/ for application state management

&nbsp; - services/ or api/ for API clients

&nbsp; - styles/ for styling assets

\- Configuration MUST be externalized and environment-specific.

\- Build artifacts MUST be generated reproducibly.



\## File Decomposition

\- components/:

&nbsp; - MUST contain presentational and container components.

&nbsp; - MUST avoid embedding business logic directly.

\- pages/ or routes/:

&nbsp; - MUST define routing and layout composition.

&nbsp; - MUST handle loading and error states.

\- state/ or store/:

&nbsp; - MUST centralize shared application state.

&nbsp; - MUST enforce predictable state transitions.

\- services/ or api/:

&nbsp; - MUST encapsulate API interaction logic.

&nbsp; - MUST handle retries, timeouts, and error mapping.

\- styles/:

&nbsp; - MUST define consistent styling and theming rules.



\## Application Rules

\- Validation rules:

&nbsp; - User input MUST be validated and sanitized.

&nbsp; - Client-side validation MUST complement, not replace, server-side validation.

\- Error handling rules:

&nbsp; - Errors MUST be communicated clearly to users.

&nbsp; - Sensitive details MUST NOT be exposed in UI messages.

\- Performance rules:

&nbsp; - Expensive operations MUST be deferred or optimized.

&nbsp; - Asset loading MUST be optimized and monitored.

\- Security rules:

&nbsp; - Client-side code MUST NOT expose secrets.

&nbsp; - Authorization decisions MUST NOT rely solely on client logic.

\- Testing rules:

&nbsp; - Unit tests MUST cover components and state logic.

&nbsp; - Integration tests MUST cover API interactions.

&nbsp; - E2E tests MUST cover critical user flows.

\- Verification rules:

&nbsp; - Front-end changes MUST pass all automated checks before merge.

&nbsp; - Violations of these standards MUST be treated as defects.



