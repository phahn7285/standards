=========================================================

ai/model-ops.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# model-ops Standards



\## Standards

\- AI models MUST be versioned, immutable once released, and traceable.

\- Model lifecycle stages MUST be explicitly defined and enforced.

\- Model deployment MUST be automated and reversible.

\- Model artifacts MUST be stored securely and access-controlled.

\- Model configuration MUST be externalized and environment-specific.

\- Model promotion MUST be gated by evaluation results.

\- Rollback to a previous model version MUST be supported.

\- Model behavior MUST be observable in production.

\- Model drift MUST be monitored and addressed.

\- Model failures MUST degrade safely.

\- Model dependencies MUST be explicit and governed.

\- Model operations MUST align with agents/reliability.md and agents/observability.md.

\- Model operations MUST align with security and privacy requirements.

\- LLM and non-LLM models MUST follow the same lifecycle discipline.



\## Scope

In scope:

\- Model versioning and registry

\- Model deployment and rollback

\- Model promotion and approval workflows

\- Model monitoring and drift detection

\- Model configuration and secrets handling

\- Model artifact storage and access

\- Operational management of models



Out of scope:

\- Model training logic (agents/data-ml.md)

\- Prompt engineering (ai/prompts.md)

\- Application orchestration logic (agents/ai-application.md)

\- Vendor internal model management systems



Assumptions:

\- Models may be deployed independently of application code.

\- Multiple model versions may coexist.

\- Model behavior may change over time due to data drift.



\## Responsibilities

\- ML and AI engineers:

&nbsp; - Package and version models correctly

&nbsp; - Define deployment and rollback strategies

&nbsp; - Monitor model behavior and drift



\- DevSecOps:

&nbsp; - Maintain model registries and deployment pipelines

&nbsp; - Enforce access controls and security policies

&nbsp; - Enable observability and alerts



\- Reviewers:

&nbsp; - Validate model promotion criteria

&nbsp; - Reject deployments that bypass evaluation or safety checks



\## Usage

\- Apply this file when:

&nbsp; - deploying or updating AI models

&nbsp; - managing model versions and lifecycle

&nbsp; - operating models in production

\- This file MUST be composed with:

&nbsp; - agents/ai-application.md

&nbsp; - agents/reliability.md

&nbsp; - agents/observability.md

&nbsp; - agents/security.md

&nbsp; - agents/privacy.md

\- Evaluation standards MUST be composed from:

&nbsp; - ai/evaluation.md



\## Structure

\- Model operations SHOULD be organized by lifecycle stage:

&nbsp; - registry/

&nbsp; - deployment/

&nbsp; - monitoring/

&nbsp; - rollback/

\- Configuration MUST be externalized and environment-aware.



\## File Decomposition

\- Registry:

&nbsp; - MUST store versioned, immutable model artifacts.

\- Deployment:

&nbsp; - MUST define automated rollout and rollback.

\- Monitoring:

&nbsp; - MUST capture model health, latency, and errors.

\- Drift detection:

&nbsp; - MUST monitor input and output distribution changes.

\- Configuration:

&nbsp; - MUST define model-specific parameters and limits.



\## Application Rules

\- Versioning rules:

&nbsp; - Model versions MUST be unique and immutable.

\- Promotion rules:

&nbsp; - Models MUST NOT be promoted without passing evaluation.

\- Rollback rules:

&nbsp; - Rollback MUST be tested and reliable.

\- Security rules:

&nbsp; - Model artifacts MUST be access-controlled.

\- Drift rules:

&nbsp; - Significant drift MUST trigger review or retraining.

\- Verification rules:

&nbsp; - Model ops processes MUST be reviewed regularly.

&nbsp; - Violations of these standards MUST be treated as defects.



