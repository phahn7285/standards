=========================================================

languages/protobuf.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# protobuf Standards



\## Standards

\- Protocol Buffers MUST be used for strongly-typed message schemas where selected.

\- Schemas MUST be versioned and backward-compatible.

\- Field numbers MUST NEVER be reused.

\- Required fields MUST be avoided.

\- Default values MUST be understood and documented.

\- Enums MUST include explicit unknown values.

\- Schema evolution MUST preserve compatibility.

\- Protobuf usage MUST align with agents/api-contracts.md.



\## Scope

In scope:

\- Protobuf schema definition

\- Schema versioning and evolution

\- Cross-service communication contracts



Out of scope:

\- Transport protocols

\- Business logic implementation



Assumptions:

\- Schemas are shared across services.

\- Compatibility is critical.



\## Responsibilities

\- Schema authors:

&nbsp; - Define stable contracts



\- Reviewers:

&nbsp; - Validate compatibility



\## Usage

\- Apply this file when:

&nbsp; - using protobuf for APIs or messaging

\- This file MUST be composed with:

&nbsp; - agents/api-contracts.md

&nbsp; - agents/tests.md

&nbsp; - messaging/\* when applicable



\## Structure

\- Schemas MUST be organized by domain.

\- Packages MUST be explicit.



\## File Decomposition

\- Messages:

&nbsp; - MUST define stable fields.

\- Enums:

&nbsp; - MUST define unknown defaults.



\## Application Rules

\- Breaking schema changes MUST NOT occur.

\- Compatibility MUST be tested.

\- Violations MUST be treated as defects.



