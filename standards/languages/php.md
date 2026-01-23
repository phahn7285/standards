=========================================================

languages/php.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# php Standards



\## Standards

\- PHP code MUST prioritize correctness, maintainability, and security.

\- Supported, actively maintained PHP versions MUST be used unless explicitly constrained.

\- Strict typing MUST be enabled where supported.

\- Error reporting MUST be enabled in non-production environments.

\- Fatal errors and warnings MUST be eliminated.

\- Input validation MUST be enforced at all external boundaries.

\- Output encoding MUST be applied to prevent injection vulnerabilities.

\- Dependency management MUST use Composer.

\- Dependencies MUST be version-pinned and audited.

\- Autoloading MUST follow PSR standards.

\- Namespaces MUST be used consistently.

\- Global state MUST be avoided.

\- Configuration MUST be externalized and environment-aware.

\- Secrets MUST NOT be hard-coded.

\- Logging MUST be structured and avoid sensitive data.

\- PHP code MUST follow PSR coding standards.

\- Tests MUST be written for all non-trivial logic per agents/tests.md.

\- PHP usage MUST align with agents/security.md and agents/coding-standards.md.



\## Scope

In scope:

\- PHP application and library code

\- Dependency and package management

\- Runtime configuration and environment handling

\- Error handling and logging

\- Security and validation practices



Out of scope:

\- Infrastructure provisioning specifics (platforms/\*)

\- Web server configuration (languages/nginx.md)

\- Frontend UI concerns unless explicitly scoped



Assumptions:

\- PHP may be used for web applications, APIs, or background processing.

\- Applications may run in shared or containerized environments.

\- Security risks must be actively mitigated.



\## Responsibilities

\- Developers:

&nbsp; - Write secure, maintainable PHP code

&nbsp; - Validate inputs and encode outputs

&nbsp; - Manage dependencies responsibly

&nbsp; - Add tests and validation



\- Reviewers:

&nbsp; - Enforce PSR compliance and security best practices

&nbsp; - Reject unsafe patterns and global state usage



\- DevSecOps:

&nbsp; - Ensure PHP runtime versions are consistent

&nbsp; - Enforce dependency audits and CI validation



\## Usage

\- Apply this file when:

&nbsp; - writing or modifying PHP code

&nbsp; - building PHP-based services or applications

\- This file MUST be composed with:

&nbsp; - agents/coding-standards.md

&nbsp; - agents/tests.md

&nbsp; - agents/security.md

&nbsp; - agents/performance.md when performance-sensitive

\- Test framework specifics MUST be composed from:

&nbsp; - languages/phpunit.md when applicable



\## Structure

\- PHP projects SHOULD follow standard layout:

&nbsp; - src/ for production code

&nbsp; - tests/ for test code

&nbsp; - config/ for configuration

&nbsp; - public/ for web entrypoints

\- Public APIs MUST be clearly separated from internal code.



\## File Decomposition

\- Classes:

&nbsp; - MUST have a single, clear responsibility.

\- Controllers:

&nbsp; - MUST handle request validation and response formatting only.

\- Services:

&nbsp; - MUST encapsulate business logic.

\- Configuration:

&nbsp; - MUST be externalized and validated.

\- Tests:

&nbsp; - MUST validate behavior and edge cases.



\## Application Rules

\- Typing rules:

&nbsp; - Strict types MUST be enabled.

&nbsp; - Type declarations MUST be explicit.

\- Error handling rules:

&nbsp; - Exceptions MUST be used for exceptional conditions.

&nbsp; - Errors MUST NOT be suppressed.

\- Security rules:

&nbsp; - Prevent SQL injection, XSS, and CSRF.

&nbsp; - Validate and sanitize all external inputs.

\- Dependency rules:

&nbsp; - Dependencies MUST be minimal and audited.

\- Performance rules:

&nbsp; - Avoid unnecessary object creation.

\- Verification rules:

&nbsp; - Static analysis SHOULD run in CI when available.

&nbsp; - Unit tests MUST cover critical logic.

&nbsp; - Violations of these standards MUST be treated as defects.



