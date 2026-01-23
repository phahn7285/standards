=========================================================

databases/redis.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# redis Standards



\## Standards

\- Redis MUST be used for caching, ephemeral state, messaging primitives, or fast in-memory data access.

\- Redis MUST NOT be used as the sole system of record for critical data.

\- Data stored in Redis MUST be classified as cacheable or reconstructable unless explicitly justified.

\- Keys MUST be named using a consistent, hierarchical naming convention.

\- Time-to-live MUST be defined for all non-persistent keys.

\- Memory usage MUST be bounded and monitored.

\- Eviction policies MUST be explicitly configured.

\- Persistence configuration MUST be explicitly defined and documented.

\- Redis data structures MUST be chosen intentionally based on access patterns.

\- Transactions and Lua scripts MUST be deterministic and reviewed.

\- Blocking commands MUST be avoided in production paths.

\- Large keys and values MUST be avoided.

\- Access control MUST follow least privilege.

\- Sensitive data MUST be minimized and protected.

\- Redis usage MUST align with agents/performance.md, agents/reliability.md, and agents/security.md.



\## Scope

In scope:

\- Cache and ephemeral data storage

\- Session storage

\- Rate limiting and counters

\- Pub/Sub and stream usage

\- Data structure selection

\- Eviction and persistence strategies

\- Security and access control



Out of scope:

\- Primary durable data storage

\- Complex analytical workloads

\- Application business logic (agents/backend.md)

\- Infrastructure provisioning specifics (platforms/\*)



Assumptions:

\- Redis operates in memory-constrained environments.

\- Data loss may be acceptable depending on use case.

\- Latency requirements are strict.



\## Responsibilities

\- Application engineers:

&nbsp; - Design key structure and data usage

&nbsp; - Ensure TTLs and eviction are applied correctly

&nbsp; - Avoid misuse as a primary datastore



\- Data engineers:

&nbsp; - Validate data modeling and structure usage

&nbsp; - Monitor memory growth and fragmentation



\- Reviewers:

&nbsp; - Validate Redis usage patterns

&nbsp; - Reject designs that risk data loss or instability



\- DevSecOps:

&nbsp; - Configure persistence, replication, and security

&nbsp; - Monitor performance and memory utilization



\## Usage

\- Apply this file when:

&nbsp; - introducing Redis for caching or ephemeral state

&nbsp; - designing rate limiting or coordination mechanisms

&nbsp; - tuning Redis performance or memory usage

\- This file MUST be composed with:

&nbsp; - agents/security.md

&nbsp; - agents/privacy.md

&nbsp; - agents/performance.md

&nbsp; - agents/reliability.md

&nbsp; - agents/tests.md



\## Structure

\- Redis keyspace SHOULD be organized by domain and purpose.

\- Naming MUST be consistent and descriptive.

\- Environment separation MUST be explicit.



\## File Decomposition

\- Keys:

&nbsp; - MUST follow naming conventions and include domain prefixes.

\- TTL configuration:

&nbsp; - MUST define expiration behavior.

\- Data structures:

&nbsp; - MUST be selected based on access and mutation patterns.

\- Persistence:

&nbsp; - MUST define snapshotting and append-only settings.

\- Scripts:

&nbsp; - MUST be documented and versioned.



\## Application Rules

\- Key rules:

&nbsp; - Keys MUST include clear namespace prefixes.

\- TTL rules:

&nbsp; - Non-persistent data MUST have TTLs.

\- Memory rules:

&nbsp; - Memory limits MUST be enforced.

\- Eviction rules:

&nbsp; - Eviction policy MUST match workload characteristics.

\- Persistence rules:

&nbsp; - Persistence MUST be enabled only when required.

\- Security rules:

&nbsp; - Access MUST be authenticated and authorized.

\- Verification rules:

&nbsp; - Redis usage MUST be tested under load.

&nbsp; - Violations of these standards MUST be treated as defects.



