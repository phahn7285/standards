=========================================================

databases/postgres.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# postgres Standards



\## Standards

\- PostgreSQL MUST be used for relational workloads requiring strong consistency and advanced querying.

\- Database schemas MUST be explicitly defined, versioned, and documented.

\- Tables MUST be normalized unless denormalization is explicitly justified.

\- Primary keys MUST be defined for all tables.

\- Foreign keys MUST be enforced unless explicitly justified.

\- Indexes MUST be explicitly designed, reviewed, and monitored.

\- Queries MUST be written to use indexes efficiently.

\- Extensions MUST be explicitly approved and documented.

\- Functions and triggers MUST be deterministic where possible and documented.

\- Ad-hoc dynamic SQL MUST be avoided or safely parameterized.

\- Transactions MUST be scoped narrowly and completed promptly.

\- Isolation levels MUST be explicitly configured when defaults are insufficient.

\- Sensitive data MUST be encrypted and governed.

\- Access control MUST follow least privilege.

\- Backup and recovery strategies MUST be defined, automated, and tested.

\- Schema changes MUST be backward compatible or explicitly versioned.

\- PostgreSQL usage MUST align with agents/performance.md, agents/reliability.md, and agents/security.md.



\## Scope

In scope:

\- Database schema and table design

\- Indexing and query optimization

\- Views, functions, and triggers

\- Transaction management and isolation

\- Extensions and advanced features

\- Security, access control, and encryption

\- Backup, restore, and recovery

\- Schema migration strategies



Out of scope:

\- Application business logic (agents/backend.md)

\- API contract definition (agents/api-contracts.md)

\- Infrastructure provisioning specifics (platforms/\*)

\- Analytics workloads better suited for data warehouses



Assumptions:

\- ACID compliance is required.

\- Complex queries and joins may be common.

\- Performance and concurrency require active management.



\## Responsibilities

\- Database engineers:

&nbsp; - Design schemas, indexes, and queries

&nbsp; - Optimize performance and concurrency

&nbsp; - Manage schema evolution and extensions



\- Application engineers:

&nbsp; - Use parameterized queries

&nbsp; - Avoid inefficient query patterns



\- Reviewers:

&nbsp; - Validate schema, index, function, and query changes

&nbsp; - Reject unsafe or inefficient designs



\- DevSecOps:

&nbsp; - Configure backups, encryption, and access controls

&nbsp; - Monitor database health and performance



\## Usage

\- Apply this file when:

&nbsp; - designing or modifying PostgreSQL schemas

&nbsp; - writing or modifying queries, views, or functions

&nbsp; - enabling extensions or tuning performance

\- This file MUST be composed with:

&nbsp; - agents/security.md

&nbsp; - agents/privacy.md

&nbsp; - agents/performance.md

&nbsp; - agents/reliability.md

&nbsp; - agents/tests.md



\## Structure

\- Databases SHOULD be organized by domain or application.

\- Schemas MUST be used to group related tables and functions.

\- Naming conventions MUST be explicit and consistent.



\## File Decomposition

\- Tables:

&nbsp; - MUST define primary keys and constraints.

\- Indexes:

&nbsp; - MUST document purpose and expected usage.

\- Views:

&nbsp; - MUST document underlying queries and performance impact.

\- Functions and triggers:

&nbsp; - MUST define inputs, outputs, and side effects.

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

&nbsp; - Lock contention and deadlocks MUST be monitored.

\- Extension rules:

&nbsp; - Extensions MUST be reviewed for security and stability.

\- Security rules:

&nbsp; - Encryption at rest MUST be enabled.

\- Recovery rules:

&nbsp; - Backups MUST be tested regularly.

\- Verification rules:

&nbsp; - Queries and schema changes MUST be tested.

&nbsp; - Violations of these standards MUST be treated as defects.



