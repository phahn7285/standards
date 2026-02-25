=========================================================

languages/c.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# c Standards



\## Standards

\- C code MUST prioritize correctness, safety, and portability.

\- Undefined behavior MUST be avoided.

\- Compiler warnings MUST be treated as errors.

\- Code MUST compile cleanly with strict warning levels.

\- Memory allocation and ownership MUST be explicit.

\- All resources MUST be released deterministically.

\- Integer overflow and signedness issues MUST be handled explicitly.

\- Buffer boundaries MUST be validated.

\- String operations MUST use bounded functions and explicit lengths.

\- Pointers MUST be validated before dereference.

\- Null termination MUST be explicit when required.

\- Concurrency MUST be explicit and thread-safe where used.

\- Error handling MUST be explicit and consistent.

\- Return codes MUST be checked.

\- Global mutable state MUST be avoided.

\- API boundaries MUST be explicit and stable.

\- Build configuration MUST be reproducible.

\- Tests MUST be written for all non-trivial logic per agents/tests.md.

\- C code MUST align with agents/security.md and agents/coding-standards.md.



\## Scope

In scope:

\- C language codebases

\- C libraries and shared components

\- Build and compilation practices for C

\- FFI interfaces into or out of C modules



Out of scope:

\- C++ code (languages/cpp.md)

\- Platform-specific build system details beyond standards

\- Operating system kernel development specifics



Assumptions:

\- Code may run on multiple architectures.

\- Performance constraints may be significant.

\- Safety issues can cause security vulnerabilities.



\## Responsibilities

\- Developers:

&nbsp; - Write safe, portable C

&nbsp; - Manage memory and resources correctly

&nbsp; - Add tests and static analysis



\- Reviewers:

&nbsp; - Enforce safety and portability rules

&nbsp; - Reject code that risks undefined behavior



\- DevSecOps:

&nbsp; - Ensure toolchains and CI enforce warnings and analysis



\## Usage

\- Apply this file when:

&nbsp; - writing or modifying C code

&nbsp; - building C libraries or native modules

\- This file MUST be composed with:

&nbsp; - agents/coding-standards.md

&nbsp; - agents/tests.md

&nbsp; - agents/security.md

&nbsp; - agents/performance.md when performance-critical

\- Test framework specifics MUST be composed from languages/catch2.md or languages/googletest.md when applicable.



\## Structure

\- C projects SHOULD separate:

&nbsp; - include/ for public headers

&nbsp; - src/ for implementation

&nbsp; - tests/ for test code

&nbsp; - build/ for generated artifacts (not committed)

\- Public headers MUST be minimal and stable.

\- Internal headers MUST not be exported.



\## File Decomposition

\- Headers:

&nbsp; - MUST declare public APIs and types.

&nbsp; - MUST include include guards or pragma once.

\- Source files:

&nbsp; - MUST implement a cohesive unit of functionality.

&nbsp; - MUST not expose internal symbols unnecessarily.

\- Build files:

&nbsp; - MUST define deterministic compilation flags.

\- Tests:

&nbsp; - MUST validate behavior and edge cases.



\## Application Rules

\- Compiler rules:

&nbsp; - Enable strict warnings and treat warnings as errors.

&nbsp; - Use modern language standard mode when supported.

\- Memory rules:

&nbsp; - Ownership MUST be documented and enforced.

&nbsp; - Use calloc, malloc, realloc safely and check returns.

\- Bounds rules:

&nbsp; - Validate all buffer sizes before write.

&nbsp; - Avoid unsafe string functions.

\- Error handling rules:

&nbsp; - Every function MUST define success and error outcomes.

&nbsp; - Errors MUST propagate with context.

\- Concurrency rules:

&nbsp; - Shared state MUST be protected or eliminated.

\- Security rules:

&nbsp; - Avoid injection, overflow, and memory corruption patterns.

\- Verification rules:

&nbsp; - Unit tests MUST cover critical logic.

&nbsp; - Static analysis MUST run in CI when available.

&nbsp; - Violations of these standards MUST be treated as defects.



