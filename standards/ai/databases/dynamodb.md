=========================================================

databases/dynamodb.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# dynamodb Standards



\## Standards

\- DynamoDB MUST be used for high-scale, low-latency key-value and document access patterns.

\- Table design MUST be driven by access patterns, not normalization.

\- Primary keys MUST be explicitly designed and documented.

\- Single-table design SHOULD be preferred when it reduces cross-table queries.

\- Partition keys MUST evenly distribute traffic to avoid hot partitions.

\- Sort keys MUST be used to support range queries and access pattern expansion.

\- Secondary indexes MUST be explicitly justified and minimized.

\- Read and write capacity MUST be explicitly configured or auto-scaled with safeguards.

\- Strongly consistent reads MUST be used only when required.

\- Items MUST be kept small to reduce cost and latency.

\- Transactions MUST be used sparingly and only when required.

\- Conditional writes MUST be used to enforce concurrency and invariants.

\- Time-to-live MUST be used for ephemeral data where applicable.

\- Data access MUST follow least privilege.

\- Sensitive data MUST be encrypted and governed.

\- DynamoDB usage MUST align with agents/performance.md, agents/reliability.md, and agents/security.md.



\## Scope

In scope:

\- Table and index design

\- Key schema and access pattern modeling

\- Capacity planning and scaling

\- Query and scan usage

\- Transactions and conditional operations

\- TTL and data lifecycle management

\- Access control and encryption



Out of scope:

\- Application business logic (agents/backend.md)

\- API contract definition (agents/api-contracts.md)

\- Infrastructure provisioning specifics (platforms/\*)

\- Cross-database joins or analytics workloads



Assumptions:

\- Workloads require predictable low latency.

\- Access patterns are known or can be enumerated.

\- Cost scales with throughput and storage.



\## Responsibilities

\- Application engineers:

&nbsp; - Design access patterns and key schemas

&nbsp; - Use queries over scans

&nbsp; - Enforce conditional writes and idempotency



\- Data engineers:

&nbsp; - Validate schema and access pattern evolution

&nbsp; - Optimize capacity and index usage



\- Reviewers:

&nbsp; - Validate table and index design

&nbsp; - Reject designs that rely on scans or hot partitions



\- DevSecOps:

&nbsp; - Configure capacity, auto-scaling, and alarms

&nbsp; - Enforce encryption and access controls



\## Usage

\- Apply this file when:

&nbsp; - designing or modifying DynamoDB tables

&nbsp; - introducing new access patterns

&nbsp; - tuning performance or cost

\- This file MUST be composed with:

&nbsp; - agents/security.md

&nbsp; - agents/privacy.md

&nbsp; - agents/performance.md

&nbsp; - agents/reliability.md

&nbsp; - agents/tests.md



\## Structure

\- DynamoDB resources SHOULD be organized by domain.

\- Table names MUST reflect purpose and environment.

\- Indexes MUST be documented alongside tables.



\## File Decomposition

\- Tables:

&nbsp; - MUST define partition and sort keys.

&nbsp; - MUST document supported access patterns.

\- Secondary indexes:

&nbsp; - MUST document projected attributes and cost impact.

\- Items:

&nbsp; - MUST use consistent attribute naming.

\- TTL configuration:

&nbsp; - MUST define expiration behavior.



\## Application Rules

\- Access pattern rules:

&nbsp; - All access patterns MUST be defined before table creation.

&nbsp; - Scans MUST NOT be used in production paths.

\- Capacity rules:

&nbsp; - Capacity MUST be monitored and tuned.

\- Concurrency rules:

&nbsp; - Conditional writes MUST protect shared state.

\- Cost rules:

&nbsp; - Unused indexes MUST be removed.

\- Security rules:

&nbsp; - Encryption at rest MUST be enabled.

\- Evolution rules:

&nbsp; - Schema changes MUST preserve existing access patterns.

\- Verification rules:

&nbsp; - Access patterns MUST be tested.

&nbsp; - Violations of these standards MUST be treated as defects.



