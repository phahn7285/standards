=========================================================

messaging/activemq.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# activemq Standards



\## Standards

\- Apache ActiveMQ MUST be used for JMS-compliant messaging and broker-based queue or topic patterns where selected.

\- Destination types MUST be chosen intentionally:

&nbsp; - Queues for point-to-point messaging

&nbsp; - Topics for publish-subscribe messaging

\- Delivery mode MUST be explicit (persistent vs non-persistent).

\- Message acknowledgment mode MUST be explicit and appropriate for reliability needs.

\- Consumers MUST be idempotent and tolerate redelivery.

\- Transactions MUST be used intentionally for atomic send or receive when required.

\- Prefetch limits MUST be configured intentionally.

\- Dead-letter queues MUST be configured and monitored.

\- Retry behavior MUST be explicit and bounded.

\- Message selectors MUST be used sparingly and documented.

\- Message payloads MUST be schema-defined and versioned.

\- Large messages MUST be handled intentionally and within broker limits.

\- Ordering MUST NOT be assumed across consumers unless explicitly enforced.

\- Sensitive data MUST NOT be transmitted unless explicitly governed and encrypted.

\- Broker authentication and authorization MUST be enabled.

\- Monitoring and alerting MUST be enabled for brokers, destinations, and consumers.

\- ActiveMQ usage MUST align with agents/security.md, agents/observability.md, and agents/reliability.md.



\## Scope

In scope:

\- ActiveMQ queues and topics

\- JMS producer and consumer behavior

\- Acknowledgment and transaction semantics

\- Dead-letter handling and retries

\- Broker configuration affecting messaging semantics

\- Operational monitoring and reliability



Out of scope:

\- Application-specific business logic

\- UI consumption patterns

\- Infrastructure provisioning specifics (platforms/\*)

\- Non-JMS messaging systems



Assumptions:

\- ActiveMQ brokers are managed and monitored.

\- Message redelivery may occur.

\- JMS semantics are required or preferred.



\## Responsibilities

\- Message producers:

&nbsp; - Publish schema-compliant messages

&nbsp; - Configure delivery mode and transactions explicitly



\- Message consumers:

&nbsp; - Acknowledge messages explicitly

&nbsp; - Handle redelivery and failures safely

&nbsp; - Ensure idempotent processing



\- Platform engineers:

&nbsp; - Configure brokers, persistence, and security

&nbsp; - Monitor performance, storage, and failures



\- Reviewers:

&nbsp; - Validate destination selection, acknowledgment modes, and retry behavior



\## Usage

\- Apply this file when:

&nbsp; - designing or modifying ActiveMQ-based messaging

&nbsp; - creating JMS producers or consumers

\- This file MUST be composed with:

&nbsp; - agents/security.md

&nbsp; - agents/observability.md

&nbsp; - agents/reliability.md

&nbsp; - agents/tests.md

\- Message format standards MUST be composed with:

&nbsp; - languages/json.md or languages/protobuf.md when applicable



\## Structure

\- Queues MUST represent consumer responsibility.

\- Topics MUST represent event intent.

\- Environments MUST be isolated by broker, virtual destination, or naming.

\- Dead-letter destinations MUST be clearly named and discoverable.



\## File Decomposition

\- Destinations:

&nbsp; - MUST define type, durability, and retention behavior.

\- Producers:

&nbsp; - MUST define delivery mode, transactions, and error handling.

\- Consumers:

&nbsp; - MUST define acknowledgment mode and retry behavior.

\- Dead-letter queues:

&nbsp; - MUST capture failed messages with context.

\- Broker configuration:

&nbsp; - MUST define persistence, limits, and security.



\## Application Rules

\- Delivery rules:

&nbsp; - Acknowledge messages only after successful processing.

\- Retry rules:

&nbsp; - Retries MUST be bounded and observable.

\- Ordering rules:

&nbsp; - Ordering MUST NOT be assumed unless explicitly enforced.

\- Security rules:

&nbsp; - Enable authentication and authorization.

&nbsp; - Encrypt connections where supported.

\- Observability rules:

&nbsp; - Monitor queue depth, consumer lag, and broker health.

\- Verification rules:

&nbsp; - Message flows MUST be tested.

&nbsp; - Failure and redelivery paths MUST be validated.

&nbsp; - Violations of these standards MUST be treated as defects.



