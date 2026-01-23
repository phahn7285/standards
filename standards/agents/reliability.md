=========================================================

agents/reliability.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# reliability Standards



\## Standards

\- Systems MUST be designed to operate correctly under failure conditions.

\- Reliability requirements MUST be explicit, measurable, and enforced.

\- Systems MUST define and meet availability and durability targets.

\- Failure MUST be expected, detected, and handled gracefully.

\- Systems MUST avoid single points of failure where feasible.

\- Components MUST degrade gracefully under partial failure.

\- Recovery MUST be automated where possible.

\- Reliability controls MUST not rely on manual intervention for normal failure scenarios.

\- Systems MUST support safe deployment, rollback, and recovery.

\- State changes MUST be durable and consistent.

\- External dependencies MUST be isolated and protected against cascading failures.

\- Timeouts, retries, and backoff MUST be explicitly defined.

\- Idempotency MUST be enforced for retryable operations.

\- Reliability characteristics MUST be observable and testable.

\- AI systems MUST define reliability and safety bounds for non-deterministic behavior.

\- Reliability standards MUST align with agents/performance.md and agents/observability.md.



\## Scope

In scope:

\- Availability and uptime

\- Fault tolerance and isolation

\- Retry, timeout, and backoff strategies

\- Graceful degradation

\- Recovery and rollback mechanisms

\- State durability and consistency

\- Dependency failure handling

\- Reliability testing and validation

\- AI system robustness



Out of scope:

\- Infrastructure provisioning specifics (agents/devsecops.md, platforms/\*)

\- Vendor-specific availability guarantees (platforms/\*)

\- Performance optimization techniques (agents/performance.md)



Assumptions:

\- Failures will occur in production environments.

\- Systems may depend on external services.

\- Reliability impacts user trust and safety.



\## Responsibilities

\- Application engineers:

&nbsp; - Design and implement fault-tolerant systems

&nbsp; - Handle failures explicitly

&nbsp; - Validate reliability characteristics through testing



\- Reviewers:

&nbsp; - Evaluate reliability impact of changes

&nbsp; - Reject changes that introduce fragility or unbounded failure modes



\- DevSecOps:

&nbsp; - Provide infrastructure and tooling to support reliability

&nbsp; - Enable safe deployment and rollback mechanisms



\## Usage

\- Apply this file when:

&nbsp; - building or modifying systems that must be highly available

&nbsp; - integrating external dependencies

&nbsp; - changing state management or deployment strategies

\- This file MUST be composed with:

&nbsp; - agents/observability.md

&nbsp; - agents/performance.md

&nbsp; - agents/tests.md

&nbsp; - agents/backend.md or agents/frontend.md as applicable

\- AI systems MUST also compose with:

&nbsp; - agents/ai-application.md

&nbsp; - ai/evaluation.md when applicable



\## Structure

\- Reliability concerns SHOULD be addressed at multiple layers:

&nbsp; - application logic

&nbsp; - integration boundaries

&nbsp; - data persistence

&nbsp; - deployment and runtime

\- Reliability mechanisms SHOULD be centralized or consistently abstracted.



\## File Decomposition

\- Failure handling:

&nbsp; - MUST define behavior for dependency outages.

\- Retry and timeout logic:

&nbsp; - MUST be explicit and bounded.

\- State management:

&nbsp; - MUST ensure consistency and durability.

\- Deployment safety:

&nbsp; - MUST support rollback and recovery.



\## Application Rules

\- Failure rules:

&nbsp; - All external calls MUST have timeouts.

&nbsp; - Retries MUST be bounded and use backoff.

\- Isolation rules:

&nbsp; - Failures MUST be contained and not cascade.

\- Deployment rules:

&nbsp; - Releases MUST be reversible.

&nbsp; - Unsafe changes MUST be gated.

\- Testing rules:

&nbsp; - Failure scenarios MUST be tested.

&nbsp; - Chaos or fault injection SHOULD be used where appropriate.

\- AI reliability rules:

&nbsp; - Non-deterministic outputs MUST be bounded.

&nbsp; - Fallback behavior MUST exist.

\- Verification rules:

&nbsp; - Reliability requirements MUST be validated before release.

&nbsp; - Violations of these standards MUST be treated as defects.



