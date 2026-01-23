=========================================================

databases/bigquery.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# bigquery Standards



\## Standards

\- BigQuery MUST be used for analytical workloads, not transactional OLTP workloads.

\- Datasets, tables, and views MUST be explicitly named, versioned, and documented.

\- Schemas MUST be explicitly defined; schema autodetection MUST NOT be used in production.

\- Partitioning and clustering MUST be used for large tables to control cost and performance.

\- Queries MUST be written to minimize scanned data.

\- Cost controls MUST be enforced through quotas, budgets, and query design.

\- Access to datasets MUST follow least privilege.

\- Sensitive data MUST be classified, protected, and governed.

\- Data ingestion MUST validate schema and data quality.

\- Tables MUST have clear ownership.

\- Views MUST NOT hide expensive or unsafe query patterns.

\- Materialized views MUST be used judiciously and monitored.

\- UDFs MUST be deterministic and documented.

\- Data retention and expiration MUST be explicitly defined.

\- Changes to schemas or critical queries MUST be reviewed and tested.

\- BigQuery usage MUST align with agents/security.md, agents/privacy.md, and agents/performance.md.



\## Scope

In scope:

\- BigQuery datasets, tables, and views

\- Schema design and evolution

\- Partitioning and clustering strategies

\- Query design and optimization

\- Cost management and quotas

\- Access control and data governance

\- Data ingestion and transformation

\- Use of UDFs and materialized views



Out of scope:

\- Upstream data source systems

\- BI tool configuration (platforms/\*)

\- Application business logic (agents/backend.md)

\- Infrastructure provisioning specifics



Assumptions:

\- BigQuery is used as an analytical data warehouse.

\- Data volumes may be large and variable.

\- Cost is directly tied to data scanned and stored.



\## Responsibilities

\- Data engineers:

&nbsp; - Design schemas, partitions, and ingestion pipelines

&nbsp; - Optimize queries and storage

&nbsp; - Enforce data quality and governance



\- Analysts and data scientists:

&nbsp; - Write efficient, cost-aware queries

&nbsp; - Avoid unsafe or unbounded scans



\- Reviewers:

&nbsp; - Validate schema changes and query safety

&nbsp; - Reject designs that increase cost or risk unnecessarily



\- DevSecOps:

&nbsp; - Enforce access controls, quotas, and budgets

&nbsp; - Monitor usage and cost



\## Usage

\- Apply this file when:

&nbsp; - creating or modifying BigQuery datasets or tables

&nbsp; - writing production queries or views

&nbsp; - ingesting data into BigQuery

\- This file MUST be composed with:

&nbsp; - agents/security.md

&nbsp; - agents/privacy.md

&nbsp; - agents/performance.md

&nbsp; - agents/tests.md

\- Data transformation standards MUST be composed with relevant languages/\* files when applicable.



\## Structure

\- BigQuery resources SHOULD be organized logically:

&nbsp; - datasets per domain or business area

&nbsp; - tables per entity or event type

&nbsp; - views for controlled access or abstraction

\- Naming MUST be consistent and descriptive.

\- Environment separation MUST be explicit (for example: dev, test, prod).



\## File Decomposition

\- Datasets:

&nbsp; - MUST define purpose, owner, and access policy.

\- Tables:

&nbsp; - MUST define explicit schema and data types.

&nbsp; - MUST define partitioning and clustering where applicable.

\- Views:

&nbsp; - MUST document underlying queries and cost implications.

\- UDFs:

&nbsp; - MUST be documented and versioned.

\- Ingestion jobs:

&nbsp; - MUST validate schema and data quality.



\## Application Rules

\- Schema rules:

&nbsp; - Breaking schema changes MUST be versioned.

&nbsp; - Nullable vs required fields MUST be intentional.

\- Partitioning rules:

&nbsp; - Time-based partitioning MUST be used for time-series data.

&nbsp; - Queries MUST include partition filters.

\- Clustering rules:

&nbsp; - Clustering MUST be based on common filter or join keys.

\- Query rules:

&nbsp; - SELECT \* MUST NOT be used in production queries.

&nbsp; - Queries MUST limit scanned columns and rows.

\- Cost rules:

&nbsp; - Unbounded queries MUST be rejected.

&nbsp; - Budgets and alerts MUST be configured.

\- Security rules:

&nbsp; - Sensitive columns MUST be protected with access controls.

\- Retention rules:

&nbsp; - Table expiration MUST be defined when appropriate.

\- Verification rules:

&nbsp; - Queries and schema changes MUST be tested.

&nbsp; - Violations of these standards MUST be treated as defects.



