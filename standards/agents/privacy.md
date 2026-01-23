=========================================================

agents/privacy.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# privacy Standards



\## Standards

\- Privacy MUST be designed into systems from inception.

\- Personal and sensitive data MUST be minimized, protected, and governed.

\- Data collection MUST be limited to what is necessary for the stated purpose.

\- Data usage MUST align with documented purpose and consent where applicable.

\- Data classification MUST be explicit and enforced.

\- Privacy controls MUST be enforced consistently across environments.

\- Access to sensitive data MUST follow least privilege.

\- Sensitive data MUST be encrypted in transit and at rest.

\- Data retention MUST be explicitly defined and enforced.

\- Data deletion MUST be supported and verifiable.

\- Privacy requirements MUST be validated through testing and review.

\- Privacy violations MUST be treated as security incidents.

\- Privacy standards MUST align with agents/security.md and agents/incident-response.md.

\- AI systems MUST enforce privacy safeguards throughout data lifecycle.

\- Logs, metrics, and traces MUST NOT expose sensitive data.

\- Third-party data sharing MUST be explicitly approved and documented.

\- Cross-border data transfer MUST comply with applicable regulations.



\## Scope

In scope:

\- Personal data handling

\- Sensitive and regulated data (PII, PCI, PHI)

\- Data collection, storage, processing, and deletion

\- Data access and sharing controls

\- Privacy requirements for AI, ML, and data pipelines

\- Client-side and server-side data handling



Out of scope:

\- Security controls unrelated to data privacy (agents/security.md)

\- Business policy decisions beyond technical enforcement

\- Vendor contractual privacy terms



Assumptions:

\- Systems may process personal or regulated data.

\- Regulatory requirements may vary by jurisdiction.

\- Privacy requirements evolve over time.



\## Responsibilities

\- Application engineers:

&nbsp; - Implement privacy-preserving data handling

&nbsp; - Enforce data minimization and access controls

&nbsp; - Avoid logging or exposing sensitive data



\- Data and ML engineers:

&nbsp; - Ensure training and inference data complies with privacy rules

&nbsp; - Prevent data leakage and misuse



\- DevSecOps:

&nbsp; - Enforce encryption, access control, and retention policies

&nbsp; - Ensure privacy controls are applied in pipelines and infrastructure



\- Reviewers:

&nbsp; - Validate privacy compliance in changes

&nbsp; - Reject changes that introduce privacy risk



\- Security and compliance teams:

&nbsp; - Define privacy policies and thresholds

&nbsp; - Respond to privacy incidents



\## Usage

\- Apply this file when:

&nbsp; - collecting, storing, or processing personal or sensitive data

&nbsp; - integrating third-party data sources

&nbsp; - building AI or ML systems that process user data

\- This file MUST be composed with:

&nbsp; - agents/security.md

&nbsp; - agents/incident-response.md

&nbsp; - agents/tests.md

&nbsp; - agents/documentation.md

\- AI systems MUST also compose with:

&nbsp; - agents/ai-application.md

&nbsp; - ai/data-handling.md when applicable



\## Structure

\- Data handling SHOULD be organized by lifecycle stage:

&nbsp; - collection

&nbsp; - processing

&nbsp; - storage

&nbsp; - access

&nbsp; - retention

&nbsp; - deletion

\- Privacy controls SHOULD be centralized and reusable.

\- Environment-specific privacy configuration MUST be explicit.



\## File Decomposition

\- Data classification:

&nbsp; - MUST define categories such as public, internal, confidential, regulated.

\- Access controls:

&nbsp; - MUST enforce role-based or attribute-based access.

\- Encryption:

&nbsp; - MUST define encryption standards for data in transit and at rest.

\- Retention policies:

&nbsp; - MUST define retention periods and deletion mechanisms.

\- Audit logging:

&nbsp; - MUST capture access to sensitive data without exposing content.



\## Application Rules

\- Collection rules:

&nbsp; - Collect only data required for functionality.

&nbsp; - Avoid optional sensitive data collection.

\- Usage rules:

&nbsp; - Use data only for documented purposes.

\- Storage rules:

&nbsp; - Encrypt sensitive data.

&nbsp; - Separate sensitive and non-sensitive data where possible.

\- Access rules:

&nbsp; - Restrict access to sensitive data.

&nbsp; - Review access permissions regularly.

\- Retention rules:

&nbsp; - Enforce retention and deletion automatically.

\- Incident rules:

&nbsp; - Suspected privacy breaches MUST trigger incident response.

\- Verification rules:

&nbsp; - Privacy requirements MUST be tested and reviewed.

&nbsp; - Violations of these standards MUST be treated as defects.



