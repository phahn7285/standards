=========================================================

languages/cpp.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# cpp Standards



\## Standards

\- C++ code MUST prioritize correctness, safety, and maintainability.

\- Modern C++ standards (C++17 or newer) MUST be used unless explicitly constrained.

\- RAII MUST be the primary mechanism for resource management.

\- Raw memory management with new and delete MUST be avoided except in tightly controlled low-level code.

\- Smart pointers MUST be used to express ownership semantics.

\- Object lifetimes MUST be explicit and deterministic.

\- Undefined behavior MUST be avoided.

\- Compiler warnings MUST be enabled at strict levels and treated as errors.

\- Exceptions MUST be used intentionally and consistently, or explicitly disallowed by policy.

\- Exception safety guarantees MUST be documented for public APIs.

\- Standard library containers and algorithms MUST be preferred over custom implementations.

\- Const-correctness MUST be enforced.

\- Copy and move semantics MUST be explicitly defined when relevant.

\- Global mutable state MUST be avoided.

\- Thread safety MUST be explicit and documented.

\- Concurrency primitives MUST be used correctly and minimally.

\- Build configuration MUST be reproducible.

\- Tests MUST be written for all non-trivial logic per agents/tests.md.

\- C++ code MUST align with agents/security.md and agents/coding-standards.md.



\## Scope

In scope:

\- C++ application and library code

\- Header and source file organization

\- Memory and resource management

\- Exception and error handling

\- Concurrency and synchronization

\- Build and compilation practices for C++



Out of scope:

\- C language code (languages/c.md)

\- Platform-specific toolchain details beyond standards

\- Kernel or embedded firmware specifics unless explicitly scoped



Assumptions:

\- Code may run in long-lived processes.

\- Performance characteristics matter.

\- Safety and correctness are critical.



\## Responsibilities

\- Developers:

&nbsp; - Write modern, safe C++ code

&nbsp; - Use RAII and standard library facilities

&nbsp; - Define ownership and lifetime clearly

&nbsp; - Add tests and static analysis



\- Reviewers:

&nbsp; - Enforce modern C++ best practices

&nbsp; - Reject unsafe memory or concurrency patterns



\- DevSecOps:

&nbsp; - Ensure toolchains, compilers, and CI enforce standards



\## Usage

\- Apply this file when:

&nbsp; - writing or modifying C++ code

&nbsp; - building libraries or services in C++

\- This file MUST be composed with:

&nbsp; - agents/coding-standards.md

&nbsp; - agents/tests.md

&nbsp; - agents/security.md

&nbsp; - agents/performance.md when performance-critical

\- Test framework specifics MUST be composed from:

&nbsp; - languages/catch2.md or languages/googletest.md when applicable



\## Structure

\- C++ projects SHOULD separate:

&nbsp; - include/ for public headers

&nbsp; - src/ for implementation

&nbsp; - tests/ for test code

&nbsp; - build/ for generated artifacts (not committed)

\- Public headers MUST define stable APIs.

\- Implementation details MUST be hidden from public headers.



\## File Decomposition

\- Headers:

&nbsp; - MUST declare interfaces and types.

&nbsp; - MUST minimize includes and dependencies.

&nbsp; - MUST use include guards or pragma once.

\- Source files:

&nbsp; - MUST implement cohesive functionality.

&nbsp; - MUST avoid unnecessary symbol exports.

\- Build files:

&nbsp; - MUST define deterministic compilation flags.

\- Tests:

&nbsp; - MUST validate behavior, error handling, and edge cases.



\## Application Rules

\- Memory rules:

&nbsp; - Use std::unique\_ptr for exclusive ownership.

&nbsp; - Use std::shared\_ptr only when shared ownership is required.

&nbsp; - Raw pointers MUST NOT imply ownership.

\- Exception rules:

&nbsp; - Public APIs MUST document exception behavior.

&nbsp; - Destructors MUST NOT throw.

\- Const rules:

&nbsp; - Functions and parameters MUST be const where applicable.

\- Template rules:

&nbsp; - Templates MUST be constrained and documented.

\- Concurrency rules:

&nbsp; - Shared state MUST be protected or eliminated.

&nbsp; - Data races MUST be prevented.

\- Security rules:

&nbsp; - Avoid buffer overflows, injection, and unsafe casts.

\- Verification rules:

&nbsp; - Unit tests MUST cover critical logic.

&nbsp; - Static analysis MUST run in CI when available.

&nbsp; - Violations of these standards MUST be treated as defects.



