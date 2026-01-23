=========================================================

agents/devsecops.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# devsecops Standards



\## Standards

\- Security MUST be integrated into the full delivery lifecycle.

\- Automation MUST be preferred over manual processes.

\- Infrastructure, pipelines, and security controls MUST be defined as code.

\- Secrets MUST be centrally managed and MUST NOT be stored in code or repositories.

\- Least privilege MUST be enforced for identities, services, and pipelines.

\- Environments MUST be isolated and explicitly defined.

\- Supply chain security MUST be enforced across build, test, and deploy stages.

\- Infrastructure changes MUST be review-gated and auditable.

\- Security checks MUST run automatically and MUST fail builds on policy violations.

\- Vulnerability management MUST be continuous and prioritized by risk.

\- Runtime security controls MUST be enabled and monitored.

\- Configuration drift MUST be detected and corrected.

\- Incident response capabilities MUST be available for security events.

\- Compliance requirements MUST be enforced consistently across environments.

\- DevSecOps controls MUST align with agents/security.md and agents/privacy.md.



\## Scope

In scope:

\- CI and CD security controls

\- Infrastructure as code security

\- Secrets management

\- Identity and access management

\- Supply chain security

\- Vulnerability scanning and remediation

\- Runtime security monitoring

\- Environment isolation and configuration

\- Security incident response enablement



Out of scope:

\- Application business logic (agents/backend.md, agents/frontend.md)

\- Language-specific coding rules (languages/\*)

\- Database engine internals (databases/\*)

\- Messaging broker internals (messaging/\*)



Assumptions:

\- Pipelines and infrastructure are automated.

\- Security tooling is available and integrated.

\- Systems may operate in regulated environments.



\## Responsibilities

\- DevSecOps engineers:

&nbsp; - Design and maintain secure pipelines and infrastructure

&nbsp; - Integrate security tooling into automation

&nbsp; - Manage secrets and access controls

&nbsp; - Monitor and respond to security events



\- Application engineers:

&nbsp; - Follow secure development practices

&nbsp; - Address security findings promptly

&nbsp; - Avoid introducing insecure configurations



\- Reviewers:

&nbsp; - Validate security posture of changes

&nbsp; - Reject changes that weaken security controls



\- Security team:

&nbsp; - Define security policies and thresholds

&nbsp; - Review high-risk changes and incidents



\## Usage

\- Apply this file when:

&nbsp; - building or modifying CI or CD pipelines

&nbsp; - provisioning or modifying infrastructure

&nbsp; - configuring secrets, access, or security tooling

\- This file MUST be composed with:

&nbsp; - agents/security.md

&nbsp; - agents/privacy.md

&nbsp; - agents/ci-cd.md

&nbsp; - agents/dependencies.md

&nbsp; - agents/repo-hygiene.md

&nbsp; - agents/incident-response.md

\- Platform-specific controls MUST be composed from platforms/\* standards files.



\## Structure

\- Security and delivery configuration SHOULD be organized by concern:

&nbsp; - ci/ or pipelines/ for CI and CD definitions

&nbsp; - infra/ or terraform/ for infrastructure as code

&nbsp; - security/ for policy and configuration artifacts

&nbsp; - secrets/ for references to secret management systems

\- Environment-specific configuration MUST be separated and explicit.



\## File Decomposition

\- Pipeline security:

&nbsp; - MUST include static analysis, dependency scanning, and policy checks.

&nbsp; - MUST validate artifacts before deployment.

\- Infrastructure security:

&nbsp; - MUST enforce secure defaults.

&nbsp; - MUST validate configurations against policy.

\- Secrets management:

&nbsp; - MUST integrate with approved secret stores.

&nbsp; - MUST rotate secrets regularly.

\- Runtime security:

&nbsp; - MUST monitor for anomalous behavior.

&nbsp; - MUST enforce network and execution restrictions.



\## Application Rules

\- Access control rules:

&nbsp; - Identities MUST be unique and traceable.

&nbsp; - Permissions MUST be minimal and reviewed regularly.

\- Secrets rules:

&nbsp; - Secrets MUST NOT appear in logs or artifacts.

&nbsp; - Secrets MUST be injected at runtime.

\- Pipeline rules:

&nbsp; - Security checks MUST NOT be bypassed.

&nbsp; - Manual overrides MUST be explicitly approved and logged.

\- Infrastructure rules:

&nbsp; - Drift detection MUST be enabled.

&nbsp; - Changes MUST be reversible.

\- Incident rules:

&nbsp; - Security incidents MUST follow agents/incident-response.md.

&nbsp; - Findings MUST result in corrective actions.

\- Verification rules:

&nbsp; - All DevSecOps changes MUST pass automated validation.

&nbsp; - Violations of these standards MUST be treated as defects.



