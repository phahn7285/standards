=========================================================

databases/mongodb.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# mongodb Standards



\## Standards

\- MongoDB MUST be used for document-oriented workloads with flexible schemas.

\- Schema design MUST be intentional and documented despite schema flexibility.

\- Collections MUST be designed around access patterns, not normalization alone.

\- Embedded documents SHOULD be preferred over references when data is accessed together.

\- References MUST be used when document growth or access patterns require separation.

\- Indexes MUST be explicitly defined and minimized.

\- Queries MUST be supported by appropriate indexes.

\- Unbounded collection scans MUST NOT be used in production paths.

\- Document size MUST be controlled and monitored.

\- Write operations MUST enforce validation and invariants.

\- Transactions MUST be used only when required and scoped narrowly.

\- Read and write concerns MUST be explicitly configured.

\- Data consistency requirements MUST be documented.

\- Sensitive data MUST be encrypted and governed.

\- Access control MUST follow least privilege.

\- MongoDB usage MUST align with agents/performance.md, agents/reliability.md, and agents/security.md.



\## Scope

In scope:

\- Database and collection design

\- Document schema and validation

\- Index design and query optimization

\- Transactions and consistency configuration

\- Replication and durability settings

\- Data lifecycle and retention

\- Access control and encryption



Out of scope:

\- Application business logic (agents/backend.md)

\- API contract definition (agents/api-contracts.md)

\- Infrastructure provisioning specifics (platforms/\*)

\- Analytics workloads better suited for data warehouses



Assumptions:

\- Workloads may evolve over time.

\- Read and write patterns are known or can be enumerated.

\- Data volume and document size may grow.



\## Responsibilities

\- Application engineers:

&nbsp; - Design document schemas and access patterns

&nbsp; - Ensure queries are index-backed

&nbsp; - Enforce validation and invariants



\- Data engineers:

&nbsp; - Review schema evolution and indexing strategy

&nbsp; - Monitor performance and storage growth



\- Reviewers:

&nbsp; - Validate schema and index changes

&nbsp; - Reject designs that rely on collection scans or unbounded documents



\- DevSecOps:

&nbsp; - Configure replication, backups, and access controls

&nbsp; - Monitor cluster health and performance



\## Usage

\- Apply this file when:

&nbsp; - designing or modifying MongoDB collections

&nbsp; - adding or changing indexes

&nbsp; - tuning performance or consistency

\- This file MUST be composed with:

&nbsp; - agents/security.md

&nbsp; - agents/privacy.md

&nbsp; - agents/performance.md

&nbsp; - agents/reliability.md

&nbsp; - agents/tests.md



\## Structure

\- Databases SHOULD be organized by domain.

\- Collection names MUST be descriptive and stable.

\- Validation rules SHOULD be defined at the collection level.



\## File Decomposition

\- Collections:

&nbsp; - MUST define document structure and validation rules.

\- Indexes:

&nbsp; - MUST document purpose and query usage.

\- Validation:

&nbsp; - MUST enforce required fields and types.

\- Transactions:

&nbsp; - MUST define scope and usage constraints.



\## Application Rules

\- Schema rules:

&nbsp; - Schemas MUST evolve in backward-compatible ways.

&nbsp; - Required field changes MUST be versioned.

\- Index rules:

&nbsp; - Every production query MUST be supported by an index.

\- Query rules:

&nbsp; - Queries MUST include selective filters.

\- Document size rules:

&nbsp; - Documents MUST remain within size limits.

\- Consistency rules:

&nbsp; - Read and write concerns MUST match consistency requirements.

\- Security rules:

&nbsp; - Encryption at rest MUST be enabled.

\- Verification rules:

&nbsp; - Queries and schema changes MUST be tested.

&nbsp; - Violations of these standards MUST be treated as defects.



