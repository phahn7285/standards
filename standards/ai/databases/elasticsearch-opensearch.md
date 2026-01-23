=========================================================

databases/elasticsearch-opensearch.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# elasticsearch-opensearch Standards



\## Standards

\- Elasticsearch and OpenSearch MUST be used for search, analytics, and log-style query workloads, not as primary transactional databases.

\- Index design MUST be explicitly defined and documented.

\- Mappings MUST be explicitly defined; dynamic mapping MUST NOT be used in production.

\- Index naming MUST be consistent, descriptive, and environment-aware.

\- Index lifecycle management MUST be configured and enforced.

\- Shard and replica counts MUST be explicitly configured based on workload.

\- Queries MUST be optimized to avoid unbounded scans and excessive memory usage.

\- Search requests MUST include timeouts and size limits.

\- Aggregations MUST be used carefully and monitored for performance impact.

\- Data ingestion MUST validate structure and field types.

\- Reindexing operations MUST be planned, tested, and controlled.

\- Access control MUST follow least privilege.

\- Sensitive data MUST be minimized, protected, and governed.

\- Cluster health MUST be monitored continuously.

\- Usage MUST align with agents/performance.md, agents/reliability.md, and agents/security.md.



\## Scope

In scope:

\- Index and mapping design

\- Sharding and replication strategy

\- Search and aggregation query design

\- Index lifecycle management and retention

\- Ingestion pipelines

\- Reindexing strategies

\- Access control and security

\- Cluster monitoring and health



Out of scope:

\- Application business logic (agents/backend.md)

\- Primary data storage design (databases/\* other than search)

\- Infrastructure provisioning specifics (platforms/\*)

\- Visualization tooling configuration



Assumptions:

\- Data volume may be large and time-based.

\- Search and analytics workloads may be read-heavy.

\- Cluster resources are finite and shared.



\## Responsibilities

\- Application engineers:

&nbsp; - Design efficient queries and mappings

&nbsp; - Avoid unbounded or unsafe queries

&nbsp; - Handle partial or degraded search results



\- Data engineers:

&nbsp; - Design ingestion pipelines and index lifecycle policies

&nbsp; - Manage schema evolution and reindexing



\- Reviewers:

&nbsp; - Validate mapping and index changes

&nbsp; - Reject designs that risk cluster stability or cost overruns



\- DevSecOps:

&nbsp; - Configure cluster security and access controls

&nbsp; - Monitor cluster health and performance



\## Usage

\- Apply this file when:

&nbsp; - creating or modifying search indexes

&nbsp; - designing or changing search queries

&nbsp; - ingesting data into Elasticsearch or OpenSearch

\- This file MUST be composed with:

&nbsp; - agents/security.md

&nbsp; - agents/privacy.md

&nbsp; - agents/performance.md

&nbsp; - agents/reliability.md

&nbsp; - agents/tests.md



\## Structure

\- Indexes SHOULD be organized by data domain and time horizon.

\- Naming SHOULD include domain, purpose, and environment.

\- Index templates SHOULD be used for consistency.



\## File Decomposition

\- Index mappings:

&nbsp; - MUST define field types and analyzers explicitly.

\- Index settings:

&nbsp; - MUST define shard and replica counts.

\- Ingestion pipelines:

&nbsp; - MUST validate and normalize incoming data.

\- Lifecycle policies:

&nbsp; - MUST define rollover, retention, and deletion behavior.

\- Queries:

&nbsp; - MUST be documented for expected usage patterns.



\## Application Rules

\- Mapping rules:

&nbsp; - Dynamic mapping MUST be disabled in production.

\- Query rules:

&nbsp; - Queries MUST include size limits and filters.

&nbsp; - Expensive aggregations MUST be justified.

\- Sharding rules:

&nbsp; - Over-sharding MUST be avoided.

\- Retention rules:

&nbsp; - Old indexes MUST be archived or deleted per policy.

\- Security rules:

&nbsp; - Index access MUST be restricted by role.

\- Reindexing rules:

&nbsp; - Reindexing MUST be tested and monitored.

\- Verification rules:

&nbsp; - Search behavior and performance MUST be tested.

&nbsp; - Violations of these standards MUST be treated as defects.



