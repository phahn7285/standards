=========================================================
agents/orchestration.md
=========================================================

This file follows the Standard File Contract.
Sections and ordering are mandatory.

# orchestration Standards

## Standards
- Orchestration MUST deterministically select, compose, and order applicable standards files.
- Orchestration MUST support both existing-repo and new-app scenarios.
- Orchestration MUST NOT fail solely due to a missing optional standards file when a valid fallback exists.
- Orchestration MUST ask the user for input only when:
  - industry standards do not provide a clear default, or
  - no applicable standards file or fallback exists, or
  - explicit user overrides conflict with mandatory standards.
- Orchestration MUST prefer industry-aligned best practices over personal or historical preferences.
- Orchestration MUST treat agents/* standards as highest precedence.
- Orchestration MUST ensure security, privacy, testing, dependency governance, and repository hygiene standards are always included.
- Orchestration MUST generate role-specific agent bundle files when required.
- Orchestration MUST record all applied fallbacks and overrides in generated agent files.
- Orchestration MUST use ASCII-only content and filenames.

## Scope
In scope:
- Standards selection and composition
- Guided Q and A for new applications or incomplete inputs
- Role detection and role-based agent generation
- Fallback handling for missing standards files
- Precedence, silence handling, and conflict resolution
- Naming derivation for repositories, applications, or features

Out of scope:
- Defining implementation rules (owned by selected standards files)
- Executing CI/CD pipelines
- Enforcing runtime behavior

Assumptions:
- Standards files are authoritative within their scope.
- Orchestration composes standards but does not redefine them.
- Users may provide vague, partial, or highly detailed input.

## Responsibilities
- Orchestrator responsibilities:
  - Determine operating mode (existing-repo or new-app)
  - Collect or infer required inputs
  - Select applicable standards files using routing and fallback rules
  - Resolve conflicts using precedence rules
  - Generate role-specific agent bundle files when requested

- User responsibilities:
  - Provide clarification when explicitly asked
  - Approve or adjust derived names when required
  - Declare hard constraints or client overrides when they exist

- Reviewer responsibilities:
  - Validate that generated agent bundles match intended scope
  - Reject outputs that violate mandatory standards

## Usage
- Use this file when:
  - creating a new repository or application
  - onboarding an existing repository into this standards system
  - generating role-specific agent context for AI execution
- Orchestration output MUST include:
  - an ordered list of selected standards files
  - generated agent bundle files when applicable

## Structure
agents/
|-- orchestration.md Standards selection and routing rules
|-- agent-<name>-front-end.md Generated front-end role bundle
|-- agent-<name>-back-end.md Generated back-end role bundle
|-- agent-<name>-mobile.md Generated mobile role bundle
|-- agent-<name>-qa-automation.md Generated QA automation role bundle
|-- agent-<name>-devsecops.md Generated DevSecOps role bundle
|-- agent-<name>-data-ml.md Generated data and ML role bundle
|-- agent-<name>-database.md Generated database role bundle
|-- agent-<name>-messaging.md Generated messaging role bundle
|-- agent-<name>-platform.md Generated platform role bundle
|-- agent-<name>-ai-application.md Generated AI application role bundle

## File Decomposition
- Input collection:
  - name (repo, app, or feature)
  - mode (existing-repo or new-app)
  - interfaces (web, mobile, api, automation)
  - languages and frameworks
  - data sensitivity (none, PII, PCI)
  - deployment target (cloud, on-prem, local)
  - databases and messaging needs
  - AI usage (none, application, data-ml)
  - explicit overrides and constraints

- Processing steps:
  - Normalize name
  - Determine required roles
  - Select baseline standards
  - Select role-specific standards
  - Apply technology routing
  - Apply fallbacks
  - Generate agent bundle files

## Application Rules

Precedence:
- agents/* overrides ai/*, languages/*, databases/*, messaging/*, platforms/*.
- More specific standards override more general standards within the same directory.
- Conflicts at equal precedence indicate a standards defect.

Silence handling:
- If a concern is not specified:
  - Follow existing repository conventions if present and not forbidden.
  - Otherwise apply industry-default routing rules defined below.
  - Ask one clarifying question only if multiple viable options remain.

Baseline inclusion (always required when files exist):
- agents/coding-standards.md
- agents/tests.md
- agents/security.md
- agents/privacy.md
- agents/repo-hygiene.md
- agents/dependencies.md
- agents/code-review.md
- agents/documentation.md

Fallbacks:
- If agents/privacy.md is missing, fall back to agents/security.md and require confirmation for sensitive data handling.
- If agents/tests.md is missing, orchestration MUST ask to add it.
- Missing optional standards files MUST NOT block execution when a fallback exists.

Role determination:
- front-end: web UI present
- mobile: native or React Native app present
- back-end: server-side logic, APIs, or automation present
- qa-automation: UI or integration flows exist
- devsecops: any deployable artifact exists
- database: persistent storage exists
- messaging: asynchronous communication exists
- data-ml: training or offline inference pipelines exist
- ai-application: LLMs, embeddings, RAG, or agentic automation exist

Technology routing:
- python -> languages/python.md plus languages/pytest.md when present
- typescript -> languages/typescript.md plus languages/jest.md when present
- react -> languages/react.md else languages/typescript.md plus agents/frontend.md
- react native -> languages/reactnative.md plus languages/detox.md when present
- playwright -> languages/playwright.md else languages/selenium.md
- cypress -> languages/cypress.md else languages/playwright.md
- openapi -> languages/openapi.md plus agents/api-contracts.md
- asyncapi -> languages/asyncapi.md plus agents/api-contracts.md

Domain routing:
- database engines -> corresponding databases/* file
- messaging platforms -> corresponding messaging/* file
- cloud providers -> corresponding platforms/* file

AI routing:
- Include agents/ai-application.md when AI application usage exists.
- Include ai/* files when present and applicable.
- If ai/* files are missing, fall back to agents/security.md, agents/privacy.md, agents/tests.md, and agents/observability.md and ask whether to add ai/* standards.

Generated agent bundle rules:
- Naming: agents/agent-<normalized-name>-<role>.md
- Generated files MUST:
  - follow the Standard File Contract
  - list composed standards files in order
  - record applied overrides and fallbacks
  - include an execution and verification checklist
- Generated files MUST reference authoritative standards and MUST NOT duplicate their content.

Overrides:
- Overrides MAY force inclusion or exclusion of technologies.
- Overrides MUST NOT disable mandatory security, privacy, or testing requirements.
- Conflicting overrides MUST trigger a clarification request.

Failure avoidance:
- Missing optional standards files are non-fatal when a fallback exists.
- Missing mandatory standards files require user intervention.
- Orchestration MUST prefer interaction over assumption when ambiguity remains.
