=========================================================

ai/evaluation.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# evaluation Standards



\## Standards

\- AI systems MUST have explicit evaluation criteria defined before release.

\- Evaluation MUST measure correctness, safety, reliability, and usefulness.

\- Evaluation MUST be repeatable and version-controlled.

\- Evaluation datasets MUST be representative of real usage.

\- Evaluation MUST include both automated and structured human review where required.

\- Evaluation MUST define pass or fail thresholds.

\- Evaluation MUST detect regressions across model, prompt, or pipeline changes.

\- Evaluation MUST include edge cases and adversarial inputs.

\- Evaluation MUST account for non-deterministic behavior.

\- Evaluation results MUST be traceable to model, prompt, and data versions.

\- Evaluation MUST be integrated into CI where feasible.

\- Evaluation MUST align with agents/tests.md and agents/reliability.md.



\## Scope

In scope:

\- LLM output evaluation

\- Prompt and chain evaluation

\- Tool and agent behavior evaluation

\- Retrieval and grounding quality evaluation

\- Safety and policy compliance evaluation

\- Regression testing for AI behavior

\- Human-in-the-loop validation



Out of scope:

\- Model training metrics (agents/data-ml.md)

\- Vendor internal model benchmarking

\- Product or UX research studies



Assumptions:

\- AI outputs may vary across executions.

\- Evaluation requires both quantitative and qualitative signals.

\- Evaluation criteria may evolve over time.



\## Responsibilities

\- Application engineers:

&nbsp; - Define evaluation criteria and metrics

&nbsp; - Implement automated evaluation checks

&nbsp; - Address evaluation failures promptly



\- QA engineers:

&nbsp; - Design evaluation scenarios and datasets

&nbsp; - Validate coverage and edge cases



\- Reviewers:

&nbsp; - Verify evaluation completeness and correctness

&nbsp; - Reject changes that degrade AI behavior



\- DevSecOps:

&nbsp; - Integrate evaluation into pipelines

&nbsp; - Ensure evaluation artifacts are stored and accessible



\## Usage

\- Apply this file when:

&nbsp; - deploying or modifying AI systems

&nbsp; - changing models, prompts, or tools

&nbsp; - introducing new AI-driven features

\- This file MUST be composed with:

&nbsp; - agents/ai-application.md

&nbsp; - agents/tests.md

&nbsp; - agents/reliability.md

&nbsp; - agents/observability.md

\- Safety-related evaluation MUST also compose with:

&nbsp; - ai/guardrails.md



\## Structure

\- Evaluation artifacts SHOULD be organized by concern:

&nbsp; - datasets/

&nbsp; - metrics/

&nbsp; - scenarios/

&nbsp; - results/

\- Evaluation configuration MUST be externalized.



\## File Decomposition

\- Datasets:

&nbsp; - MUST be versioned and curated.

&nbsp; - MUST include representative and edge-case inputs.

\- Metrics:

&nbsp; - MUST define quantitative and qualitative measures.

\- Scenarios:

&nbsp; - MUST define expected behavior and constraints.

\- Results:

&nbsp; - MUST record pass or fail outcomes and trends.



\## Application Rules

\- Threshold rules:

&nbsp; - AI changes MUST NOT be promoted if thresholds are not met.

\- Regression rules:

&nbsp; - Evaluation MUST compare against prior baselines.

\- Safety rules:

&nbsp; - Unsafe or policy-violating outputs MUST fail evaluation.

\- Human review rules:

&nbsp; - Human review MUST be required where automation is insufficient.

\- Documentation rules:

&nbsp; - Evaluation criteria and outcomes MUST be documented.

\- Verification rules:

&nbsp; - Evaluation coverage MUST be reviewed regularly.

&nbsp; - Violations of these standards MUST be treated as defects.



