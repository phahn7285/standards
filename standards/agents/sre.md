=========================================================

agents/sre.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# sre Standards



\## Standards

\- Site reliability engineering MUST focus on system reliability, availability, and operability.

\- Reliability objectives MUST be defined, measured, and enforced.

\- Systems MUST define service level indicators and objectives.

\- Error budgets MUST be established and used to guide release and change decisions.

\- Automation MUST be preferred over manual operational work.

\- Operational toil MUST be measured and actively reduced.

\- Systems MUST be designed for safe operation and recovery.

\- Capacity planning MUST be proactive and data-driven.

\- On-call responsibilities MUST be sustainable and well-defined.

\- Incident response MUST align with agents/incident-response.md.

\- Observability MUST enable proactive detection and diagnosis.

\- Reliability trade-offs MUST be explicit and documented.

\- AI systems MUST define reliability and safety guardrails appropriate to non-deterministic behavior.

\- SRE practices MUST align with agents/reliability.md and agents/observability.md.



\## Scope

In scope:

\- Reliability engineering practices

\- Service level objectives and error budgets

\- Incident response participation

\- Capacity planning and scaling

\- Operational automation

\- Toil reduction

\- Release risk assessment

\- AI system operational reliability



Out of scope:

\- Product feature prioritization

\- UI or UX design decisions

\- Infrastructure provisioning details (agents/devsecops.md, platforms/\*)



Assumptions:

\- Systems operate continuously in production.

\- Failures and incidents are expected.

\- Operational excellence requires continuous improvement.



\## Responsibilities

\- SREs:

&nbsp; - Define and monitor reliability objectives

&nbsp; - Participate in incident response and postmortems

&nbsp; - Drive automation and toil reduction

&nbsp; - Advise on release risk and capacity



\- Application engineers:

&nbsp; - Design systems that meet reliability objectives

&nbsp; - Support SRE-led reliability improvements



\- DevSecOps:

&nbsp; - Provide infrastructure and tooling to support SRE practices



\- Reviewers:

&nbsp; - Validate reliability impact of changes

&nbsp; - Reject changes that violate reliability objectives



\## Usage

\- Apply this file when:

&nbsp; - operating production systems

&nbsp; - defining or modifying service level objectives

&nbsp; - assessing release risk

\- This file MUST be composed with:

&nbsp; - agents/reliability.md

&nbsp; - agents/observability.md

&nbsp; - agents/incident-response.md

&nbsp; - agents/performance.md

\- AI systems MUST also compose with:

&nbsp; - agents/ai-application.md

&nbsp; - ai/evaluation.md when applicable



\## Structure

\- Reliability artifacts SHOULD be organized by concern:

&nbsp; - slo/ for service level definitions

&nbsp; - runbooks/ for operational procedures

&nbsp; - capacity/ for capacity planning data

\- Operational documentation MUST be current and accessible.



\## File Decomposition

\- Service level definitions:

&nbsp; - MUST define indicators, objectives, and thresholds.

\- Error budgets:

&nbsp; - MUST define acceptable failure rates.

\- Runbooks:

&nbsp; - MUST define operational procedures and escalation paths.

\- Capacity plans:

&nbsp; - MUST define expected load and scaling strategies.



\## Application Rules

\- SLO rules:

&nbsp; - SLOs MUST reflect user-facing reliability.

&nbsp; - SLOs MUST be reviewed periodically.

\- Error budget rules:

&nbsp; - Error budgets MUST gate releases when exhausted.

\- Incident rules:

&nbsp; - Incidents MUST be analyzed for reliability improvements.

\- Toil rules:

&nbsp; - Manual repetitive work MUST be automated.

\- Capacity rules:

&nbsp; - Systems MUST be scaled before limits are reached.

\- AI reliability rules:

&nbsp; - AI outputs MUST be bounded and monitored.

&nbsp; - Fallback behavior MUST exist for failures.

\- Verification rules:

&nbsp; - Reliability practices MUST be reviewed regularly.

&nbsp; - Violations of these standards MUST be treated as defects.



