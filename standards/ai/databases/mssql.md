=========================================================

databases/mssql.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# mssql Standards



\## Standards

\- Microsoft SQL Server MUST be used for relational, transactional, and mixed workloads requiring strong consistency.

\- Database schemas MUST be explicitly defined, versioned, and documented.

\- Tables MUST be normalized unless denormalization is explicitly justified.

\- Primary keys MUST be defined for all tables.

\- Foreign keys MUST be enforced to maintain referential integrity unless explicitly justified.

\- Indexes MUST be explicitly designed and reviewed.

\- Queries MUST be written to use indexes efficiently.

\- Stored procedures and functions MUST be deterministic and documented.

\- Ad-hoc dynamic SQL MUST be avoided or safely parameterized.

\- Transactions MUST be scoped narrowly and completed promptly.

\- Locking and isolation levels MUST be explicitly configured where defaults are insufficient.

\- Sensitive data MUST be encrypted and governed.

\- Access control MUST follow least privilege.

\- Backup and recovery strategies MUST be defined and tested.

\- Schema changes MUST be backward compatible or explicitly versioned.

\- MSSQL usage MUST align with agents/performance.md, agents/reliability.md, and agents/security.md.



\## Scope

In scope:

\- Database schema and table design

\- Indexing and query optimization

\- Stored procedures, functions, and views

\- Transaction management and isolation

\- Security, access control, and encryption

\- Backup, restore, and recovery

\- Schema migration strategies



Out of scope:

\- Application business logic (agents/backend.md)

\- API contract definition (agents/api-contracts.md)

\- Infrastructure provisioning specifics (platforms/\*)

\- BI and reporting tooling configuration



Assumptions:

\- Strong consistency and transactional integrity are required.

\- Workloads may be read-write heavy.

\- Performance and concurrency must be carefully managed.



\## Responsibilities

\- Database engineers:

&nbsp; - Design schemas, indexes, and queries

&nbsp; - Optimize performance and concurrency

&nbsp; - Manage schema evolution



\- Application engineers:

&nbsp; - Use parameterized queries and stored procedures

&nbsp; - Avoid inefficient query patterns



\- Reviewers:

&nbsp; - Validate schema, index, and query changes

&nbsp; - Reject unsafe or inefficient designs



\- DevSecOps:

&nbsp; - Configure backups, encryption, and access controls

&nbsp; - Monitor database health and performance



\## Usage

\- Apply this file when:

&nbsp; - designing or modifying MSSQL schemas

&nbsp; - writing or modifying queries or stored procedures

&nbsp; - tuning performance or concurrency

\- This file MUST be composed with:

&nbsp; - agents/security.md

&nbsp; - agents/privacy.md

&nbsp; - agents/performance.md

&nbsp; - agents/reliability.md

&nbsp; - agents/tests.md



\## Structure

\- Databases SHOULD be organized by domain or application.

\- Schemas MUST be used to group related tables.

\- Naming conventions MUST be consistent and descriptive.



\## File Decomposition

\- Tables:

&nbsp; - MUST define primary keys and constraints.

\- Indexes:

&nbsp; - MUST document purpose and usage.

\- Stored procedures:

&nbsp; - MUST define inputs, outputs, and side effects.

\- Views:

&nbsp; - MUST document underlying queries and performance impact.

\- Migrations:

&nbsp; - MUST be versioned and reversible.



\## Application Rules

\- Schema rules:

&nbsp; - Breaking schema changes MUST be versioned.

&nbsp; - Column type changes MUST be carefully evaluated.

\- Query rules:

&nbsp; - SELECT \* MUST NOT be used in production queries.

&nbsp; - Queries MUST be parameterized.

\- Transaction rules:

&nbsp; - Transactions MUST be short-lived.

\- Concurrency rules:

&nbsp; - Blocking and deadlocks MUST be monitored and addressed.

\- Security rules:

&nbsp; - Encryption at rest MUST be enabled.

\- Recovery rules:

&nbsp; - Backups MUST be tested regularly.

\- Verification rules:

&nbsp; - Queries and schema changes MUST be tested.

&nbsp; - Violations of these standards MUST be treated as defects.



