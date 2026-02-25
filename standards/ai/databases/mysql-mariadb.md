=========================================================

databases/mysql-mariadb.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# mysql-mariadb Standards



\## Standards

\- MySQL and MariaDB MUST be used for relational workloads requiring transactional consistency.

\- Schemas MUST be explicitly defined, versioned, and documented.

\- Tables MUST be normalized unless denormalization is explicitly justified.

\- Primary keys MUST be defined for all tables.

\- Foreign keys MUST be enforced unless explicitly justified.

\- InnoDB MUST be used as the default storage engine.

\- Indexes MUST be explicitly designed and reviewed.

\- Queries MUST be written to use indexes efficiently.

\- Ad-hoc dynamic SQL MUST be avoided or safely parameterized.

\- Transactions MUST be scoped narrowly and completed promptly.

\- Isolation levels MUST be explicitly configured where defaults are insufficient.

\- Character sets and collations MUST be explicitly defined and consistent.

\- Sensitive data MUST be encrypted and governed.

\- Access control MUST follow least privilege.

\- Backup and recovery strategies MUST be defined and tested.

\- Schema changes MUST be backward compatible or explicitly versioned.

\- MySQL and MariaDB usage MUST align with agents/performance.md, agents/reliability.md, and agents/security.md.



\## Scope

In scope:

\- Database schema and table design

\- Indexing and query optimization

\- Transaction management and isolation

\- Character set and collation configuration

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

\- Workloads may be read-write heavy.

\- Performance and concurrency require tuning.



\## Responsibilities

\- Database engineers:

&nbsp; - Design schemas, indexes, and queries

&nbsp; - Optimize performance and concurrency

&nbsp; - Manage schema evolution



\- Application engineers:

&nbsp; - Use parameterized queries

&nbsp; - Avoid inefficient query patterns



\- Reviewers:

&nbsp; - Validate schema, index, and query changes

&nbsp; - Reject unsafe or inefficient designs



\- DevSecOps:

&nbsp; - Configure backups, encryption, and access controls

&nbsp; - Monitor database health and performance



\## Usage

\- Apply this file when:

&nbsp; - designing or modifying MySQL or MariaDB schemas

&nbsp; - writing or modifying queries

&nbsp; - tuning performance or concurrency

\- This file MUST be composed with:

&nbsp; - agents/security.md

&nbsp; - agents/privacy.md

&nbsp; - agents/performance.md

&nbsp; - agents/reliability.md

&nbsp; - agents/tests.md



\## Structure

\- Databases SHOULD be organized by domain or application.

\- Schemas MUST be used consistently.

\- Naming conventions MUST be explicit and descriptive.



\## File Decomposition

\- Tables:

&nbsp; - MUST define primary keys and constraints.

\- Indexes:

&nbsp; - MUST document purpose and usage.

\- Migrations:

&nbsp; - MUST be versioned and reversible.

\- Configuration:

&nbsp; - MUST define engine, charset, and collation explicitly.



\## Application Rules

\- Schema rules:

&nbsp; - Breaking schema changes MUST be versioned.

&nbsp; - Column type and charset changes MUST be evaluated carefully.

\- Query rules:

&nbsp; - SELECT \* MUST NOT be used in production queries.

&nbsp; - Queries MUST be parameterized.

\- Transaction rules:

&nbsp; - Transactions MUST be short-lived.

\- Concurrency rules:

&nbsp; - Lock contention MUST be monitored and minimized.

\- Security rules:

&nbsp; - Encryption at rest MUST be enabled.

\- Recovery rules:

&nbsp; - Backups MUST be tested regularly.

\- Verification rules:

&nbsp; - Queries and schema changes MUST be tested.

&nbsp; - Violations of these standards MUST be treated as defects.



