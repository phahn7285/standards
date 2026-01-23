=========================================================

agents/backend.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# backend Standards



\## Standards

\- Backend services MUST expose well-defined interfaces and MUST hide internal implementation details.

\- Backend services MUST validate all inputs at the boundary and MUST reject invalid input deterministically.

\- Backend services MUST implement authentication and authorization per agents/security.md.

\- Backend services MUST treat all external inputs as untrusted.

\- Backend services MUST be stateless by default; state MUST be externalized to approved stores.

\- Backend services MUST implement idempotency for unsafe operations.

\- Backend services MUST implement explicit timeouts, retries, and backoff for all external calls.

\- Backend services MUST implement circuit breaking or isolation for unreliable dependencies.

\- Backend services MUST return stable, documented error shapes and MUST NOT leak internal details.

\- Backend services MUST implement pagination for unbounded list responses.

\- Backend services MUST implement concurrency control for writes to shared resources.

\- Backend services MUST enforce resource limits to prevent abuse and denial of service.

\- Backend services MUST be observable with structured logs, metrics, and traces.

\- Backend services MUST be testable and MUST include automated tests per agents/tests.md.

\- Backend services MUST support graceful startup and shutdown.

\- Backend services MUST support configuration via environment or configuration files, not hard-coded values.

\- Backend services MUST pin dependency versions and follow agents/dependencies.md.

\- Backend services MUST follow agents/api-contracts.md when exposing APIs.

\- Backend services MUST follow agents/reliability.md for availability and failure handling.



\## Scope

In scope:

\- API services and microservices

\- Backend-for-frontend services

\- Background workers and job processors

\- Server-side business logic

\- Integration with databases, messaging, and external APIs

\- Request handling, validation, and orchestration



Out of scope:

\- Front-end UI concerns (agents/frontend.md)

\- Mobile client concerns (agents/frontend.md and languages/reactnative.md)

\- Infrastructure provisioning (agents/devsecops.md, platforms/\*)

\- Database engine internals (databases/\*)

\- Messaging broker internals (messaging/\*)

\- Language-specific syntax and tooling (languages/\*)



Assumptions:

\- Backend services may run in containerized or managed runtimes.

\- Backend services may be synchronous, asynchronous, or event-driven.

\- Backend services may operate in regulated environments.



\## Responsibilities

\- Backend engineers:

&nbsp; - Implement business logic and orchestration correctly

&nbsp; - Enforce validation, authorization, and error handling

&nbsp; - Write and maintain automated tests

&nbsp; - Ensure observability and reliability requirements are met



\- Reviewers:

&nbsp; - Verify adherence to contracts, boundaries, and standards

&nbsp; - Reject changes that introduce coupling, leakage, or unsafe behavior



\- DevSecOps:

&nbsp; - Ensure runtime configuration, secrets, and scaling align with standards

&nbsp; - Ensure deployment and rollback mechanisms support backend requirements



\## Usage

\- Apply this file when:

&nbsp; - building or modifying server-side services

&nbsp; - adding or changing backend business logic

&nbsp; - integrating with external systems

\- This file MUST be composed with:

&nbsp; - agents/security.md

&nbsp; - agents/tests.md

&nbsp; - agents/observability.md

&nbsp; - agents/reliability.md

&nbsp; - agents/api-contracts.md when APIs are exposed

&nbsp; - relevant languages/\* standards files

&nbsp; - databases/\* and messaging/\* standards when used



\## Structure

\- Backend repositories SHOULD enforce clear separation of concerns, for example:

&nbsp; - api/ or transport/ for request handling

&nbsp; - application/ or service/ for orchestration and use cases

&nbsp; - domain/ for business logic

&nbsp; - infrastructure/ for integrations and adapters

\- Background jobs and workers MUST be isolated from request handlers.

\- Configuration MUST be externalized and environment-specific.

\- Secrets MUST NOT be stored in code or configuration files.



\## File Decomposition

\- api/ or transport/:

&nbsp; - MUST contain request routing, validation, and authentication hooks.

&nbsp; - MUST NOT contain business logic.

\- application/ or service/:

&nbsp; - MUST contain orchestration and use case logic.

&nbsp; - MUST coordinate domain logic and infrastructure adapters.

\- domain/:

&nbsp; - MUST contain core business rules and invariants.

&nbsp; - MUST be independent of transport, persistence, and frameworks.

\- infrastructure/:

&nbsp; - MUST contain database, messaging, and external API adapters.

&nbsp; - MUST NOT leak infrastructure concerns into domain logic.

\- workers/ or jobs/:

&nbsp; - MUST contain background processing logic.

&nbsp; - MUST enforce idempotency and retry safety.



\## Application Rules

\- Validation rules:

&nbsp; - All inputs MUST be validated at the boundary.

&nbsp; - Validation failures MUST be handled consistently.

\- Error handling rules:

&nbsp; - Errors MUST be categorized as client, server, or dependency errors.

&nbsp; - Retryable and non-retryable errors MUST be distinguished.

\- Concurrency rules:

&nbsp; - Shared resources MUST be protected against race conditions.

&nbsp; - Optimistic or pessimistic locking MUST be used where appropriate.

\- Performance rules:

&nbsp; - Blocking operations MUST NOT run on request threads when avoidable.

&nbsp; - Resource-intensive tasks MUST be offloaded to background processing.

\- Security rules:

&nbsp; - Authorization MUST be enforced on every protected operation.

&nbsp; - Sensitive data MUST NOT be logged or returned to clients.

\- Verification rules:

&nbsp; - Unit tests MUST cover business logic and edge cases.

&nbsp; - Integration tests MUST cover external interactions.

&nbsp; - Contract tests MUST validate API behavior where applicable.



