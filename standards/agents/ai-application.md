=========================================================

agents/ai-application.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# ai-application Standards



\## Standards

\- AI application behavior MUST be deterministic by default.

\- AI application behavior MUST be testable by automated evaluation.

\- AI application behavior MUST be observable, auditable, and cost-controlled.

\- AI application inputs and outputs MUST be treated as untrusted data.

\- AI application code MUST separate concerns: UI, orchestration, tools, retrieval, model calls, persistence, and policy enforcement.

\- AI application MUST enforce safety and policy controls before and after model invocation.

\- AI application MUST prevent prompt injection from influencing system instructions, tool permissions, or data access.

\- AI application MUST apply least privilege to all tools and external integrations.

\- AI application MUST include explicit timeouts, retries, backoff, and cancellation handling for all external calls.

\- AI application MUST provide fallbacks and graceful degradation when model providers, tools, retrieval, or dependencies fail.

\- AI application MUST log and trace requests end-to-end without recording secrets or sensitive data.

\- AI application MUST include strict data handling controls for user content, prompts, tool outputs, and model responses.

\- AI application MUST pin model identifiers and configuration used in production, including temperature and max tokens.

\- AI application MUST version prompts and MUST treat prompt changes as code changes.

\- AI application MUST NOT expose hidden system prompts, internal policies, secrets, keys, or tool schemas to end users.

\- AI application MUST NOT execute arbitrary code or commands derived from model output.

\- AI application MUST validate all tool call arguments against schemas and MUST validate tool outputs before use.

\- AI application MUST constrain tool execution with explicit allowlists and MUST deny by default.

\- AI application MUST enforce rate limits and token budgets per user, per tenant, and per service.

\- AI application MUST support redaction of sensitive content in logs and telemetry.

\- AI application MUST support an emergency mode that disables risky tools and reduces capabilities during incidents.

\- AI application MUST ensure compliance requirements (PII, PCI, retention) are enforced per agents/privacy.md and ai/data-handling.md when present.

\- AI application MUST implement regression tests for prompt injection attempts, tool misuse attempts, data leakage attempts, and hallucination-prone queries relevant to the domain.

\- AI application MUST define and enforce termination conditions for agent loops.

\- AI application MUST cap iteration counts, tool calls, and wall-clock time for each request.

\- AI application MUST avoid nondeterministic concurrency that changes tool call ordering unless explicitly required.

\- AI application MUST cache only when allowed by privacy and security rules and only for non-sensitive content.

\- AI application MUST provide user-visible disclosures only when required by product policy; safety controls MUST NOT rely on user behavior.



\## Scope

In scope:

\- LLM-based applications, chatbots, assistants, and copilots

\- Agentic automation, tool calling, function calling, and workflows

\- RAG systems and retrieval orchestration

\- Prompt structure, prompt lifecycle, and prompt injection defenses

\- Safety and policy control integration

\- Model routing, fallback, and provider abstraction

\- Cost control, quotas, and rate limiting for AI usage

\- AI evaluation, regression suites, and quality measurement

\- Telemetry for prompts, tools, retrieval, and model calls

\- Persistence of conversations, artifacts, and tool results



Out of scope:

\- Model training pipelines and feature engineering (agents/data-ml.md)

\- Database engine specifics (databases/\*)

\- Messaging platform specifics (messaging/\*)

\- Cloud platform specifics (platforms/\*)

\- Language-level coding rules (languages/\*)

\- Test strategy definition (agents/tests.md)

\- Security baselines (agents/security.md)

\- Privacy baselines (agents/privacy.md)

\- Observability baselines (agents/observability.md)



Assumptions:

\- The system integrates with at least one model provider or local model runtime.

\- The system may integrate with tools, retrieval systems, and external APIs.

\- The system may process user-provided content that is sensitive or regulated.



\## Responsibilities

\- Application engineer responsibilities:

&nbsp; - Implement orchestration, safety controls, and tool boundaries

&nbsp; - Ensure tests cover AI-specific failure modes and regressions

&nbsp; - Ensure prompts are versioned, reviewed, and tested

&nbsp; - Ensure input validation, output validation, and schema enforcement exist



\- Reviewer responsibilities:

&nbsp; - Verify mandatory controls are implemented

&nbsp; - Verify prompt and model configuration changes are reviewed like code

&nbsp; - Verify tool allowlists and permissions are least privilege

&nbsp; - Verify logging and telemetry do not leak sensitive data



\- DevSecOps responsibilities:

&nbsp; - Enforce secrets management and environment isolation

&nbsp; - Enforce rate limits, quotas, and cost controls at runtime and gateway layers

&nbsp; - Enforce CI checks and deployment gates for AI changes

&nbsp; - Ensure incident response runbooks exist for AI failures and abuse



\- Product owner responsibilities:

&nbsp; - Define domain-specific policies, allowed capabilities, and prohibited content

&nbsp; - Approve risk posture for tool enablement and data usage



\## Usage

\- Apply this file when any of the following are true:

&nbsp; - an application calls an LLM or generative model

&nbsp; - an application uses embeddings or retrieval for generation

&nbsp; - an application performs tool calling or agentic automation

&nbsp; - an application stores or processes conversational context

\- This file MUST be composed with:

&nbsp; - agents/security.md

&nbsp; - agents/privacy.md

&nbsp; - agents/tests.md

&nbsp; - agents/observability.md

&nbsp; - agents/reliability.md

&nbsp; - relevant languages/\* standards files

\- When ai/\* standards exist, this file SHOULD be composed with:

&nbsp; - ai/llm-apps.md

&nbsp; - ai/prompts.md

&nbsp; - ai/tools-and-agents.md

&nbsp; - ai/rag.md when retrieval exists

&nbsp; - ai/evaluation.md

&nbsp; - ai/guardrails.md

&nbsp; - ai/data-handling.md

&nbsp; - ai/model-ops.md

&nbsp; - ai/cost-and-rate-limits.md



\## Structure

\- AI application repositories SHOULD include these logical modules or equivalents:

&nbsp; - ui/ when UI exists

&nbsp; - api/ or service/ for request handling and orchestration entrypoints

&nbsp; - prompts/ for prompt templates and prompt assets

&nbsp; - tools/ for tool definitions, schemas, permissions, and execution wrappers

&nbsp; - retrieval/ for retrieval clients and query shaping

&nbsp; - policies/ for safety rules, allowlists, decision logic, and redaction

&nbsp; - eval/ for goldens, scorers, and evaluation harnesses

&nbsp; - telemetry/ for logging, tracing, and metrics helpers

\- If a monorepo layout is used, the same boundaries MUST be enforced by package or module boundaries.

\- Prompts MUST be stored as version-controlled assets and MUST NOT exist only as hard-coded strings when templates are used.

\- Tool schemas MUST be version-controlled and MUST be validated at runtime.

\- Evaluation datasets MUST be version-controlled and MUST NOT contain sensitive production data.



\## File Decomposition

\- prompts/:

&nbsp; - MUST contain prompt templates with explicit variable placeholders.

&nbsp; - MUST contain prompt metadata including version and purpose.

&nbsp; - MUST include regression coverage for prompt injection and data leakage.

\- tools/:

&nbsp; - MUST contain tool definitions with strict input schemas.

&nbsp; - MUST contain allowlists and permissioning by tool and by role.

&nbsp; - MUST contain execution wrappers enforcing timeouts, retries, and output validation.

&nbsp; - MUST log tool invocations with redacted inputs and outputs.

\- retrieval/:

&nbsp; - MUST contain retrieval configuration and query shaping rules.

&nbsp; - MUST prevent untrusted content from altering privileged instructions.

&nbsp; - MUST include evaluation coverage for retrieval quality when used for generation.

\- policies/:

&nbsp; - MUST contain pre-model and post-model enforcement rules.

&nbsp; - MUST contain redaction rules and refusal handling rules.

&nbsp; - MUST contain emergency mode and kill switch configuration for risky capabilities.

\- eval/:

&nbsp; - MUST contain golden sets and regression suites.

&nbsp; - MUST contain scoring and pass/fail thresholds.

&nbsp; - MUST include adversarial test cases relevant to the domain.

\- telemetry/:

&nbsp; - MUST contain structured logging, tracing, and metrics helpers.

&nbsp; - MUST support correlation IDs across UI, API, tools, retrieval, and model calls.

&nbsp; - MUST support redaction and sampling rules.



\## Application Rules

\- Composition rules:

&nbsp; - This file MUST NOT redefine general security, privacy, testing, or observability baselines.

&nbsp; - AI-specific rules in ai/\* files override this file only for their specific concern.



\- Prompt rules:

&nbsp; - System instructions MUST be isolated from user content.

&nbsp; - User content MUST NOT be concatenated into privileged instruction blocks.

&nbsp; - Prompt templates MUST include explicit delimiters separating instructions, context, and user input.

&nbsp; - Prompt changes MUST trigger unit tests, AI regression tests, and leakage and injection checks.



\- Tool calling rules:

&nbsp; - Tools MUST be deny-by-default.

&nbsp; - Tools MUST require explicit allowlist enablement per environment and per role.

&nbsp; - Tool arguments MUST be schema-validated before execution.

&nbsp; - Tool outputs MUST be validated and normalized before being provided back to the model.

&nbsp; - Tool execution MUST be bounded by max tool calls per request, max wall-clock time per request, and per-tool timeouts.

&nbsp; - Agent loops MUST have termination conditions and MUST enforce iteration caps.



\- Retrieval rules:

&nbsp; - Retrieved content MUST be treated as untrusted input.

&nbsp; - Retrieved content MUST NOT override system instructions.

&nbsp; - Retrieval MUST be evaluated and MUST have regression tests when used for user-visible answers.

&nbsp; - Citations or provenance MUST be produced when required by product policy.



\- Output rules:

&nbsp; - Model outputs MUST be validated for policy violations, sensitive data leakage, and unsafe instructions.

&nbsp; - The system MUST support refusal behavior and safe alternatives when policy requires.



\- Data handling rules:

&nbsp; - Logs MUST NOT contain secrets.

&nbsp; - Logs MUST NOT contain raw PII or PCI unless explicitly allowed by agents/privacy.md and ai/data-handling.md.

&nbsp; - Prompts, tool outputs, and retrieval context MUST be redacted in telemetry when sensitive.

&nbsp; - Retention of conversational data MUST be explicitly defined and enforced.



\- Reliability rules:

&nbsp; - All external calls MUST have timeouts and retry strategies.

&nbsp; - The system MUST implement graceful degradation for tool failures, retrieval failures, and model provider failures.

&nbsp; - Provider failures MUST be observable and MUST trigger alerts per agents/observability.md and agents/reliability.md.



\- Cost and rate limit rules:

&nbsp; - Token budgets MUST be enforced at runtime.

&nbsp; - Rate limiting MUST exist per user and per tenant where applicable.

&nbsp; - Cost controls MUST exist for long conversations, repeated retries, and multi-tool workflows.

&nbsp; - Backpressure behavior MUST exist when limits are exceeded.



\- Security rules:

&nbsp; - Prompt injection defenses MUST be implemented and MUST be tested.

&nbsp; - The system MUST validate all externally sourced URLs, files, and tool inputs before use.

&nbsp; - The system MUST NOT execute code or commands provided by model outputs.

&nbsp; - Secrets MUST be stored and accessed only per agents/security.md.



\- Verification rules:

&nbsp; - Every change touching prompts, tools, retrieval, model invocation, or policy MUST include:

&nbsp;   - unit tests for new logic

&nbsp;   - regression tests for AI behaviors affected

&nbsp;   - updated evaluation cases when behavior changes are intended

&nbsp;   - telemetry assertions when instrumentation changes



