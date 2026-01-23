=========================================================

languages/json.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# json Standards



\## Standards

\- JSON MUST be used strictly as a data interchange and configuration format.

\- JSON documents MUST be valid and well-formed.

\- Character encoding MUST be UTF-8.

\- Property names MUST be consistent, descriptive, and stable.

\- Naming conventions MUST be consistent within a document and across related documents.

\- Numeric values MUST use appropriate types and ranges.

\- Boolean values MUST be explicit.

\- Null values MUST be used intentionally and sparingly.

\- Arrays MUST be ordered only when order is semantically meaningful.

\- Objects MUST NOT rely on implicit ordering.

\- Comments MUST NOT be included.

\- Trailing commas MUST NOT be used.

\- Large or complex JSON documents SHOULD be schema-validated.

\- Sensitive data MUST NOT be embedded in JSON files unless explicitly encrypted.

\- JSON usage MUST align with agents/coding-standards.md and agents/security.md.



\## Scope

In scope:

\- Configuration files expressed in JSON

\- Data interchange payloads

\- API request and response bodies

\- Schema-defined JSON documents



Out of scope:

\- Binary data encoding

\- Application logic

\- Presentation formatting



Assumptions:

\- JSON is consumed by machines, not humans.

\- JSON may be produced or consumed across system boundaries.

\- Schema validation improves reliability.



\## Responsibilities

\- Developers:

&nbsp; - Produce valid, consistent JSON

&nbsp; - Maintain schema alignment

&nbsp; - Avoid embedding secrets



\- Reviewers:

&nbsp; - Validate structure, naming, and correctness

&nbsp; - Reject malformed or inconsistent documents



\- DevSecOps:

&nbsp; - Enforce validation and schema checks in CI



\## Usage

\- Apply this file when:

&nbsp; - creating or modifying JSON configuration or payloads

&nbsp; - defining data exchange formats

\- This file MUST be composed with:

&nbsp; - agents/coding-standards.md

&nbsp; - agents/security.md

&nbsp; - agents/tests.md when validation is automated

\- API-related JSON MUST also compose with:

&nbsp; - agents/api-contracts.md



\## Structure

\- JSON files SHOULD be formatted consistently.

\- Indentation MUST be consistent across repositories.

\- Key ordering SHOULD be logical and grouped by purpose.



\## File Decomposition

\- Configuration JSON:

&nbsp; - MUST define explicit keys and values.

\- Payload JSON:

&nbsp; - MUST conform to defined schemas.

\- Schema files:

&nbsp; - MUST define required and optional fields explicitly.

\- Test fixtures:

&nbsp; - MUST use minimal, representative data.



\## Application Rules

\- Validation rules:

&nbsp; - JSON MUST be validated before use.

&nbsp; - Schema validation SHOULD be enforced where applicable.

\- Compatibility rules:

&nbsp; - Changes to shared JSON structures MUST be backward compatible or versioned.

\- Security rules:

&nbsp; - Secrets MUST be referenced, not embedded.

\- Size rules:

&nbsp; - Avoid excessively large JSON documents.

\- Verification rules:

&nbsp; - Automated validation MUST run in CI when applicable.

&nbsp; - Violations of these standards MUST be treated as defects.



