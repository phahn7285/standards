=========================================================

agents/incident-response.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# incident-response Standards



\## Standards

\- All incidents MUST be detected, classified, responded to, and resolved using a defined process.

\- Incident response MUST prioritize safety, data protection, and service restoration.

\- Incidents MUST have a clearly identified owner at all times.

\- Incident severity levels MUST be predefined and consistently applied.

\- Incident response actions MUST be logged and auditable.

\- Communication during incidents MUST be timely, accurate, and controlled.

\- Incident response MUST include containment, eradication, and recovery phases.

\- Root cause analysis MUST be performed for significant incidents.

\- Corrective and preventive actions MUST be tracked to completion.

\- Incident response MUST integrate with security, reliability, and observability standards.

\- Incident response procedures MUST be tested periodically.

\- Incident response MUST support regulatory and compliance obligations.

\- Incident response MUST include rollback and mitigation strategies.

\- Incident response MUST avoid ad-hoc or undocumented actions.

\- Incident response MUST preserve evidence when security incidents are suspected.



\## Scope

In scope:

\- Availability incidents

\- Security incidents

\- Data integrity incidents

\- Performance degradation incidents

\- Deployment and release failures

\- AI system failures and unsafe behavior incidents

\- Infrastructure and platform outages



Out of scope:

\- Feature requests and product defects

\- Planned maintenance activities

\- Routine operational tasks



Assumptions:

\- Monitoring and alerting systems are in place.

\- On-call or escalation paths are defined.

\- Incident management tooling exists.



\## Responsibilities

\- Incident commander:

&nbsp; - Own incident coordination and decision-making

&nbsp; - Ensure severity is assessed and updated

&nbsp; - Coordinate responders and communication



\- Responders:

&nbsp; - Investigate, contain, and remediate issues

&nbsp; - Provide accurate status updates

&nbsp; - Follow documented procedures



\- DevSecOps:

&nbsp; - Support mitigation, rollback, and infrastructure changes

&nbsp; - Preserve logs, metrics, and artifacts

&nbsp; - Assist with security containment when required



\- Security team:

&nbsp; - Lead response for security-related incidents

&nbsp; - Coordinate evidence handling and notifications



\- Reviewers:

&nbsp; - Conduct post-incident reviews

&nbsp; - Validate corrective actions



\## Usage

\- Apply this file when:

&nbsp; - an incident impacts availability, security, data integrity, or safety

&nbsp; - alerts indicate abnormal or unsafe behavior

&nbsp; - regulatory or compliance thresholds are crossed

\- This file MUST be composed with:

&nbsp; - agents/security.md

&nbsp; - agents/reliability.md

&nbsp; - agents/observability.md

&nbsp; - agents/devsecops.md

&nbsp; - agents/privacy.md when data exposure is suspected

&nbsp; - agents/ai-application.md when AI systems are involved



\## Structure

\- Incident response documentation SHOULD include:

&nbsp; - severity definitions

&nbsp; - escalation paths

&nbsp; - communication templates

&nbsp; - runbooks for common incident types

\- Incident artifacts MUST be stored in a centralized location.

\- Communication channels MUST be predefined.



\## File Decomposition

\- Severity definitions:

&nbsp; - MUST define criteria for each severity level.

&nbsp; - MUST define response time expectations.

\- Runbooks:

&nbsp; - MUST define detection signals and triggers.

&nbsp; - MUST define containment and recovery steps.

\- Communication plans:

&nbsp; - MUST define internal and external notification rules.

\- Post-incident reviews:

&nbsp; - MUST document timeline, impact, root cause, and actions.



\## Application Rules

\- Detection rules:

&nbsp; - Alerts MUST trigger incident evaluation.

&nbsp; - False positives MUST be documented and tuned.

\- Response rules:

&nbsp; - Actions MUST follow documented runbooks when available.

&nbsp; - Emergency changes MUST be logged and reviewed post-incident.

\- Communication rules:

&nbsp; - Status updates MUST be regular and factual.

&nbsp; - External communication MUST be approved.

\- Evidence rules:

&nbsp; - Logs and data MUST be preserved for security incidents.

\- Post-incident rules:

&nbsp; - Root cause analysis MUST be completed for significant incidents.

&nbsp; - Preventive actions MUST be implemented and tracked.

\- Verification rules:

&nbsp; - Incident handling effectiveness MUST be reviewed periodically.

&nbsp; - Gaps identified MUST result in standards or process updates.



