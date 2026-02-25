=========================================================

messaging/pulsar.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# pulsar Standards



\## Standards

\- Apache Pulsar MUST be used for scalable, multi-tenant event streaming and messaging where selected.

\- Topics MUST represent immutable event streams.

\- Events MUST be treated as facts and MUST NOT be mutated after publication.

\- Topic naming MUST be explicit, stable, and environment-aware.

\- Namespace usage MUST be intentional and aligned to tenancy and domain boundaries.

\- Partitioning MUST be configured intentionally based on throughput and ordering needs.

\- Message keys MUST be used consistently when ordering guarantees are required.

\- Schemas MUST be explicitly defined and versioned.

\- Schema compatibility MUST be enforced for producers and consumers.

\- Producers MUST configure delivery guarantees intentionally.

\- Consumers MUST be resilient to reprocessing and duplicates.

\- Acknowledgements MUST be handled explicitly.

\- Subscription types MUST be selected intentionally.

\- Exactly-once semantics MUST NOT be assumed unless explicitly configured and validated.

\- Retention and backlog policies MUST be explicitly defined.

\- Sensitive data MUST NOT be published unless explicitly governed and encrypted.

\- Dead-letter topics MUST be defined for failure scenarios.

\- Monitoring and alerting MUST be enabled for brokers, producers, consumers, and storage.

\- Pulsar usage MUST align with agents/security.md, agents/observability.md, and agents/reliability.md.



\## Scope

In scope:

\- Pulsar topics, namespaces, and tenants

\- Producer and consumer behavior

\- Subscription models and delivery semantics

\- Schema management and compatibility

\- Retention, backlog, and tiered storage

\- Operational monitoring and reliability



Out of scope:

\- Application-specific business logic

\- UI consumption patterns

\- Infrastructure provisioning specifics (platforms/\*)



Assumptions:

\- Pulsar clusters are managed and monitored.

\- Consumers may reprocess messages.

\- Event-driven or message-driven architecture is intentional.



\## Responsibilities

\- Event producers:

&nbsp; - Publish schema-compliant events

&nbsp; - Handle retries and delivery guarantees explicitly



\- Event consumers:

&nbsp; - Process messages idempotently

&nbsp; - Handle duplicates, retries, and failures safely



\- Platform engineers:

&nbsp; - Manage Pulsar clusters, namespaces, and tenants

&nbsp; - Enforce retention, replication, and security policies



\- Reviewers:

&nbsp; - Validate topic design, namespace boundaries, and schema evolution



\## Usage

\- Apply this file when:

&nbsp; - designing or modifying Pulsar-based messaging

&nbsp; - creating producers or consumers

\- This file MUST be composed with:

&nbsp; - agents/security.md

&nbsp; - agents/observability.md

&nbsp; - agents/reliability.md

&nbsp; - agents/tests.md

\- Schema standards MUST be composed with:

&nbsp; - languages/avro.md or languages/json.md when applicable



\## Structure

\- Tenants MUST represent organizational or security boundaries.

\- Namespaces MUST group related topics and policies.

\- Topics MUST be named by domain and event intent.

\- Environments MUST be isolated by namespace or cluster.



\## File Decomposition

\- Tenants:

&nbsp; - MUST define ownership and access boundaries.

\- Namespaces:

&nbsp; - MUST define retention, backlog, and replication policies.

\- Topics:

&nbsp; - MUST define schema, partitions, and retention.

\- Producers:

&nbsp; - MUST define publish guarantees and error handling.

\- Consumers:

&nbsp; - MUST define subscription type, acknowledgment, and retry behavior.

\- Dead-letter topics:

&nbsp; - MUST capture failed messages with context.



\## Application Rules

\- Ordering rules:

&nbsp; - Ordering is guaranteed only per key or partition.

\- Compatibility rules:

&nbsp; - Schema changes MUST preserve compatibility.

\- Failure rules:

&nbsp; - Consumers MUST tolerate replays and redelivery.

\- Security rules:

&nbsp; - Encrypt data in transit.

&nbsp; - Apply per-tenant and per-namespace permissions.

\- Observability rules:

&nbsp; - Monitor backlog, throughput, and failure rates.

\- Verification rules:

&nbsp; - Message contracts MUST be tested.

&nbsp; - Load characteristics MUST be validated.

&nbsp; - Violations of these standards MUST be treated as defects.



