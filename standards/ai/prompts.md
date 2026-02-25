=========================================================

ai/prompts.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# prompts Standards



\## Standards

\- Prompts MUST be treated as code and version-controlled.

\- Prompts MUST be explicit, minimal, and deterministic where possible.

\- Prompt intent, role, and constraints MUST be clearly defined.

\- Prompts MUST avoid ambiguity, implicit assumptions, and open-ended instructions unless explicitly required.

\- Prompts MUST NOT include secrets, credentials, or sensitive data.

\- Prompts MUST be resilient to prompt injection and manipulation.

\- Prompts MUST define expected input and output structure.

\- Prompt changes MUST be reviewed and tested.

\- Prompts MUST support safe failure and fallback behavior.

\- Prompts MUST align with ai/guardrails.md and ai/evaluation.md.

\- Prompts MUST be observable and debuggable without exposing sensitive content.

\- Prompts MUST be compatible with cost and rate limit controls.

\- Prompts MUST NOT delegate critical control decisions without safeguards.



\## Scope

In scope:

\- System prompts

\- Instruction prompts

\- Template prompts

\- Tool-use prompts

\- Agent role prompts

\- Prompt chaining and composition

\- Prompt parameterization



Out of scope:

\- Model training and fine-tuning (agents/data-ml.md)

\- Application orchestration logic (agents/ai-application.md)

\- Vendor-specific prompt handling internals



Assumptions:

\- Prompts may evolve over time.

\- Prompts may be reused across features or applications.

\- Prompt behavior may vary across models.



\## Responsibilities

\- Application engineers:

&nbsp; - Author and maintain prompts

&nbsp; - Ensure prompts are clear, safe, and constrained

&nbsp; - Validate prompt outputs



\- QA engineers:

&nbsp; - Design prompt evaluation scenarios

&nbsp; - Validate prompt behavior under edge cases



\- Reviewers:

&nbsp; - Verify prompt correctness and safety

&nbsp; - Reject prompts that introduce ambiguity or risk



\- DevSecOps:

&nbsp; - Ensure prompt artifacts are versioned and deployed correctly

&nbsp; - Support observability and rollback of prompt changes



\## Usage

\- Apply this file when:

&nbsp; - creating or modifying prompts

&nbsp; - introducing prompt-based features

&nbsp; - changing prompt structure or instructions

\- This file MUST be composed with:

&nbsp; - agents/ai-application.md

&nbsp; - ai/guardrails.md

&nbsp; - ai/evaluation.md

&nbsp; - agents/tests.md

&nbsp; - agents/security.md

&nbsp; - agents/privacy.md when user data is involved



\## Structure

\- Prompts SHOULD be organized by purpose:

&nbsp; - system/

&nbsp; - instructions/

&nbsp; - templates/

&nbsp; - tools/

\- Prompt files MUST have descriptive names.

\- Parameter placeholders MUST be explicit and validated.



\## File Decomposition

\- System prompts:

&nbsp; - MUST define role, goals, and constraints.

\- Instruction prompts:

&nbsp; - MUST define task-specific behavior.

\- Templates:

&nbsp; - MUST define parameterized structure.

\- Tool prompts:

&nbsp; - MUST define tool invocation rules and constraints.

\- Metadata:

&nbsp; - MUST define version, ownership, and applicability.



\## Application Rules

\- Authoring rules:

&nbsp; - Prompts MUST be concise and explicit.

&nbsp; - Avoid unnecessary verbosity.

\- Safety rules:

&nbsp; - Prompts MUST instruct models to refuse prohibited behavior.

\- Validation rules:

&nbsp; - Outputs MUST be validated against expected structure.

\- Change rules:

&nbsp; - Prompt changes MUST include evaluation updates.

\- Injection rules:

&nbsp; - User input MUST be clearly separated from instructions.

\- Verification rules:

&nbsp; - Prompt behavior MUST be tested and evaluated.

&nbsp; - Violations of these standards MUST be treated as defects.



