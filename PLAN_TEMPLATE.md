# RESPONSIVENESS / CHANGE PLAN TEMPLATE

## PROTECTED SECTION - DO NOT MODIFY

This entire section must remain byte-for-byte identical across all plans.
Do not edit, paraphrase, or reorganize.

```
Complete checklist. Execute in order. Every change is explicit; no inline presentation styles except one CSS variable for spinner size.

Plan standard: Every change in this plan MUST have (1) file-level and code-level instructions in the to-do list (which file, where in the file, what to add or change), and (2) post-change validation steps that are explicitly listed and must be run after implementation to confirm the change works. No change is complete until its validation steps are executed and pass. When the plan itself is changed (e.g. specification revised, items unmarked, or scope updated), the changer MUST add or update in the plan: (a) documentation update steps so that docs/ (and any other referenced docs) reflect the new plan text, and (b) validation steps to confirm the documentation and implementation match the revised plan. Document what was updated and what validations to run; do not leave plan changes without corresponding documentation updates and validations.

Documentation standard: All documentation (e.g. in docs/) MUST document functionality, configuration, and usage only. Do not put commentary intended for the user into documentation; any such commentary belongs in the UI (e.g. tooltips, help text, in-app copy). Documentation is the single source of truth for what the system does, how it is configured, and how to use it—so that further confusion does not recur.

Docker rule: Docker modifications (compose files, Dockerfile, container definitions, .env for containers) are prohibited unless explicitly authorized by the user. If a need for a Docker change arises, discuss it in the UI (e.g. in chat) and do not implement until authorized.
```

---

## BUSINESS SUMMARY

Instructions:
- Summarize why this work exists in plain business terms.
- No technical implementation details here.

- Objective:
  State the high-level goal in one paragraph. Include target platforms, environments, or users if relevant.

- Success criteria:
  Bullet measurable outcomes only.
  Each bullet must be objectively verifiable during validation.

---

## TECHNICAL SUMMARY

Instructions:
- Summarize how the objective will be achieved at a systems level.
- This is architectural, not step-by-step.

- Scope boundaries:
  Explicitly state what is in scope and what is out of scope.

- Key constraints:
  List non-negotiable rules (frameworks, standards, performance limits, compatibility requirements).

- High-level approach:
  One or two paragraphs describing the chosen strategy.

---

## STANDARDS COMPLIANCE

Instructions:
- List all standards that apply to this plan.
- Do not restate standards; reference them by path and intent.

All work in this plan MUST comply with the following:

- standards/AGENTS.md
- standards/agents/<relevant-agent>.md
- standards/languages/<relevant-language>.md
- Any additional standards specific to this plan

If a standard does not apply, do not list it.

---

## IMPLEMENTATION SECTIONS (REPEATABLE)

Each numbered section represents one logical change area.
Order matters. Do not skip numbers.

---

## N. <FILE OR SYSTEM NAME>

Instructions:
- Use one section per file or tightly-related file group.
- Title must clearly identify the target.

### N.1 Change description

- [ ] N.1.1
  File: <relative/path/to/file>
  Where: <exact location, line range, selector, or function>
  Change:
  ```
  Describe exactly what to add, remove, or replace.
  Include literal code snippets when possible.
  ```
  Reason:
  Explain why this change is required.

Outcome:
State the expected result after this subsection is complete.

---

### N.2 Additional changes (if needed)

Repeat the same structure as N.1.
Do not bundle unrelated changes.

---

### Post-change validation (Section N)

Instructions:
Every change above must have at least one validation step.

- [ ] N.V1
  Command, test, or manual action to verify correctness.

- [ ] N.V2
  Additional validation if applicable.

Outcome:
State what pass looks like.

---

## BUGS / REMEDIATION (OPTIONAL TEMPLATE)

Instructions:
Use only for issues discovered after initial implementation or during testing.

---

### BUG X: <Short description>

- Observed:
  What is broken.

- Expected:
  What should happen.

- Root cause:
  Verified or hypothesized cause.

- Requirement:
  Non-negotiable behavior after fix.

---

### Detailed action plan (BUG X)

Use the same numbered checklist format as implementation sections.

---

### Post-change validation (BUG X)

Explicit verification steps.
No validation means the bug is not resolved.

---

## DOCUMENTATION UPDATES (MANDATORY WHEN PLAN CHANGES)

Instructions:
This section is REQUIRED whenever:
- The plan text changes
- Scope changes
- Behavior changes

For each doc:

- [ ] DOC.X
  File: docs/<file>.md
  Update:
  Describe exactly what must be updated.

---

### Documentation validation

- [ ] DOC.V1
  Confirm documentation matches implementation and plan text.

---

## FINAL OUTCOME

Instructions:
- Summarize the end state in one paragraph.
- Confirm all validation steps have passed.
