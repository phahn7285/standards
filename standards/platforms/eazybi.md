=========================================================

platforms/eazybi.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# eazybi Standards



\## Standards

\- eazyBI MUST be used for governed analytics, reporting, and data visualization where selected.

\- Data sources MUST be explicitly defined and documented.

\- Data refresh schedules MUST be intentional and monitored.

\- Calculated measures MUST be deterministic and reproducible.

\- MDX expressions MUST be readable, documented, and version-controlled.

\- Data models MUST be stable and backward-compatible.

\- Dimensions and measures MUST have clear semantic meaning.

\- Naming conventions MUST be consistent and descriptive.

\- Access controls MUST follow least-privilege principles.

\- Sensitive data MUST be masked, excluded, or aggregated appropriately.

\- Data accuracy MUST be validated at ingestion and reporting layers.

\- Performance of reports MUST be monitored and optimized.

\- Large datasets MUST be partitioned or aggregated intentionally.

\- Manual data manipulation MUST be avoided in production models.

\- Dashboards MUST reflect a single source of truth.

\- Changes to models or calculations MUST be review-gated.

\- Backup and recovery of configurations MUST be defined.

\- eazyBI usage MUST align with agents/security.md, agents/data-ml.md, and agents/observability.md.



\## Scope

In scope:

\- eazyBI data models

\- Dimensions, measures, and calculated members

\- Data imports and refresh schedules

\- Dashboards and reports

\- Access control and governance



Out of scope:

\- Upstream data generation logic

\- ETL tooling outside eazyBI ingestion

\- Infrastructure provisioning specifics

\- Non-analytics application logic



Assumptions:

\- eazyBI is used as an analytics and reporting layer.

\- Data sources are authoritative and versioned.

\- Stakeholders rely on dashboards for decision-making.



\## Responsibilities

\- Analytics engineers:

&nbsp; - Design and maintain data models and calculations

&nbsp; - Ensure data accuracy and performance

&nbsp; - Document metrics and assumptions



\- Platform engineers:

&nbsp; - Manage data connections and refresh schedules

&nbsp; - Ensure security, access control, and backups



\- Reviewers:

&nbsp; - Validate correctness, performance, and semantic clarity

&nbsp; - Reject ambiguous or misleading metrics



\- Data consumers:

&nbsp; - Use dashboards according to defined semantics

&nbsp; - Report discrepancies or performance issues



\## Usage

\- Apply this file when:

&nbsp; - designing or modifying eazyBI models or dashboards

&nbsp; - integrating new data sources into eazyBI

\- This file MUST be composed with:

&nbsp; - agents/security.md

&nbsp; - agents/data-ml.md

&nbsp; - agents/observability.md

&nbsp; - agents/repo-hygiene.md when versioning assets

\- Source system standards MUST be composed where applicable.



\## Structure

\- Data sources MUST be documented and versioned.

\- Models MUST separate raw data, derived measures, and presentation.

\- Dashboards MUST be organized by domain or audience.

\- Calculations MUST be centralized and reusable.



\## File Decomposition

\- Data sources:

&nbsp; - MUST define connection, schema, and refresh cadence.

\- Dimensions:

&nbsp; - MUST define hierarchy and semantics.

\- Measures:

&nbsp; - MUST define calculation logic and aggregation behavior.

\- Calculated members:

&nbsp; - MUST define explicit MDX logic.

\- Dashboards:

&nbsp; - MUST define layout and metric intent.

\- Access configuration:

&nbsp; - MUST define role-based permissions.



\## Application Rules

\- Governance rules:

&nbsp; - All metrics MUST have a defined owner.

\- Accuracy rules:

&nbsp; - Data discrepancies MUST be investigated and resolved.

\- Performance rules:

&nbsp; - Expensive calculations MUST be optimized or pre-aggregated.

\- Security rules:

&nbsp; - Restrict access to sensitive dimensions and measures.

\- Change rules:

&nbsp; - Model and calculation changes MUST be reviewed.

\- Verification rules:

&nbsp; - Data refreshes MUST be monitored.

&nbsp; - Dashboards MUST be validated after changes.

&nbsp; - Violations of these standards MUST be treated as defects.



