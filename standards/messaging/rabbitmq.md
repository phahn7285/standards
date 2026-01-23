=========================================================

messaging/rabbitmq.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# rabbitmq Standards



\## Standards

\- RabbitMQ MUST be used for reliable message queuing, routing, and task distribution where selected.

\- Queues MUST represent transient or durable work, not immutable event logs.

\- Exchanges MUST be chosen intentionally based on routing needs.

\- Routing keys MUST be explicit, stable, and meaningful.

\- Queue durability and message persistence MUST be explicitly configured.

\- Acknowledgements MUST be used to guarantee delivery semantics.

\- Consumers MUST be idempotent and tolerate redelivery.

\- Prefetch limits MUST be configured intentionally.

\- Dead-letter exchanges and queues MUST be defined for failure scenarios.

\- Retry behavior MUST be explicit and bounded.

\- Message TTL MUST be configured intentionally where applicable.

\- Poison messages MUST be isolated and observable.

\- Sensitive data MUST NOT be placed on queues unless explicitly governed and encrypted.

\- Management plugins MUST be secured.

\- Monitoring and alerting MUST be enabled for brokers, queues, and consumers.

\- RabbitMQ usage MUST align with agents/security.md, agents/observability.md, and agents/reliability.md.



\## Scope

In scope:

\- Message queues and exchanges

\- Routing and delivery semantics

\- Consumer acknowledgment and retry behavior

\- Dead-lettering and failure handling

\- Operational monitoring and reliability



Out of scope:

\- Event sourcing and long-term event storage

\- Application business logic

\- Infrastructure provisioning specifics (platforms/\*)



Assumptions:

\- Message processing may fail and be retried.

\- Delivery order is not guaranteed unless explicitly configured.

\- Backpressure handling is required.



\## Responsibilities

\- Message producers:

&nbsp; - Publish well-formed messages with explicit routing

&nbsp; - Set persistence and headers intentionally



\- Message consumers:

&nbsp; - Acknowledge messages explicitly

&nbsp; - Handle retries and failures safely

&nbsp; - Ensure idempotent processing



\- Platform engineers:

&nbsp; - Manage broker configuration and security

&nbsp; - Enforce durability, retention, and access policies



\- Reviewers:

&nbsp; - Validate exchange, queue, and routing design



\## Usage

\- Apply this file when:

&nbsp; - designing or modifying RabbitMQ-based messaging

&nbsp; - creating producers or consumers

\- This file MUST be composed with:

&nbsp; - agents/security.md

&nbsp; - agents/observability.md

&nbsp; - agents/reliability.md

&nbsp; - agents/tests.md

\- Message format standards MUST be composed with:

&nbsp; - languages/json.md or languages/protobuf.md when applicable



\## Structure

\- Exchanges MUST be organized by routing responsibility.

\- Queues MUST be named by purpose and consumer intent.

\- Environments MUST be isolated by virtual hosts or naming.



\## File Decomposition

\- Exchanges:

&nbsp; - MUST define type and routing behavior.

\- Queues:

&nbsp; - MUST define durability, TTL, and dead-letter behavior.

\- Bindings:

&nbsp; - MUST define explicit routing relationships.

\- Producers:

&nbsp; - MUST define publish guarantees.

\- Consumers:

&nbsp; - MUST define acknowledgment and retry behavior.

\- Dead-letter queues:

&nbsp; - MUST capture failed messages with context.



\## Application Rules

\- Delivery rules:

&nbsp; - Acknowledge messages only after successful processing.

\- Retry rules:

&nbsp; - Retries MUST be bounded and observable.

\- Ordering rules:

&nbsp; - Ordering MUST NOT be assumed unless explicitly enforced.

\- Security rules:

&nbsp; - Encrypt connections.

&nbsp; - Apply per-user and per-vhost permissions.

\- Observability rules:

&nbsp; - Monitor queue depth, rates, and failures.

\- Verification rules:

&nbsp; - Message flows MUST be tested.

&nbsp; - Failure paths MUST be validated.

&nbsp; - Violations of these standards MUST be treated as defects.



