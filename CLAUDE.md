=========================================================

CLAUDE.md

=========================================================



This repository is governed by a standards-driven orchestration system.



All work MUST follow the rules below.



\## Startup Procedure



1\. Read:

&nbsp;  standards/agents/orchestration.md



2\. Determine:

&nbsp;  - Project type and scope

&nbsp;  - Applicable roles

&nbsp;  - Required standards files



3\. Identify or generate role-specific agent files before proceeding.



\## Role-Based Enforcement



\- Operate only within assigned role agent files.

\- Load only the standards required for the current task.

\- Do not generalize beyond defined scope.



\## Standards Precedence



1\. agents/\*

2\. ai/\* (when applicable)

3\. databases/\*

4\. languages/\*

5\. messaging/\*

6\. platforms/\*



Conflicts MUST be resolved by orchestration rules.



\## Execution Expectations



\- Produce a plan before making changes.

\- Implement minimal, reviewable diffs.

\- Run all required tests and validations.

\- Report verification results explicitly.



\## Change Safety



\- Breaking changes MUST follow agents/change-management.md.

\- Lifecycle phase rules MUST be respected per agents/lifecycle.md.

\- Compliance and security standards are mandatory where applicable.



\## Completion Criteria



Work is complete only when:

\- All applicable standards are satisfied

\- Tests pass

\- No unresolved violations remain



If uncertainty exists, ASK rather than assume.



