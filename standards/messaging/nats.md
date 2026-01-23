=========================================================

messaging/nats.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# nats Standards



\## Standards

\- NATS MUST be used for low-latency messaging and eventing where selected.

\- Subject naming MUST be explicit, hierarchical, and stable.

\- Subjects MUST represent intent, not consumers.

\- Wildcards MUST be used intentionally and sparingly.

\- Message payloads MUST be schema-defined and versioned.

\- Producers MUST handle publish errors explicitly.

\- Consumers MUST be idempotent and tolerate redelivery.

\- Delivery semantics MUST be selected intentionally.

\- At-least-once delivery MUST be assumed unless explicitly configured otherwise.

\- Exactly-once semantics MUST NOT be assumed unless explicitly validated.

\- JetStream MUST be used when durability, replay, or persistence is required.

\- Retention policies MUST be explicitly defined when using JetStream.

\- Stream and consumer configurations MUST be explicit and version-controlled.

\- Acknowledgements MUST be handled intentionally.

\- Message size limits MUST be respected.

\- Sensitive data MUST NOT be published unless explicitly governed and encrypted.

\- Dead-letter handling MUST be implemented where message loss is unacceptable.

\- Monitoring and alerting MUST be enabled for servers, streams, and consumers.

\- NATS usage MUST align with agents/security.md, agents/observability.md, and agents/reliability.md.



\## Scope

In scope:

\- NATS core messaging

\- Subject design and hierarchy

\- JetStream streams and consumers

\- Delivery guarantees and acknowledgements

\- Error handling and retries

\- Operational monitoring and reliability



Out of scope:

\- Application-specific business logic

\- UI consumption patterns

\- Infrastructure provisioning specifics (platforms/\*)



Assumptions:

\- NATS is deployed as a managed or self-hosted cluster.

\- Consumers may receive duplicate messages.

\- Low latency and simplicity are primary goals.



\## Responsibilities

\- Message producers:

&nbsp; - Publish schema-compliant messages

&nbsp; - Handle publish acknowledgements and errors



\- Message consumers:

&nbsp; - Process messages idempotently

&nbsp; - Handle retries and redelivery safely



\- Platform engineers:

&nbsp; - Manage NATS clusters, accounts, and permissions

&nbsp; - Enforce stream, retention, and security policies



\- Reviewers:

&nbsp; - Validate subject hierarchy and delivery semantics



\## Usage

\- Apply this file when:

&nbsp; - designing or modifying NATS-based messaging

&nbsp; - creating publishers or subscribers

\- This file MUST be composed with:

&nbsp; - agents/security.md

&nbsp; - agents/observability.md

&nbsp; - agents/reliability.md

&nbsp; - agents/tests.md

\- Schema standards MUST be composed with:

&nbsp; - languages/json.md or languages/protobuf.md when applicable



\## Structure

\- Subjects MUST follow a consistent hierarchy.

\- Accounts MUST define security and tenancy boundaries.

\- Streams MUST group related subjects when using JetStream.

\- Environments MUST be isolated by account or cluster.



\## File Decomposition

\- Subjects:

&nbsp; - MUST define intent and routing hierarchy.

\- Streams:

&nbsp; - MUST define retention, storage, and limits.

\- Consumers:

&nbsp; - MUST define delivery mode, acknowledgements, and retries.

\- Producers:

&nbsp; - MUST define publish guarantees.

\- Dead-letter handling:

&nbsp; - MUST capture failed messages with context when required.



\## Application Rules

\- Ordering rules:

&nbsp; - Ordering is not guaranteed unless explicitly configured.

\- Durability rules:

&nbsp; - Use JetStream when persistence or replay is required.

\- Failure rules:

&nbsp; - Consumers MUST tolerate duplicates.

\- Security rules:

&nbsp; - Encrypt connections.

&nbsp; - Apply per-account permissions.

\- Observability rules:

&nbsp; - Monitor message rates, latency, and failures.

\- Verification rules:

&nbsp; - Message contracts MUST be tested.

&nbsp; - Load characteristics MUST be validated.

&nbsp; - Violations of these standards MUST be treated as defects.



