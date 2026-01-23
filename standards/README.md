=========================================================
README.md
=========================================================

# Markdown Master Files

## Standards
Authoritative, declarative technical standards repository.

## Scope
All engineering, platform, data, messaging, AI, and operational domains.

## Responsibilities
- Serve as the single source of truth for standards
- Provide deterministic navigation via README files
- Enable consistent human and AI consumption
- Prevent duplication, drift, and conflicting rules

## Usage
All projects MUST reference and comply with applicable standards defined herein.

## Structure
.
|-- agents/ Cross-cutting engineering and organizational standards
|-- ai/ AI and LLM-specific application standards
|-- databases/ Database engine specific standards
|-- languages/ Programming languages, frameworks, and tooling standards
|-- messaging/ Messaging and event streaming standards
|-- platforms/ Cloud, analytics, and infrastructure platform standards
`-- README.md Repository navigation and documentation contracts

## File Decomposition
- agents/ Cross-cutting standards applied across all systems
- ai/ Standards specific to AI, LLM, and agent-based systems
- databases/ Engine-specific data storage standards
- languages/ Language, framework, tooling, and configuration standards
- messaging/ Messaging, streaming, and eventing standards
- platforms/ Cloud and analytics platform standards

## Application Rules
- One file equals one authoritative standard
- No duplication across directories
- Conflicts are resolved by orchestration and precedence rules
- README.md files define navigation contracts only

## How to Use This Structure With AI Coding Tools

### Core Operating Model (Applies to All Tools)

- This standards repository MUST be included in each product repository as a Git submodule or subtree, for example:

=========================================================
README.md
=========================================================

# Markdown Master Files

## Standards
Authoritative, declarative technical standards repository.

## Scope
All engineering, platform, data, messaging, AI, and operational domains.

## Responsibilities
- Serve as the single source of truth for standards
- Provide deterministic navigation via README files
- Enable consistent human and AI consumption
- Prevent duplication, drift, and conflicting rules

## Usage
All projects MUST reference and comply with applicable standards defined herein.

## Structure
.
|-- agents/ Cross-cutting engineering and organizational standards
|-- ai/ AI and LLM-specific application standards
|-- databases/ Database engine specific standards
|-- languages/ Programming languages, frameworks, and tooling standards
|-- messaging/ Messaging and event streaming standards
|-- platforms/ Cloud, analytics, and infrastructure platform standards
`-- README.md Repository navigation and documentation contracts

## File Decomposition
- agents/ Cross-cutting standards applied across all systems
- ai/ Standards specific to AI, LLM, and agent-based systems
- databases/ Engine-specific data storage standards
- languages/ Language, framework, tooling, and configuration standards
- messaging/ Messaging, streaming, and eventing standards
- platforms/ Cloud and analytics platform standards

## Application Rules
- One file equals one authoritative standard
- No duplication across directories
- Conflicts are resolved by orchestration and precedence rules
- README.md files define navigation contracts only

## How to Use This Structure With AI Coding Tools

### Core Operating Model (Applies to All Tools)

- This standards repository MUST be included in each product repository as a Git submodule or subtree, for example:

standards/ (contains the full Markdown Master Files tree)

- Each product repository MUST contain exactly one entrypoint instruction file that tells the AI agent how to traverse and apply standards.

  - Cursor: AGENTS.md
  - Claude Code: CLAUDE.md

- The authoritative rubric for standards traversal and composition is:

standards/agents/orchestration.md


- The entrypoint instruction file MUST:
  - Instruct the agent to start by reading standards/agents/orchestration.md
  - Instruct the agent to generate or load role-specific agent files for the repository
  - Instruct the agent to resolve conflicts exclusively via orchestration precedence rules

---

### Cursor.ai Setup and Workflow

#### Setup
- Include this standards repository under standards/
- Add AGENTS.md at the product repository root with instructions to:
  - Read standards/agents/orchestration.md first
  - Load the appropriate role-specific agent file(s)
  - Execute tasks only after standards composition is complete

Cursor explicitly supports AGENTS.md and optional scoped rules under .cursor/rules.

#### Workflow Pattern (Recommended)
- Use orchestration to generate role agent files such as:
  - agents/agent-<repo>-frontend.md
  - agents/agent-<repo>-backend.md
  - agents/agent-<repo>-devsecops.md
  - agents/agent-<repo>-ai.md (when applicable)

- Load only the relevant role agent files into context per task:
  - Feature work: frontend and backend
  - Infrastructure work: devsecops
  - AI work: ai and backend

- Enforce deterministic closure:
  - All required tests MUST run
  - CI-ready output is required before work is considered complete
  - agents/tests.md governs verification requirements

---

### Claude Code Setup and Workflow

#### Setup
- Include this standards repository under standards/
- Add CLAUDE.md at the product repository root with instructions to:
  - Always start with standards/agents/orchestration.md
  - Operate only within assigned role agent files
  - Run relevant commands such as tests, linting, and builds
  - Prefer minimal, verified diffs

Claude Code explicitly supports project-specific guidance via CLAUDE.md and recommends using /init as a starting template.

#### Workflow Pattern (Recommended)
- Start sessions at the repository root
- Instruct Claude Code to:
  - Read CLAUDE.md
  - Read standards/agents/orchestration.md
  - Confirm which role agent file(s) apply
  - Produce a plan
  - Execute changes
  - Run required tests
  - Summarize results and verification status

---

## Scenario Playbooks

### 1. Greenfield (New Repository or Application)
- Run the orchestration Q&A to determine:
  - Product type (web, API, mobile, AI, data)
  - Security and compliance requirements
  - Languages, frameworks, and hosting targets
- Orchestration generates role-specific agent files.
- Agent creates baseline scaffolding:
  - Repository hygiene
  - CI pipelines
  - Tests
  - Security guardrails
  - Initial architecture and API contracts
- Agent implements MVP with required test coverage and green CI.

### 2. Maintenance (Bug Fixes and Small Changes)
- Load backend or frontend role agent file plus tests and security.
- Reproduce the issue with a failing test.
- Implement the fix.
- Run the full relevant test suite and linting.
- Deliver a minimal diff and changelog notes if required.

### 3. New Features
- Load role agent files for impacted areas.
- Update contracts first if APIs, schemas, or interfaces change.
- Add tests for new behavior.
- Implement the feature.
- Validate using unit, integration, and E2E tests per agents/tests.md.

### 4. Migration (Language, Framework, Platform, or Infrastructure)
- Orchestration selects both source and target standards.
- Agent produces a migration plan including:
  - Sequencing
  - Compatibility strategy
  - Rollback strategy
- Execute in slices:
  - Keep the system operational
  - Maintain contract compatibility
  - Continuously validate via tests and CI
- Remove deprecated paths only after agents/change-management.md rules are satisfied.

### 5. Tech Debt Elimination
- Classify debt type:
  - Correctness
  - Security
  - Reliability
  - Performance
  - Maintainability
- Add tests to lock existing behavior where needed.
- Refactor in small, measurable increments:
  - Reduced complexity
  - Improved performance
  - Reduced incident risk
- Enforce regression protection by keeping tests green throughout.

## Documentation Contracts

This repository enforces explicit documentation contracts to ensure deterministic navigation, non-duplication, and AI-safe consumption.

### README.md File Contract

All README.md files in this repository MUST:

- Describe the purpose of the directory
- Explain directory structure and file mapping
- List all immediate child files or folders
- Include a one-line description for each listed item on the same line
- Use ASCII-only characters
- Avoid implementation rules and procedural logic

README.md files are informational only and MUST NOT define implementation standards.

### Non-README Standards File Contract

All non-README `.md` files in this repository MUST:

- Follow a fixed, ordered section structure
- Contain declarative, normative rules only
- Avoid narrative explanations and historical context
- Be independently consumable by AI agents

#### Required Sections (in Exact Order)

1. Standards
2. Scope
3. Responsibilities
4. Usage
5. Structure
6. File Decomposition
7. Application Rules

If a section is not applicable, its content MUST be exactly:

N/A

#### Header Comment Requirement

All non-README standards files MUST begin with the following header comment:

This file follows the Standard File Contract.  
Sections and ordering are mandatory.

#### Enforcement Rules
- Section names and ordering are mandatory and case-sensitive
- Content MUST be ASCII-only
- Conflicts between standards are resolved by orchestration and precedence rules
- Violations of these contracts are considered standards defects
