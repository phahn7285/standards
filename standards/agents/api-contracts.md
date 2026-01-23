=========================================================

agents/api-contracts.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# api-contracts Standards



\## Standards

\- Every externally reachable API MUST have an explicit, version-controlled contract.

\- API contracts MUST be treated as source-of-truth artifacts and MUST be review-gated.

\- API contracts MUST be backward compatible within a published major version unless explicitly declared otherwise.

\- API compatibility MUST be validated automatically in CI for every contract change.

\- Breaking changes MUST require a major version increment and MUST be communicated in release notes.

\- API design MUST be consistent across services in naming, pagination, errors, authentication, and idempotency.

\- API requests MUST be validated at the boundary; invalid input MUST be rejected deterministically.

\- APIs MUST return stable, documented error shapes; errors MUST NOT leak secrets or internal implementation details.

\- APIs MUST use explicit timeouts, retries, and backpressure controls for downstream dependencies.

\- APIs MUST define and enforce rate limiting at appropriate boundaries.

\- API contracts MUST include security requirements: authentication, authorization, and scopes/permissions.

\- API contracts MUST define data classification expectations for fields containing sensitive data.

\- APIs MUST support observability: request IDs, trace propagation, and consistent logging fields.

\- API contracts MUST define idempotency requirements for unsafe operations.

\- API contracts MUST define pagination requirements for list endpoints.

\- API contracts MUST define ordering guarantees for list endpoints when ordering is supported.

\- API contracts MUST define concurrency expectations for resource updates.

\- API contracts MUST define deprecation policy and timelines for removal.

\- API contracts MUST be language-agnostic and MUST NOT embed client-specific behavior as contract truth.

\- API contracts MUST define stable semantics for null, missing, and empty values.

\- API contracts MUST define acceptable time formats and time zone handling.

\- API contracts MUST define validation constraints: bounds, patterns, allowed enums, and required fields.

\- API contracts MUST define content types and encoding rules for requests and responses.

\- Event contracts and async APIs MUST follow the same rules as synchronous APIs.



\## Scope

In scope:

\- REST and HTTP APIs

\- GraphQL APIs

\- gRPC APIs

\- Webhooks

\- Event-driven contracts (AsyncAPI and message schemas)

\- API versioning, compatibility, and deprecation

\- Error models, pagination, idempotency, and rate limiting

\- Schema evolution rules and contract testing requirements



Out of scope:

\- Implementation details in a specific language (languages/\*)

\- Infrastructure routing, gateways, and network policy (platforms/\* and agents/platform.md)

\- Database schema design (databases/\*)

\- Message broker operational details (messaging/\*)

\- General security baselines (agents/security.md)

\- General test strategy (agents/tests.md)



Assumptions:

\- Contracts are authored in an appropriate specification format when available.

\- Contract artifacts are stored in the repository and reviewed like code.

\- CI can execute validation and compatibility checks.



\## Responsibilities

\- API owner responsibilities:

&nbsp; - Define and maintain the contract as the source of truth

&nbsp; - Ensure backward compatibility and versioning correctness

&nbsp; - Ensure contract changes include required tests and documentation



\- Implementer responsibilities:

&nbsp; - Enforce request validation at the boundary

&nbsp; - Implement responses that match the contract exactly

&nbsp; - Implement stable error handling per contract rules

&nbsp; - Implement idempotency, pagination, and rate limiting per contract rules



\- Reviewer responsibilities:

&nbsp; - Reject contract changes that introduce breaking changes without version increment

&nbsp; - Verify security requirements are explicit in the contract

&nbsp; - Verify compatibility checks exist and pass



\- DevSecOps responsibilities:

&nbsp; - Ensure CI enforces contract validation and compatibility checks

&nbsp; - Ensure gateway or edge controls align with contract requirements where applicable



\## Usage

\- Apply this file when:

&nbsp; - creating or modifying any API, webhook, or message/event schema

&nbsp; - publishing an API to any consumer (internal or external)

&nbsp; - generating clients or servers from schemas

\- This file MUST be composed with:

&nbsp; - agents/security.md

&nbsp; - agents/tests.md

&nbsp; - agents/observability.md

&nbsp; - relevant specification files in languages/\* when used:

&nbsp;   - languages/openapi.md for OpenAPI contracts

&nbsp;   - languages/asyncapi.md for AsyncAPI contracts

\- If messaging is used, this file SHOULD be composed with:

&nbsp; - messaging/kafka.md or messaging/rabbitmq.md



\## Structure

\- Repositories exposing APIs MUST store contract artifacts in version control.

\- Contract artifacts MUST have a stable location and MUST be discoverable by tooling.

\- Contract artifacts SHOULD follow one of these patterns:

&nbsp; - api/contract/ for API and schema artifacts

&nbsp; - contracts/ for shared contracts across services

&nbsp; - openapi/ or asyncapi/ for spec-specific repositories

\- API implementations MUST include a single authoritative entrypoint for validation middleware.

\- If multiple API versions are supported, each version MUST have its own contract artifact.



\## File Decomposition

\- Contract artifacts:

&nbsp; - MUST define request and response schemas for all operations.

&nbsp; - MUST define authentication requirements for all operations.

&nbsp; - MUST define authorization scopes or permissions for all operations when applicable.

&nbsp; - MUST define validation constraints for all fields and parameters.

&nbsp; - MUST define error responses and error shape for all operations.

&nbsp; - MUST define pagination semantics for list operations.

&nbsp; - MUST define idempotency semantics for unsafe operations.

&nbsp; - MUST define rate limit expectations when applicable.

&nbsp; - MUST define deprecation and sunset metadata for deprecated operations.



\- Contract validation tooling:

&nbsp; - MUST lint and validate specifications.

&nbsp; - MUST check backward compatibility against the prior published contract.

&nbsp; - MUST run in CI on every change that touches contract artifacts.



\- Contract tests:

&nbsp; - MUST verify server responses conform to the contract.

&nbsp; - MUST verify request validation rejects invalid inputs deterministically.

&nbsp; - MUST verify error responses match documented shapes.

&nbsp; - MUST verify idempotency behavior where required.

&nbsp; - MUST verify pagination behavior where required.



\## Application Rules

Versioning:

\- Public contracts MUST use semantic versioning at the contract boundary.

\- Breaking changes MUST increment major version.

\- Additive changes that are backward compatible SHOULD increment minor version.

\- Patch changes SHOULD be limited to clarifications or fixes that do not change behavior.



Compatibility:

\- Removing fields or endpoints is breaking.

\- Renaming fields is breaking.

\- Changing field types is breaking.

\- Tightening validation constraints is breaking unless explicitly versioned.

\- Changing default behavior is breaking unless explicitly versioned.

\- Adding optional fields is non-breaking.

\- Adding required fields is breaking.



Request validation:

\- Servers MUST validate:

&nbsp; - path params

&nbsp; - query params

&nbsp; - headers (required headers)

&nbsp; - request bodies

\- Validation failures MUST return a consistent error shape and status code per API style.



Error model:

\- Error responses MUST use a consistent, documented schema across APIs.

\- Errors MUST include a stable machine-readable code.

\- Errors MUST include a human-readable message suitable for logs.

\- Errors MUST NOT include stack traces, secrets, internal URLs, or identifiers not intended for clients.



Pagination:

\- List endpoints MUST be paginated when result sets can exceed a small bounded size.

\- Pagination strategy MUST be documented and consistent within a service.

\- Cursor-based pagination SHOULD be preferred for large or frequently changing datasets.

\- Ordering guarantees MUST be documented when sorting is supported.



Idempotency:

\- Unsafe operations (create, update, delete, side-effect actions) MUST define idempotency behavior.

\- If idempotency keys are used, the contract MUST define:

&nbsp; - header name

&nbsp; - key format

&nbsp; - retention window

&nbsp; - replay semantics

\- Idempotency MUST be enforced server-side; clients MUST NOT be responsible for correctness.



Rate limiting:

\- APIs SHOULD apply rate limits at the edge or service boundary.

\- Rate limit errors MUST use a stable error code and include retry guidance when applicable.



Security:

\- Contracts MUST define authentication mechanism(s).

\- Contracts MUST define authorization scopes or roles when applicable.

\- Sensitive fields MUST be labeled or documented as sensitive and handled per agents/privacy.md.

\- Contracts MUST NOT require clients to send secrets in URLs or query strings.



Deprecation:

\- Deprecated endpoints and fields MUST be marked in the contract.

\- Deprecation MUST include a sunset timeline and migration guidance location.

\- Removal MUST occur only in a new major version unless explicitly exempted by orchestration override rules.



Observability:

\- APIs MUST propagate request IDs and trace context.

\- Contracts SHOULD document required correlation headers when applicable.



