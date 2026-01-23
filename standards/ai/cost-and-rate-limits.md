=========================================================

ai/cost-and-rate-limits.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# cost-and-rate-limits Standards



\## Standards

\- AI usage MUST have explicit cost controls and rate limits.

\- Cost budgets MUST be defined, enforced, and monitored.

\- Rate limits MUST protect upstream providers and downstream systems.

\- Cost and rate limits MUST fail safely and predictably.

\- Usage limits MUST be enforced centrally, not only at the client.

\- Cost attribution MUST be traceable to application, feature, or user.

\- Burst usage MUST be bounded and controlled.

\- Long-running or unbounded AI operations MUST be prohibited.

\- Cost and rate limit configuration MUST be externalized.

\- Cost and rate limit enforcement MUST be observable.

\- AI usage MUST degrade gracefully when limits are reached.

\- Limits MUST be aligned with agents/performance.md and agents/reliability.md.

\- Cost controls MUST NOT compromise security or privacy guarantees.



\## Scope

In scope:

\- LLM token usage limits

\- API request rate limiting

\- Cost budgeting and quotas

\- Per-user, per-tenant, and per-feature limits

\- AI pipeline and batch processing limits

\- Inference and embedding cost controls



Out of scope:

\- Vendor billing configuration outside application control

\- General infrastructure cost management

\- Non-AI service rate limiting



Assumptions:

\- AI services may be usage-billed.

\- Usage may vary significantly by user or feature.

\- Cost overruns pose operational and business risk.



\## Responsibilities

\- Application engineers:

&nbsp; - Implement cost and rate limit enforcement

&nbsp; - Handle limit breaches gracefully

&nbsp; - Ensure observability for usage and spend



\- DevSecOps:

&nbsp; - Configure global quotas and alerts

&nbsp; - Integrate cost monitoring into platforms and pipelines



\- Reviewers:

&nbsp; - Validate cost impact of AI changes

&nbsp; - Reject changes that introduce unbounded usage



\## Usage

\- Apply this file when:

&nbsp; - integrating any AI or LLM service

&nbsp; - enabling user-driven or automated AI execution

&nbsp; - processing data at scale with AI

\- This file MUST be composed with:

&nbsp; - agents/ai-application.md

&nbsp; - agents/observability.md

&nbsp; - agents/reliability.md

&nbsp; - agents/security.md

&nbsp; - agents/privacy.md when data is user-derived



\## Structure

\- Cost and rate limiting SHOULD be centralized.

\- Configuration MUST be environment-specific.

\- Defaults MUST be conservative.



\## File Decomposition

\- Cost budgeting:

&nbsp; - MUST define monthly, daily, and per-operation limits.

\- Rate limiting:

&nbsp; - MUST define requests per time window.

\- Attribution:

&nbsp; - MUST tag usage with application and user identifiers.

\- Enforcement:

&nbsp; - MUST block or degrade usage when limits are exceeded.



\## Application Rules

\- Budget rules:

&nbsp; - AI usage MUST stop or degrade when budgets are exceeded.

\- Rate rules:

&nbsp; - Excess requests MUST be rejected or delayed predictably.

\- Graceful degradation rules:

&nbsp; - User-facing errors MUST be clear and actionable.

\- Monitoring rules:

&nbsp; - Usage and spend MUST be logged and alerted on.

\- Verification rules:

&nbsp; - Cost and rate limits MUST be tested.

&nbsp; - Violations of these standards MUST be treated as defects.



