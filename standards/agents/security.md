=========================================================

agents/security.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# security Standards



\## Standards

\- Security MUST be designed into systems from inception.

\- All systems MUST follow a defense-in-depth approach.

\- All inputs MUST be treated as untrusted and validated.

\- Authentication MUST be required for all protected resources.

\- Authorization MUST be enforced for every operation.

\- Least privilege MUST be applied to users, services, and pipelines.

\- Secrets MUST be managed securely and MUST NOT be stored in code or repositories.

\- Sensitive data MUST be protected in transit and at rest.

\- Security controls MUST be automated and consistently enforced.

\- Security failures MUST fail closed, not open.

\- External dependencies MUST be assessed for security risk.

\- Security events MUST be detectable and auditable.

\- Security testing MUST be part of the development lifecycle.

\- Security requirements MUST align with privacy and regulatory obligations.

\- AI systems MUST include safeguards against misuse, abuse, and unsafe behavior.

\- Security posture MUST be continuously monitored and improved.



\## Scope

In scope:

\- Authentication and authorization mechanisms

\- Secrets and credential management

\- Input validation and output encoding

\- Secure communication and encryption

\- Dependency and supply chain security

\- Infrastructure and pipeline security controls

\- Application-level security controls

\- AI system security considerations



Out of scope:

\- Business policy decisions beyond technical enforcement

\- Vendor-specific security implementations (platforms/\*)

\- Physical security controls



Assumptions:

\- Systems may be exposed to untrusted networks and users.

\- Threats evolve over time.

\- Security requirements vary by environment and data sensitivity.



\## Responsibilities

\- Application engineers:

&nbsp; - Implement secure coding practices

&nbsp; - Validate inputs and enforce authorization

&nbsp; - Avoid exposing sensitive data



\- DevSecOps:

&nbsp; - Implement and maintain security tooling and controls

&nbsp; - Manage secrets and access securely

&nbsp; - Monitor and respond to security events



\- Reviewers:

&nbsp; - Validate security implications of changes

&nbsp; - Reject changes that introduce security risk



\- Security team:

&nbsp; - Define security policies and thresholds

&nbsp; - Lead response to security incidents



\## Usage

\- Apply this file when:

&nbsp; - building or modifying any system component

&nbsp; - handling authentication, authorization, or secrets

&nbsp; - integrating external services or dependencies

\- This file MUST be composed with:

&nbsp; - agents/privacy.md

&nbsp; - agents/tests.md

&nbsp; - agents/code-review.md

&nbsp; - agents/observability.md

&nbsp; - agents/incident-response.md

\- AI systems MUST also compose with:

&nbsp; - agents/ai-application.md

&nbsp; - ai/guardrails.md when applicable



\## Structure

\- Security controls SHOULD be organized by concern:

&nbsp; - identity and access

&nbsp; - secrets management

&nbsp; - network security

&nbsp; - application security

&nbsp; - monitoring and response

\- Security configuration MUST be environment-specific and externalized.



\## File Decomposition

\- Authentication:

&nbsp; - MUST define supported mechanisms and flows.

\- Authorization:

&nbsp; - MUST define roles, permissions, and enforcement points.

\- Secrets management:

&nbsp; - MUST define storage, access, and rotation mechanisms.

\- Encryption:

&nbsp; - MUST define standards for data in transit and at rest.

\- Monitoring:

&nbsp; - MUST define detection and alerting for security events.



\## Application Rules

\- Input handling rules:

&nbsp; - All inputs MUST be validated at boundaries.

&nbsp; - Outputs MUST be encoded appropriately.

\- Access control rules:

&nbsp; - Authorization MUST be checked on every protected operation.

\- Secrets rules:

&nbsp; - Secrets MUST NOT be logged or exposed.

\- Dependency rules:

&nbsp; - Known vulnerable dependencies MUST NOT be used.

\- Incident rules:

&nbsp; - Security incidents MUST follow agents/incident-response.md.

\- AI security rules:

&nbsp; - AI inputs and outputs MUST be bounded and validated.

&nbsp; - Abuse and misuse scenarios MUST be considered.

\- Verification rules:

&nbsp; - Security requirements MUST be tested and reviewed.

&nbsp; - Violations of these standards MUST be treated as defects.



