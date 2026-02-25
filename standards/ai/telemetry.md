=========================================================

ai/telemetry.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# telemetry Standards



\## Standards

\- AI systems MUST emit telemetry for observability.

\- Telemetry MUST capture latency, errors, and usage.

\- Telemetry MUST support evaluation and auditing.

\- Telemetry MUST avoid sensitive data leakage.

\- Telemetry schemas MUST be stable and versioned.

\- Telemetry collection MUST be configurable.

\- Telemetry MUST integrate with observability systems.



\## Scope

In scope:

\- Model inference telemetry

\- Prompt and response metadata

\- Performance and reliability metrics



Out of scope:

\- Business analytics dashboards



Assumptions:

\- AI systems require monitoring.

\- Feedback loops improve quality.



\## Responsibilities

\- AI engineers:

&nbsp; - Instrument telemetry



\- Platform engineers:

&nbsp; - Collect and store telemetry



\## Usage

\- Apply this file when:

&nbsp; - deploying AI or LLM-backed systems

\- This file MUST be composed with:

&nbsp; - agents/observability.md

&nbsp; - ai/evaluation.md

&nbsp; - agents/security.md



\## Structure

\- Telemetry MUST be structured.

\- Sampling MUST be configurable.



\## File Decomposition

\- Metrics:

&nbsp; - MUST define performance signals.

\- Logs:

&nbsp; - MUST define inference context.



\## Application Rules

\- Telemetry MUST be enabled by default.

\- Gaps MUST be remediated.

\- Violations MUST be treated as defects.



