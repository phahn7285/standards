=========================================================
AGENTS.md
=========================================================

This repository is governed by an external standards system.

All AI agents MUST follow the rules below.

## Entry Point

1. Always begin by reading:
   standards/agents/orchestration.md

2. Orchestration determines:
   - Which standards apply
   - Which role-specific agent files must be generated or used
   - Which language, platform, and tooling standards are required

## Role-Based Operation

- Orchestration MUST generate or reference role-specific agent files, such as:
  - agents/agent-<repo>-frontend.md
  - agents/agent-<repo>-backend.md
  - agents/agent-<repo>-devsecops.md
  - agents/agent-<repo>-ai.md
  - agents/agent-<repo>-data.md

- Agents MUST NOT operate outside their assigned role scope.

## Standards Composition Rules

- agents/ standards have highest precedence.
- ai/, databases/, languages/, messaging/, and platforms/ standards apply conditionally.
- Conflicts are resolved only via orchestration rules.
- No assumptions are allowed where standards exist.

## Execution Requirements

- All changes MUST:
  - Follow applicable standards
  - Include required tests
  - Pass CI checks defined by standards
- Work is incomplete until verification is successful.

## Prohibited Behavior

- Do not invent standards.
- Do not skip required files.
- Do not duplicate rules.
- Do not bypass orchestration.

Failure to follow these rules constitutes a standards violation.
