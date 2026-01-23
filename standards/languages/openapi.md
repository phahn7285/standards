=========================================================

languages/openapi.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# openapi Standards



\## Standards

\- OpenAPI MUST be the authoritative source of truth for HTTP APIs.

\- OpenAPI specifications MUST be version-controlled and treated as code.

\- Supported OpenAPI versions MUST be used explicitly.

\- API contracts MUST be defined before or alongside implementation.

\- Schemas MUST be explicit, strict, and reusable.

\- Request and response bodies MUST be fully specified.

\- All endpoints MUST define success and error responses.

\- HTTP methods MUST be used according to semantics.

\- Status codes MUST be explicit and consistent.

\- Nullable fields MUST be explicit.

\- Required fields MUST be clearly defined.

\- Default values MUST be defined intentionally.

\- Examples MUST be provided for complex schemas.

\- Pagination, filtering, and sorting MUST be explicitly defined when used.

\- Authentication and authorization MUST be specified.

\- Security schemes MUST be defined centrally and reused.

\- Backward compatibility MUST be preserved or versioned explicitly.

\- Breaking changes MUST require a version increment.

\- OpenAPI specifications MUST be validated automatically.

\- OpenAPI usage MUST align with agents/api-contracts.md and agents/security.md.



\## Scope

In scope:

\- REST and HTTP-based API contracts

\- Request and response schema definitions

\- Authentication and authorization definitions

\- Error modeling and status codes

\- Versioning and compatibility rules

\- Documentation generation inputs



Out of scope:

\- gRPC or non-HTTP APIs

\- Application business logic

\- Infrastructure routing and gateways beyond contract definition



Assumptions:

\- APIs are consumed by multiple clients.

\- Contract-first or contract-aligned development is required.

\- Tooling exists to validate and generate artifacts from OpenAPI.



\## Responsibilities

\- API designers:

&nbsp; - Define clear, complete, and stable contracts

&nbsp; - Ensure schema correctness and compatibility

&nbsp; - Define authentication and authorization requirements



\- Developers:

&nbsp; - Implement APIs to conform strictly to the specification

&nbsp; - Keep implementation and spec in sync



\- Reviewers:

&nbsp; - Validate correctness, completeness, and compatibility

&nbsp; - Reject ambiguous or under-specified contracts



\- DevSecOps:

&nbsp; - Enforce validation and publication of specifications

&nbsp; - Integrate spec checks into CI



\## Usage

\- Apply this file when:

&nbsp; - defining or modifying HTTP APIs

&nbsp; - exposing services for internal or external consumption

\- This file MUST be composed with:

&nbsp; - agents/api-contracts.md

&nbsp; - agents/security.md

&nbsp; - agents/tests.md

\- Language-specific bindings MUST compose with corresponding language standards.



\## Structure

\- OpenAPI files SHOULD be organized by service or domain.

\- Large specifications SHOULD be split using references.

\- Components MUST be reused and centralized.



\## File Decomposition

\- Paths:

&nbsp; - MUST define operations, parameters, and responses.

\- Components:

&nbsp; - MUST define reusable schemas, parameters, and responses.

\- Schemas:

&nbsp; - MUST define types, constraints, and validation rules.

\- Security schemes:

&nbsp; - MUST define authentication mechanisms.

\- Examples:

&nbsp; - MUST illustrate valid request and response payloads.



\## Application Rules

\- Compatibility rules:

&nbsp; - Additive changes are preferred.

&nbsp; - Breaking changes REQUIRE versioning.

\- Schema rules:

&nbsp; - Avoid overly permissive schemas.

&nbsp; - Define constraints explicitly.

\- Error modeling rules:

&nbsp; - Errors MUST be standardized and documented.

\- Validation rules:

&nbsp; - Specifications MUST pass OpenAPI validation.

\- Verification rules:

&nbsp; - Contract tests MUST validate implementation conformance.

&nbsp; - Violations of these standards MUST be treated as defects.



