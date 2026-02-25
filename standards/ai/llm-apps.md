=========================================================

ai/llm-apps.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# llm-apps Standards



\## Standards

\- LLM-based applications MUST be designed as deterministic systems around non-deterministic components.

\- LLM usage MUST be encapsulated behind explicit interfaces.

\- Prompts MUST be version-controlled and treated as code.

\- Prompt changes MUST be reviewed and tested.

\- LLM outputs MUST be validated before use.

\- LLM applications MUST define and enforce input and output schemas.

\- LLM applications MUST handle model failures and degraded responses gracefully.

\- LLM applications MUST support fallback behavior.

\- LLM applications MUST be observable and testable.

\- LLM applications MUST enforce cost and rate limits.

\- LLM applications MUST align with security, privacy, and safety requirements.

\- LLM applications MUST be resilient to prompt injection and misuse.

\- LLM applications MUST integrate evaluation and guardrails.

\- LLM applications MUST NOT rely on LLMs for critical control flow without safeguards.



\## Scope

In scope:

\- Applications using large language models

\- Prompt-driven workflows

\- Tool-augmented LLM applications

\- Retrieval-augmented generation workflows

\- Agentic LLM applications

\- LLM inference pipelines



Out of scope:

\- Model training and fine-tuning (agents/data-ml.md)

\- Non-LLM AI systems

\- Vendor-specific model internals



Assumptions:

\- LLM outputs may vary across executions.

\- LLM providers may have availability or rate constraints.

\- LLM behavior must be constrained for safety and reliability.



\## Responsibilities

\- Application engineers:

&nbsp; - Design LLM application architecture

&nbsp; - Implement prompt management and validation

&nbsp; - Handle failure and fallback behavior



\- QA engineers:

&nbsp; - Validate LLM behavior and edge cases

&nbsp; - Design evaluation datasets and scenarios



\- Reviewers:

&nbsp; - Verify correctness, safety, and standards compliance

&nbsp; - Reject changes that introduce unsafe or unbounded behavior



\- DevSecOps:

&nbsp; - Integrate LLM applications into pipelines

&nbsp; - Monitor cost, usage, and reliability



\## Usage

\- Apply this file when:

&nbsp; - building or modifying LLM-driven applications

&nbsp; - introducing prompt-based features

&nbsp; - enabling tool or agent behavior

\- This file MUST be composed with:

&nbsp; - agents/ai-application.md

&nbsp; - agents/security.md

&nbsp; - agents/privacy.md

&nbsp; - agents/observability.md

&nbsp; - agents/tests.md

&nbsp; - ai/guardrails.md

&nbsp; - ai/evaluation.md

&nbsp; - ai/cost-and-rate-limits.md



\## Structure

\- LLM applications SHOULD be organized by concern:

&nbsp; - prompts/

&nbsp; - schemas/

&nbsp; - tools/

&nbsp; - orchestration/

&nbsp; - evaluation/

\- Prompt and schema artifacts MUST be version-controlled.

\- Configuration MUST be externalized.



\## File Decomposition

\- Prompts:

&nbsp; - MUST define role, instructions, and constraints.

&nbsp; - MUST avoid embedding secrets or sensitive data.

\- Schemas:

&nbsp; - MUST define expected input and output structure.

\- Tools:

&nbsp; - MUST have explicit contracts and validation.

\- Orchestration:

&nbsp; - MUST define execution flow and fallback paths.

\- Evaluation:

&nbsp; - MUST define validation scenarios and metrics.



\## Application Rules

\- Prompt rules:

&nbsp; - Prompts MUST be minimal, explicit, and versioned.

\- Validation rules:

&nbsp; - LLM outputs MUST be validated against schemas.

\- Failure rules:

&nbsp; - LLM failures MUST not crash the system.

\- Security rules:

&nbsp; - Prompt injection MUST be mitigated.

\- Cost rules:

&nbsp; - Token usage MUST be bounded.

\- Verification rules:

&nbsp; - LLM behavior MUST be tested and evaluated.

&nbsp; - Violations of these standards MUST be treated as defects.



