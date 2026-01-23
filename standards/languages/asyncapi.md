=========================================================

languages/asyncapi.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# asyncapi Standards



\## Standards

\- AsyncAPI MUST be the authoritative contract for asynchronous messaging interfaces.

\- AsyncAPI specifications MUST be versioned and treated as code.

\- AsyncAPI documents MUST fully describe channels, messages, schemas, and bindings.

\- Message payload schemas MUST be explicit and reusable.

\- Message schemas MUST be backward compatible or versioned.

\- Channels MUST clearly define publish and subscribe responsibilities.

\- AsyncAPI MUST define message headers, metadata, and correlation identifiers.

\- Security schemes MUST be explicitly defined.

\- AsyncAPI MUST document error, retry, and dead-letter behavior.

\- AsyncAPI MUST align with agents/api-contracts.md.

\- AsyncAPI artifacts MUST be validated automatically.

\- AsyncAPI MUST be used to generate documentation and tooling where applicable.

\- AsyncAPI MUST align with messaging platform standards.



\## Scope

In scope:

\- Event-driven and message-based APIs

\- Publish and subscribe contracts

\- Message schemas and metadata

\- Channel definitions

\- Security and authentication definitions

\- Versioning and compatibility management



Out of scope:

\- Message broker configuration (messaging/\*)

\- Application business logic (agents/backend.md)

\- Infrastructure provisioning specifics (platforms/\*)



Assumptions:

\- Systems communicate asynchronously via messaging platforms.

\- Producers and consumers may evolve independently.

\- Message compatibility is critical to system stability.



\## Responsibilities

\- Application engineers:

&nbsp; - Define and maintain AsyncAPI contracts

&nbsp; - Ensure producers and consumers conform to contracts



\- Reviewers:

&nbsp; - Validate schema completeness and compatibility

&nbsp; - Reject breaking changes without versioning



\- QA engineers:

&nbsp; - Validate message conformance and compatibility

&nbsp; - Test publish and subscribe workflows



\- DevSecOps:

&nbsp; - Integrate AsyncAPI validation into pipelines

&nbsp; - Support contract-based tooling



\## Usage

\- Apply this file when:

&nbsp; - defining or modifying asynchronous interfaces

&nbsp; - introducing new events or message channels

\- This file MUST be composed with:

&nbsp; - agents/api-contracts.md

&nbsp; - agents/tests.md

&nbsp; - agents/security.md

&nbsp; - agents/privacy.md when sensitive data is present

\- Messaging platform specifics MUST be composed from messaging/\* files.



\## Structure

\- AsyncAPI documents SHOULD be organized by domain or service.

\- Message schemas SHOULD be defined once and reused.

\- Versioning MUST be explicit.



\## File Decomposition

\- Info:

&nbsp; - MUST define service name, version, and description.

\- Channels:

&nbsp; - MUST define topic names and operations.

\- Messages:

&nbsp; - MUST define payload schemas and headers.

\- Components:

&nbsp; - MUST define reusable schemas and security schemes.

\- Bindings:

&nbsp; - MUST define protocol-specific details.



\## Application Rules

\- Versioning rules:

&nbsp; - Breaking changes MUST increment major version.

\- Compatibility rules:

&nbsp; - Consumers MUST tolerate additive changes.

\- Schema rules:

&nbsp; - Schemas MUST be explicit and validated.

\- Security rules:

&nbsp; - Authentication and authorization MUST be defined.

\- Validation rules:

&nbsp; - AsyncAPI documents MUST pass validation.

\- Verification rules:

&nbsp; - Producers and consumers MUST be tested against contracts.

&nbsp; - Violations of these standards MUST be treated as defects.



