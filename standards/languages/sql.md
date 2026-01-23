=========================================================

languages/sql.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# sql Standards



\## Standards

\- SQL MUST be written to prioritize correctness, clarity, performance, and safety.

\- SQL dialect differences MUST be acknowledged and handled explicitly.

\- Queries MUST be deterministic and reproducible.

\- Explicit column lists MUST be used; SELECT \* MUST NOT be used in production queries.

\- Table and column names MUST be explicit, descriptive, and consistent.

\- Aliases MUST be meaningful and limited in scope.

\- JOIN conditions MUST be explicit and correct.

\- WHERE clauses MUST be explicit and avoid implicit filtering.

\- NULL handling MUST be explicit and intentional.

\- Aggregations MUST define grouping behavior explicitly.

\- Window functions MUST be used intentionally and documented.

\- Index usage MUST be considered for query patterns.

\- Queries MUST avoid unnecessary complexity.

\- Parameterized queries MUST be used to prevent injection.

\- Dynamic SQL MUST be avoided unless explicitly required and validated.

\- Transactions MUST be used intentionally and scoped correctly.

\- Isolation levels MUST be selected intentionally.

\- Long-running queries MUST define limits and timeouts where supported.

\- Data modification statements MUST be idempotent where feasible.

\- Destructive operations MUST require explicit intent.

\- SQL code MUST be reviewed and tested.

\- SQL usage MUST align with agents/security.md and agents/performance.md.



\## Scope

In scope:

\- SQL queries and scripts

\- DDL, DML, and DQL statements

\- Transactions and isolation behavior

\- Indexing considerations

\- Stored procedures and views where applicable



Out of scope:

\- Database engine configuration specifics (databases/\*)

\- ORM or query builder implementation details

\- Infrastructure provisioning specifics



Assumptions:

\- SQL is executed against relational database engines.

\- Queries may run in transactional or analytical contexts.

\- Data correctness and performance are critical.



\## Responsibilities

\- Developers:

&nbsp; - Write clear, safe, and performant SQL

&nbsp; - Validate assumptions about data shape and volume

&nbsp; - Avoid unsafe dynamic query construction



\- Reviewers:

&nbsp; - Validate correctness, performance, and safety

&nbsp; - Reject ambiguous or inefficient queries



\- Database administrators:

&nbsp; - Advise on indexing, execution plans, and tuning

&nbsp; - Monitor query performance and impact



\## Usage

\- Apply this file when:

&nbsp; - writing or modifying SQL queries or scripts

&nbsp; - defining database access patterns

\- This file MUST be composed with:

&nbsp; - agents/security.md

&nbsp; - agents/performance.md

&nbsp; - agents/tests.md when SQL is validated automatically

\- Engine-specific standards MUST be composed from databases/\* when applicable.



\## Structure

\- SQL files SHOULD be organized by domain or purpose.

\- DDL, DML, and queries SHOULD be separated where feasible.

\- Scripts MUST define execution order explicitly when required.



\## File Decomposition

\- DDL scripts:

&nbsp; - MUST define schema, tables, and constraints explicitly.

\- Query scripts:

&nbsp; - MUST define clear inputs and outputs.

\- Modification scripts:

&nbsp; - MUST define transactional boundaries.

\- Views:

&nbsp; - MUST encapsulate reusable query logic.

\- Stored procedures:

&nbsp; - MUST define explicit inputs, outputs, and error handling.



\## Application Rules

\- Safety rules:

&nbsp; - Parameterize all external inputs.

&nbsp; - Avoid unsafe dynamic SQL.

\- Performance rules:

&nbsp; - Use indexes intentionally.

&nbsp; - Review execution plans for critical queries.

\- Transaction rules:

&nbsp; - Keep transactions short and scoped.

\- Compatibility rules:

&nbsp; - Avoid non-portable SQL unless explicitly justified.

\- Verification rules:

&nbsp; - SQL changes MUST be reviewed and tested.

&nbsp; - Destructive operations MUST require explicit approval.

&nbsp; - Violations of these standards MUST be treated as defects.



