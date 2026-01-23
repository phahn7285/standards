=========================================================

SETUP.md

=========================================================



\# AI Coding Tools Setup Guide



This document defines how to use the Markdown Master Files standards repository

with AI-assisted coding tools.



This file provides operational guidance only.

It does not define standards.



---------------------------------------------------------



\## Core Operating Model (Applies to All Tools)



\- This standards repository MUST be included in each product repository

&nbsp; as a Git submodule or subtree.



Example layout:



standards/

&nbsp; Contains the full Markdown Master Files tree



\- Each product repository MUST contain exactly one AI entrypoint instruction file

&nbsp; at the repository root.



\- The entrypoint file instructs the AI agent how to traverse and apply standards.



\- Authoritative orchestration logic lives in:



standards/agents/orchestration.md



\- All AI tools MUST:

&nbsp; - Start with orchestration

&nbsp; - Generate or load role-specific agent files

&nbsp; - Resolve conflicts using orchestration precedence rules only



---------------------------------------------------------



\## Cursor.ai Setup



\### Required Files

\- AGENTS.md at the product repository root

\- standards/ directory containing this repository



\### Entry Point Behavior

AGENTS.md MUST instruct the agent to:

1\. Read standards/agents/orchestration.md first

2\. Generate or load role-specific agent files

3\. Load only the agent files required for the current task

4\. Execute work only after standards composition is complete



Cursor supports:

\- AGENTS.md for global agent instructions

\- Optional scoped rules under .cursor/rules



\### Recommended Workflow

\- Orchestration generates role agent files such as:

&nbsp; - agents/agent-<repo>-frontend.md

&nbsp; - agents/agent-<repo>-backend.md

&nbsp; - agents/agent-<repo>-devsecops.md

&nbsp; - agents/agent-<repo>-ai.md



\- Load only the relevant role agent files into context:

&nbsp; - Feature work uses frontend and backend

&nbsp; - Infrastructure work uses devsecops

&nbsp; - AI work uses ai and backend



\- Enforce deterministic completion:

&nbsp; - Required tests MUST run

&nbsp; - Output MUST be CI-ready

&nbsp; - agents/tests.md governs verification rules



---------------------------------------------------------



\## Claude Code Setup



\### Required Files

\- CLAUDE.md at the product repository root

\- standards/ directory containing this repository



\### Entry Point Behavior

CLAUDE.md MUST instruct the agent to:

1\. Read standards/agents/orchestration.md

2\. Confirm applicable roles

3\. Operate only within role-specific agent files

4\. Run verification commands such as tests, lint, and build

5\. Produce minimal, reviewable diffs



Claude Code supports:

\- Project-level instructions via CLAUDE.md

\- Initialization via /init

\- Command execution with visible output



\### Recommended Workflow

\- Start sessions at the repository root

\- Instruct Claude Code to:

&nbsp; - Read CLAUDE.md

&nbsp; - Read standards/agents/orchestration.md

&nbsp; - Identify applicable role agent files

&nbsp; - Produce a plan

&nbsp; - Execute changes

&nbsp; - Run verification

&nbsp; - Summarize results



---------------------------------------------------------



\## GitHub Copilot Setup



\### Required Files

\- README.md or SETUP.md describing standards usage

\- standards/ directory present in the repository



\### Usage Notes

\- Copilot does not enforce a single entrypoint file

\- Instructions MUST be provided via pinned files or prompts

\- Orchestration logic SHOULD be referenced explicitly



\### Recommended Pattern

\- Prompt Copilot to:

&nbsp; - Read standards/agents/orchestration.md

&nbsp; - Apply relevant role standards

&nbsp; - Follow agents/tests.md for verification



---------------------------------------------------------



\## JetBrains AI Assistant Setup



\### Required Files

\- SETUP.md or README.md available in the repository

\- standards/ directory present



\### Usage Notes

\- JetBrains AI relies on contextual prompts

\- Explicit instructions are required per session



\### Recommended Pattern

\- Start sessions by instructing:

&nbsp; - Read standards/agents/orchestration.md

&nbsp; - Apply relevant role standards

&nbsp; - Produce test-backed changes only



---------------------------------------------------------



\## General Rules Across All Tools



\- Orchestration is mandatory

\- Role separation MUST be enforced

\- Standards MUST NOT be inferred or invented

\- Tests and verification are required outputs

\- If information is missing, the agent MUST ask

\- Human review is expected but not relied upon for correctness



Violations of these rules are considered standards defects.



---------------------------------------------------------



\## Supported Development Scenarios



This setup supports:

\- Greenfield development

\- Ongoing maintenance

\- New feature delivery

\- Platform and framework migrations

\- Tech debt reduction



Each scenario MUST be driven by orchestration and role-specific agent files.



---------------------------------------------------------



End of file.



