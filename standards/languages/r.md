=========================================================

languages/r.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# r Standards



\## Standards

\- R code MUST prioritize correctness, reproducibility, and clarity.

\- Supported, actively maintained R versions MUST be used unless explicitly constrained.

\- Code MUST follow consistent formatting and naming conventions.

\- Scripts MUST be deterministic and reproducible.

\- Randomness MUST use explicit seeds when reproducibility is required.

\- Data transformations MUST be explicit and traceable.

\- Side effects MUST be minimized.

\- Global state MUST be avoided where feasible.

\- Functions MUST be small, focused, and composable.

\- Input data MUST be validated at boundaries.

\- Missing values MUST be handled explicitly.

\- Vectorized operations MUST be preferred over implicit loops where appropriate.

\- Performance-sensitive code MUST be profiled and optimized intentionally.

\- Package dependencies MUST be explicit and version-controlled.

\- Package namespaces MUST be used explicitly.

\- Configuration MUST be externalized and environment-aware.

\- Sensitive data MUST NOT be hard-coded or logged.

\- Scripts MUST fail fast on invalid inputs or states.

\- Tests MUST be written for all non-trivial logic per agents/tests.md.

\- R usage MUST align with agents/data-ml.md, agents/security.md, and agents/coding-standards.md.



\## Scope

In scope:

\- R scripts and functions

\- Data analysis and statistical computation

\- Data transformation and visualization

\- Package usage and dependency management

\- Reproducible research workflows



Out of scope:

\- Infrastructure provisioning specifics (platforms/\*)

\- Frontend UI concerns

\- Non-R runtime integration unless explicitly scoped



Assumptions:

\- R may be used for data analysis, statistics, reporting, or ML workflows.

\- Reproducibility and correctness are critical.

\- Code may be executed locally, in CI, or in batch environments.



\## Responsibilities

\- Developers:

&nbsp; - Write clear, reproducible R code

&nbsp; - Validate inputs and handle missing data explicitly

&nbsp; - Manage package dependencies responsibly

&nbsp; - Add tests and validation



\- Reviewers:

&nbsp; - Enforce reproducibility, clarity, and correctness

&nbsp; - Reject hidden state, implicit assumptions, and non-determinism



\- DevSecOps:

&nbsp; - Ensure R versions and package environments are consistent

&nbsp; - Enforce reproducible execution in CI or batch environments



\## Usage

\- Apply this file when:

&nbsp; - writing or modifying R scripts or functions

&nbsp; - performing data analysis, reporting, or modeling

\- This file MUST be composed with:

&nbsp; - agents/data-ml.md

&nbsp; - agents/tests.md

&nbsp; - agents/security.md

&nbsp; - agents/coding-standards.md

&nbsp; - agents/performance.md when performance-sensitive



\## Structure

\- R projects SHOULD follow standard layout:

&nbsp; - R/ for functions and reusable code

&nbsp; - scripts/ for executable workflows

&nbsp; - tests/ for test code

&nbsp; - data/ for input data references

\- Scripts MUST separate data loading, processing, and output stages clearly.



\## File Decomposition

\- Scripts:

&nbsp; - MUST define clear entry points and execution flow.

\- Functions:

&nbsp; - MUST encapsulate reusable logic.

\- Data handling:

&nbsp; - MUST validate structure, types, and missing values.

\- Configuration:

&nbsp; - MUST be externalized and validated.

\- Tests:

&nbsp; - MUST validate behavior, edge cases, and reproducibility.



\## Application Rules

\- Reproducibility rules:

&nbsp; - Set seeds explicitly where randomness is used.

&nbsp; - Avoid reliance on implicit environment state.

\- Data rules:

&nbsp; - Validate inputs before processing.

&nbsp; - Handle missing and invalid values explicitly.

\- Dependency rules:

&nbsp; - Pin package versions where feasible.

\- Performance rules:

&nbsp; - Profile before optimizing.

\- Security rules:

&nbsp; - Avoid unsafe deserialization or untrusted code execution.

\- Verification rules:

&nbsp; - Unit tests MUST cover critical logic.

&nbsp; - Reproducible runs MUST be verifiable.

&nbsp; - Violations of these standards MUST be treated as defects.



