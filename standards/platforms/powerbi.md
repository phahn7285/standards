=========================================================

platforms/powerbi.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# powerbi Standards



\## Standards

\- Power BI MUST be used as a governed analytics and visualization platform where selected.

\- Semantic models MUST be the single source of truth for measures and calculations.

\- Business logic MUST NOT be duplicated across reports.

\- DAX expressions MUST be deterministic, readable, and version-controlled.

\- Measures MUST be preferred over calculated columns where feasible.

\- Calculated columns MUST be justified and minimized.

\- Naming conventions MUST be consistent, descriptive, and stable.

\- Relationships MUST be explicit and validated.

\- Cardinality and filter direction MUST be intentional.

\- Star schema modeling MUST be preferred.

\- Data refresh schedules MUST be intentional and monitored.

\- Incremental refresh MUST be used for large datasets where supported.

\- Data source credentials MUST be managed securely.

\- Sensitive data MUST be masked, restricted, or excluded appropriately.

\- Row-level security MUST be defined where required.

\- Reports MUST use governed datasets.

\- Ad-hoc measures in reports MUST be avoided.

\- Performance MUST be monitored and optimized.

\- Changes to models or reports MUST be review-gated.

\- Power BI usage MUST align with agents/security.md, agents/data-ml.md, and agents/observability.md.



\## Scope

In scope:

\- Power BI datasets and semantic models

\- DAX measures and calculations

\- Data modeling and relationships

\- Reports and dashboards

\- Refresh configuration and governance

\- Security and access control



Out of scope:

\- Upstream ETL and data ingestion logic

\- Infrastructure provisioning specifics

\- Non-analytics application logic



Assumptions:

\- Power BI is used as an analytics and reporting layer.

\- Source systems are authoritative and governed.

\- Consumers rely on Power BI for decision-making.



\## Responsibilities

\- Analytics engineers:

&nbsp; - Design and maintain semantic models

&nbsp; - Define accurate and performant DAX measures

&nbsp; - Ensure data quality and model clarity



\- Platform engineers:

&nbsp; - Manage workspaces, gateways, and refresh schedules

&nbsp; - Enforce security, access control, and lifecycle policies



\- Reviewers:

&nbsp; - Validate model correctness, relationships, and performance

&nbsp; - Reject duplicated or ad-hoc business logic



\- Data consumers:

&nbsp; - Use governed datasets and reports

&nbsp; - Report discrepancies or performance issues



\## Usage

\- Apply this file when:

&nbsp; - designing or modifying Power BI datasets, models, or reports

&nbsp; - introducing new metrics or data sources

\- This file MUST be composed with:

&nbsp; - agents/security.md

&nbsp; - agents/data-ml.md

&nbsp; - agents/observability.md

&nbsp; - agents/repo-hygiene.md when versioning assets

\- Database standards MUST be composed with:

&nbsp; - databases/\* based on source systems



\## Structure

\- Datasets MUST define semantic models and measures.

\- Reports MUST consume governed datasets only.

\- Dashboards MUST be organized by domain or audience.

\- Workspaces MUST align to environment and ownership boundaries.



\## File Decomposition

\- Datasets:

&nbsp; - MUST define tables, relationships, and measures.

\- Measures:

&nbsp; - MUST define business logic and aggregation behavior.

\- Calculated columns:

&nbsp; - MUST be minimized and documented.

\- Reports:

&nbsp; - MUST define visualizations and interactions.

\- Dashboards:

&nbsp; - MUST aggregate approved reports.

\- Security configuration:

&nbsp; - MUST define role-based access and row-level security.



\## Application Rules

\- Modeling rules:

&nbsp; - Prefer star schema designs.

\- DAX rules:

&nbsp; - Measures MUST be readable and documented.

\- Performance rules:

&nbsp; - Expensive calculations MUST be optimized.

\- Security rules:

&nbsp; - Apply row-level security where required.

\- Change rules:

&nbsp; - Dataset and report changes MUST be reviewed.

\- Verification rules:

&nbsp; - Data refreshes MUST be monitored.

&nbsp; - Reports MUST be validated after changes.

&nbsp; - Violations of these standards MUST be treated as defects.



