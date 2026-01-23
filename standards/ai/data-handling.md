=========================================================

ai/data-handling.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# data-handling Standards



\## Standards

\- AI data handling MUST comply with privacy, security, and data governance requirements.

\- Data used for AI MUST be explicitly classified and approved.

\- Data collection MUST be minimized and purpose-limited.

\- Training, inference, and logging data MUST be handled distinctly.

\- User-provided data MUST NOT be used beyond its documented purpose.

\- Sensitive data MUST be protected and minimized throughout the AI lifecycle.

\- Data transformations MUST be deterministic where applicable.

\- Data retention MUST be explicitly defined and enforced.

\- Data deletion MUST be supported and verifiable.

\- Data provenance MUST be traceable.

\- AI data handling MUST be auditable.

\- Data handling MUST align with agents/privacy.md and agents/security.md.



\## Scope

In scope:

\- Data used for AI training

\- Data used for AI inference

\- Prompt inputs and outputs

\- Embeddings and derived representations

\- Logs and traces containing AI data

\- AI pipeline intermediate artifacts



Out of scope:

\- Non-AI application data handling (agents/privacy.md)

\- Infrastructure storage implementation details (platforms/\*)

\- Vendor internal data handling policies



Assumptions:

\- AI systems may process user-provided or sensitive data.

\- Data may be stored, transformed, and transmitted across systems.

\- Regulatory requirements may apply.



\## Responsibilities

\- Application engineers:

&nbsp; - Implement compliant AI data handling

&nbsp; - Enforce data minimization and purpose limitation

&nbsp; - Avoid leaking sensitive data



\- Data and ML engineers:

&nbsp; - Validate training and inference data sources

&nbsp; - Prevent data leakage and misuse



\- DevSecOps:

&nbsp; - Enforce storage, access, and retention controls

&nbsp; - Enable auditing and monitoring



\- Reviewers:

&nbsp; - Validate data handling compliance

&nbsp; - Reject unsafe or non-compliant changes



\## Usage

\- Apply this file when:

&nbsp; - collecting or processing data for AI purposes

&nbsp; - storing prompts, outputs, or embeddings

&nbsp; - integrating third-party AI services

\- This file MUST be composed with:

&nbsp; - agents/privacy.md

&nbsp; - agents/security.md

&nbsp; - agents/observability.md

&nbsp; - agents/tests.md

\- AI applications MUST also compose with:

&nbsp; - agents/ai-application.md



\## Structure

\- AI data handling SHOULD be organized by lifecycle stage:

&nbsp; - input collection

&nbsp; - preprocessing

&nbsp; - inference or training

&nbsp; - storage

&nbsp; - logging

&nbsp; - deletion

\- Controls SHOULD be centralized and reusable.



\## File Decomposition

\- Input handling:

&nbsp; - MUST validate and sanitize AI inputs.

\- Preprocessing:

&nbsp; - MUST remove unnecessary or sensitive fields.

\- Storage:

&nbsp; - MUST encrypt and restrict access.

\- Logging:

&nbsp; - MUST redact or exclude sensitive content.

\- Deletion:

&nbsp; - MUST support user-initiated and policy-driven deletion.



\## Application Rules

\- Minimization rules:

&nbsp; - Collect only data required for AI functionality.

\- Purpose rules:

&nbsp; - Data MUST NOT be reused beyond documented purposes.

\- Retention rules:

&nbsp; - Retention periods MUST be enforced automatically.

\- Access rules:

&nbsp; - Access to AI data MUST be restricted and audited.

\- Logging rules:

&nbsp; - Prompts and outputs MUST NOT be logged by default.

\- Verification rules:

&nbsp; - AI data handling MUST be tested and reviewed.

&nbsp; - Violations of these standards MUST be treated as defects.



