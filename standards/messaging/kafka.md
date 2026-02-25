=========================================================

messaging/kafka.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# kafka Standards



\## Standards

\- Apache Kafka MUST be used for high-throughput, durable event streaming where selected.

\- Kafka topics MUST represent immutable event streams.

\- Events MUST be treated as facts and MUST NOT be mutated after publication.

\- Topic naming MUST be explicit, stable, and environment-aware.

\- Partitioning strategy MUST be intentional and documented.

\- Keys MUST be used consistently to preserve ordering guarantees where required.

\- Message schemas MUST be explicitly defined and versioned.

\- Backward and forward compatibility MUST be enforced for schema evolution.

\- Producers MUST be idempotent where supported.

\- Producers MUST handle retries and failures explicitly.

\- Consumers MUST be resilient to reprocessing and duplicates.

\- Consumer offsets MUST be committed intentionally.

\- Exactly-once semantics MUST NOT be assumed unless explicitly configured and validated.

\- Message size limits MUST be respected.

\- Sensitive data MUST NOT be placed on topics unless explicitly governed and encrypted.

\- Dead-letter topics MUST be defined for failure scenarios.

\- Monitoring and alerting MUST be enabled for brokers, producers, and consumers.

\- Kafka usage MUST align with agents/security.md, agents/observability.md, and agents/reliability.md.



\## Scope

In scope:

\- Kafka topics and event design

\- Producer and consumer behavior

\- Schema management and compatibility

\- Partitioning and ordering semantics

\- Error handling and retry strategies

\- Operational monitoring and reliability



Out of scope:

\- Application-specific business logic

\- UI consumption patterns

\- Infrastructure provisioning specifics (platforms/\*)



Assumptions:

\- Kafka clusters are managed and monitored.

\- Consumers may reprocess messages.

\- Event-driven architecture is intentional.



\## Responsibilities

\- Event producers:

&nbsp; - Publish well-formed, schema-compliant events

&nbsp; - Handle retries and delivery guarantees explicitly



\- Event consumers:

&nbsp; - Process events idempotently

&nbsp; - Handle duplicates, retries, and failures safely



\- Platform engineers:

&nbsp; - Manage Kafka clusters and configuration

&nbsp; - Enforce retention, replication, and security policies



\- Reviewers:

&nbsp; - Validate topic design, schema evolution, and partitioning strategy



\## Usage

\- Apply this file when:

&nbsp; - designing or modifying Kafka-based messaging

&nbsp; - creating producers or consumers

\- This file MUST be composed with:

&nbsp; - agents/security.md

&nbsp; - agents/observability.md

&nbsp; - agents/reliability.md

&nbsp; - agents/tests.md

\- Schema standards MUST be composed with:

&nbsp; - languages/avro.md or languages/json.md when applicable



\## Structure

\- Topics MUST be organized by domain or bounded context.

\- Naming SHOULD reflect event purpose, not consumers.

\- Environments MUST be isolated by naming or cluster separation.



\## File Decomposition

\- Topics:

&nbsp; - MUST define purpose, schema, and retention.

\- Events:

&nbsp; - MUST define explicit fields and semantics.

\- Producers:

&nbsp; - MUST define delivery guarantees and error handling.

\- Consumers:

&nbsp; - MUST define offset management and retry behavior.

\- Dead-letter topics:

&nbsp; - MUST capture failed messages with context.



\## Application Rules

\- Ordering rules:

&nbsp; - Ordering is guaranteed only within a partition.

\- Compatibility rules:

&nbsp; - Schema changes MUST preserve compatibility.

\- Failure rules:

&nbsp; - Consumers MUST tolerate replays.

\- Security rules:

&nbsp; - Encrypt data in transit.

&nbsp; - Apply ACLs per topic.

\- Observability rules:

&nbsp; - Monitor lag, throughput, and error rates.

\- Verification rules:

&nbsp; - Message contracts MUST be tested.

&nbsp; - Load characteristics MUST be validated.

&nbsp; - Violations of these standards MUST be treated as defects.



