=========================================================

messaging/redis.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# redis Messaging Standards



\## Standards

\- Redis messaging MUST be used only when low-latency, in-memory pub-sub or lightweight queue semantics are required.

\- Redis Pub/Sub MUST be used only for ephemeral messaging with no durability guarantees.

\- Redis Streams MUST be used when durability, replay, or consumer groups are required.

\- Message payloads MUST be schema-defined and versioned.

\- Producers MUST handle publish failures explicitly.

\- Consumers MUST be idempotent and tolerate redelivery when using Streams.

\- Acknowledgements MUST be handled explicitly for Redis Streams.

\- Consumer groups MUST be configured intentionally.

\- Pending entries MUST be monitored and managed.

\- Message retention MUST be explicitly configured.

\- Backpressure handling MUST be considered and documented.

\- Ordering MUST NOT be assumed across shards or instances.

\- Redis persistence configuration MUST be explicit when durability is required.

\- Sensitive data MUST NOT be published unless explicitly governed and encrypted.

\- Access control MUST be enabled using authentication and ACLs.

\- Monitoring and alerting MUST be enabled for memory, latency, and stream backlog.

\- Redis messaging usage MUST align with agents/security.md, agents/observability.md, and agents/reliability.md.



\## Scope

In scope:

\- Redis Pub/Sub messaging

\- Redis Streams messaging

\- Consumer groups and acknowledgements

\- Message retention and trimming

\- Operational monitoring and reliability



Out of scope:

\- Redis used purely as a cache or key-value store

\- Long-term durable event sourcing

\- Complex routing or fanout beyond Redis capabilities

\- Infrastructure provisioning specifics (platforms/\*)



Assumptions:

\- Redis instances are managed and monitored.

\- Memory constraints are a primary operational concern.

\- Message loss may occur unless Streams and persistence are configured.



\## Responsibilities

\- Message producers:

&nbsp; - Publish schema-compliant messages

&nbsp; - Handle publish failures and backpressure



\- Message consumers:

&nbsp; - Process messages idempotently

&nbsp; - Acknowledge messages explicitly when required

&nbsp; - Monitor pending and failed messages



\- Platform engineers:

&nbsp; - Configure persistence, replication, and security

&nbsp; - Monitor memory usage and performance



\- Reviewers:

&nbsp; - Validate messaging pattern selection and durability assumptions



\## Usage

\- Apply this file when:

&nbsp; - using Redis for pub-sub or stream-based messaging

&nbsp; - implementing lightweight queues or event notifications

\- This file MUST be composed with:

&nbsp; - agents/security.md

&nbsp; - agents/observability.md

&nbsp; - agents/reliability.md

&nbsp; - agents/tests.md

\- Redis engine standards MUST also compose with:

&nbsp; - databases/redis.md



\## Structure

\- Channels MUST be named by intent when using Pub/Sub.

\- Streams MUST be named by domain and message intent.

\- Consumer groups MUST be named by consumer responsibility.

\- Environments MUST be isolated by instance, namespace, or key prefix.



\## File Decomposition

\- Channels:

&nbsp; - MUST define ephemeral message intent.

\- Streams:

&nbsp; - MUST define durability, retention, and trimming behavior.

\- Consumer groups:

&nbsp; - MUST define delivery and acknowledgment behavior.

\- Producers:

&nbsp; - MUST define publish and retry behavior.

\- Consumers:

&nbsp; - MUST define processing, acknowledgment, and retry logic.



\## Application Rules

\- Pattern selection rules:

&nbsp; - Use Pub/Sub only when message loss is acceptable.

&nbsp; - Use Streams when durability or replay is required.

\- Delivery rules:

&nbsp; - Consumers MUST handle duplicates when using Streams.

\- Retention rules:

&nbsp; - Stream trimming MUST be configured intentionally.

\- Security rules:

&nbsp; - Enable authentication and ACLs.

&nbsp; - Encrypt connections where supported.

\- Observability rules:

&nbsp; - Monitor memory usage, latency, and pending messages.

\- Verification rules:

&nbsp; - Message flows MUST be tested.

&nbsp; - Failure and backlog scenarios MUST be validated.

&nbsp; - Violations of these standards MUST be treated as defects.



