=========================================================

agents/observability.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# observability Standards



\## Standards

\- All systems MUST be observable by design.

\- Observability MUST include logs, metrics, and traces.

\- Observability data MUST enable rapid detection, diagnosis, and resolution of issues.

\- Observability MUST be consistent across services and components.

\- All externally reachable requests MUST be traceable end-to-end.

\- Logs MUST be structured and machine-parseable.

\- Metrics MUST be well-defined, stable, and meaningful.

\- Traces MUST propagate context across process and network boundaries.

\- Observability MUST support correlation between logs, metrics, and traces.

\- Observability data MUST avoid leaking secrets or sensitive information.

\- Sampling MUST be explicit and controlled.

\- Observability instrumentation MUST have minimal performance impact.

\- Observability MUST support alerting on service health and safety conditions.

\- Observability MUST support auditing and forensic analysis when required.

\- Observability MUST align with agents/security.md and agents/privacy.md.

\- Observability MUST support AI and ML monitoring when applicable.



\## Scope

In scope:

\- Application logging

\- Metrics collection and exposition

\- Distributed tracing

\- Health checks and readiness probes

\- Alerting and notifications

\- Dashboards and visualization

\- AI, ML, and data pipeline observability

\- Client-side telemetry when applicable



Out of scope:

\- Specific monitoring vendor configuration (platforms/\*)

\- Incident response procedures (agents/incident-response.md)

\- Performance optimization techniques (agents/performance.md)



Assumptions:

\- Observability tooling is available and integrated.

\- Systems may be distributed and asynchronous.

\- Systems may process sensitive or regulated data.



\## Responsibilities

\- Application engineers:

&nbsp; - Instrument code with logs, metrics, and traces

&nbsp; - Ensure observability coverage for critical paths

&nbsp; - Avoid logging sensitive data



\- DevSecOps:

&nbsp; - Operate and configure observability infrastructure

&nbsp; - Ensure data retention, access control, and reliability

&nbsp; - Integrate alerting with incident response



\- Reviewers:

&nbsp; - Verify observability requirements are met

&nbsp; - Reject changes that reduce visibility or safety



\## Usage

\- Apply this file when:

&nbsp; - building or modifying application behavior

&nbsp; - introducing new components or integrations

&nbsp; - changing performance characteristics or error handling

\- This file MUST be composed with:

&nbsp; - agents/security.md

&nbsp; - agents/privacy.md

&nbsp; - agents/reliability.md

&nbsp; - agents/incident-response.md

\- AI systems MUST also compose with:

&nbsp; - agents/ai-application.md

&nbsp; - ai/evaluation.md when applicable



\## Structure

\- Observability instrumentation SHOULD be centralized or consistently abstracted.

\- Logging, metrics, and tracing helpers SHOULD be reusable.

\- Configuration MUST be environment-specific and externalized.

\- Health endpoints MUST be clearly defined.



\## File Decomposition

\- Logging:

&nbsp; - MUST produce structured, machine-readable logs.

&nbsp; - MUST include correlation identifiers.

\- Metrics:

&nbsp; - MUST define service-level indicators and key metrics.

&nbsp; - MUST include counters, gauges, and histograms as appropriate.

\- Tracing:

&nbsp; - MUST propagate context across boundaries.

&nbsp; - MUST capture critical spans and dependencies.

\- Alerting:

&nbsp; - MUST define thresholds and conditions.

&nbsp; - MUST avoid excessive noise.



\## Application Rules

\- Logging rules:

&nbsp; - Logs MUST include timestamp, severity, service, and correlation ID.

&nbsp; - Logs MUST NOT include secrets, credentials, or raw sensitive data.

\- Metrics rules:

&nbsp; - Metrics MUST be named consistently.

&nbsp; - Metrics MUST reflect user-impacting behavior.

\- Tracing rules:

&nbsp; - Traces MUST cover request lifecycle and external calls.

\- Alerting rules:

&nbsp; - Alerts MUST indicate impact and urgency.

&nbsp; - Alerts MUST integrate with incident response.

\- Verification rules:

&nbsp; - Observability coverage MUST be reviewed for all changes.

&nbsp; - Missing or inadequate observability MUST be treated as a defect.



