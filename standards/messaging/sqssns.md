=========================================================

messaging/sqssns.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# sqssns Standards



\## Standards

\- Amazon SQS and SNS MUST be used for managed, cloud-native messaging where selected.

\- SQS MUST be used for point-to-point, queue-based messaging and work distribution.

\- SNS MUST be used for pub-sub fanout and event notifications.

\- Queue and topic names MUST be explicit, stable, and environment-aware.

\- Message payloads MUST be schema-defined and versioned.

\- Producers MUST handle publish failures explicitly.

\- Consumers MUST be idempotent and tolerate redelivery.

\- At-least-once delivery MUST be assumed.

\- Exactly-once semantics MUST NOT be assumed.

\- Message visibility timeout MUST be configured intentionally.

\- Long polling MUST be enabled for SQS consumers.

\- Dead-letter queues MUST be configured for failure scenarios.

\- Retry behavior MUST be explicit and bounded.

\- FIFO queues MUST be used only when ordering or deduplication is required.

\- Message attributes MUST be used intentionally and kept minimal.

\- Sensitive data MUST NOT be published unless explicitly governed and encrypted.

\- Encryption at rest and in transit MUST be enabled.

\- IAM policies MUST follow least privilege.

\- Monitoring and alerting MUST be enabled for queues, topics, and subscriptions.

\- sqssns usage MUST align with agents/security.md, agents/observability.md, and agents/reliability.md.



\## Scope

In scope:

\- SQS queues and SNS topics

\- Message publishing and consumption

\- Delivery guarantees and retries

\- Dead-letter handling

\- Fanout patterns using SNS to SQS

\- Operational monitoring and reliability



Out of scope:

\- Application-specific business logic

\- UI consumption patterns

\- Non-AWS messaging systems

\- Infrastructure provisioning specifics beyond messaging configuration



Assumptions:

\- AWS-managed services are used.

\- Messages may be delivered more than once.

\- Failures and retries are expected.



\## Responsibilities

\- Message producers:

&nbsp; - Publish schema-compliant messages

&nbsp; - Handle publish errors and retries explicitly



\- Message consumers:

&nbsp; - Process messages idempotently

&nbsp; - Handle retries, visibility timeouts, and failures safely



\- Platform engineers:

&nbsp; - Manage queue and topic configuration

&nbsp; - Enforce encryption, IAM, and retention policies



\- Reviewers:

&nbsp; - Validate queue, topic, and subscription design



\## Usage

\- Apply this file when:

&nbsp; - designing or modifying SQS or SNS-based messaging

&nbsp; - creating producers, consumers, or fanout patterns

\- This file MUST be composed with:

&nbsp; - agents/security.md

&nbsp; - agents/observability.md

&nbsp; - agents/reliability.md

&nbsp; - agents/tests.md

\- Schema standards MUST be composed with:

&nbsp; - languages/json.md or languages/protobuf.md when applicable

\- Platform standards MUST be composed with:

&nbsp; - platforms/aws.md when applicable



\## Structure

\- SNS topics MUST represent event intent.

\- SQS queues MUST represent consumer responsibility.

\- Fanout MUST be implemented using SNS subscriptions to SQS.

\- Environments MUST be isolated by naming or account boundaries.



\## File Decomposition

\- Topics:

&nbsp; - MUST define purpose and subscription model.

\- Queues:

&nbsp; - MUST define visibility timeout, retention, and DLQ behavior.

\- Subscriptions:

&nbsp; - MUST define filtering and delivery guarantees.

\- Producers:

&nbsp; - MUST define publish and retry behavior.

\- Consumers:

&nbsp; - MUST define polling, processing, and acknowledgment behavior.

\- Dead-letter queues:

&nbsp; - MUST capture failed messages with context.



\## Application Rules

\- Delivery rules:

&nbsp; - Consumers MUST acknowledge messages only after successful processing.

\- Retry rules:

&nbsp; - Retries MUST be bounded and observable.

\- Ordering rules:

&nbsp; - Ordering MUST NOT be assumed unless FIFO queues are used.

\- Security rules:

&nbsp; - Use IAM roles with least privilege.

&nbsp; - Enable encryption for all queues and topics.

\- Observability rules:

&nbsp; - Monitor queue depth, age of oldest message, and failure rates.

\- Verification rules:

&nbsp; - Message flows MUST be tested.

&nbsp; - Failure and retry paths MUST be validated.

&nbsp; - Violations of these standards MUST be treated as defects.



