=========================================================

ai/README.md

=========================================================



\# ai Standards



\## Standards

Artificial intelligence application and model lifecycle standards.



\## Scope

AI and LLM based applications, agentic automation, retrieval systems, evaluation, and operational controls. This scope includes AI runtime behavior but excludes general application, security, testing, and infrastructure standards, which are defined elsewhere.



\## Responsibilities

\- Define AI-specific architecture, runtime, and operational rules

\- Establish deterministic behavior for AI systems

\- Ensure safe, observable, and cost-controlled AI usage

\- Align AI systems with security, privacy, and reliability baselines



\## Usage

Applied when an application uses AI models, LLMs, embeddings, retrieval, or agent-based automation, regardless of whether model training is performed.



\## Structure

ai/

|-- llm-apps.md LLM application architecture and runtime standards

|-- prompts.md Prompt structure, versioning, and injection mitigation standards

|-- rag.md Retrieval-augmented generation design and operation standards

|-- evaluation.md AI evaluation, regression testing, and quality measurement standards

|-- guardrails.md Safety, policy enforcement, and content control standards

|-- model-ops.md Model selection, versioning, rollout, and incident handling standards

|-- safety-and-alignment.md AI behavior safety and alignment standards

|-- telemetry.md AI system telemetry and monitoring standards

|-- tools-and-agents.md Tool calling, agent loops, and automation standards

|-- data-handling.md AI data usage, retention, and privacy alignment standards

|-- cost-and-rate-limits.md Cost control, quotas, and rate limiting standards

`-- README.md Directory mapping



\## File Decomposition

Each file defines exactly one AI-specific concern and must not duplicate general standards defined in agents, languages, databases, messaging, or platforms directories.



\## Application Rules

\- Applied selectively when AI capabilities are present

\- Always composed with agents/security.md, agents/privacy.md, agents/tests.md, and agents/observability.md

\- AI-specific files define deltas only and defer to baseline standards for cross-cutting concerns

