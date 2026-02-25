=========================================================

languages/erlang.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# erlang Standards



\## Standards

\- Erlang code MUST prioritize correctness, fault tolerance, and concurrency safety.

\- OTP principles MUST be followed for all non-trivial systems.

\- Processes MUST be isolated and communicate only via message passing.

\- Shared mutable state MUST be avoided.

\- Supervision trees MUST be explicitly designed and documented.

\- Failures MUST be expected and handled through supervision, not defensive logic.

\- Functions MUST be small, focused, and pure where possible.

\- Pattern matching MUST be explicit and exhaustive where feasible.

\- Timeouts MUST be defined for external calls and long-running operations.

\- Blocking operations MUST NOT run in scheduler processes.

\- Hot code upgrades MUST be considered where systems require high availability.

\- Configuration MUST be externalized and environment-aware.

\- Secrets MUST NOT be hard-coded and MUST use secure configuration mechanisms.

\- Logging MUST be structured and meaningful.

\- Tests MUST be written for all non-trivial logic per agents/tests.md.

\- Erlang usage MUST align with agents/reliability.md and agents/security.md.



\## Scope

In scope:

\- Erlang application and library code

\- OTP behaviors such as gen\_server, supervisor, and application

\- Concurrency and distribution patterns

\- Fault tolerance and recovery

\- Configuration and runtime behavior

\- Testing and validation practices



Out of scope:

\- Infrastructure provisioning specifics (platforms/\*)

\- UI or frontend concerns

\- Non-OTP legacy patterns unless explicitly required



Assumptions:

\- Systems are long-running and highly concurrent.

\- Failures are normal and expected.

\- Distributed execution may be required.



\## Responsibilities

\- Developers:

&nbsp; - Write idiomatic Erlang code

&nbsp; - Design supervision trees and process boundaries

&nbsp; - Avoid blocking and unsafe operations

&nbsp; - Add tests and validation



\- Reviewers:

&nbsp; - Enforce OTP design and concurrency best practices

&nbsp; - Reject designs that bypass supervision or isolation



\- DevSecOps:

&nbsp; - Ensure runtime configuration and secrets management

&nbsp; - Monitor system behavior and resource usage



\## Usage

\- Apply this file when:

&nbsp; - writing or modifying Erlang code

&nbsp; - building concurrent, distributed, or fault-tolerant systems

\- This file MUST be composed with:

&nbsp; - agents/tests.md

&nbsp; - agents/reliability.md

&nbsp; - agents/security.md

&nbsp; - agents/observability.md

\- Interoperability standards MUST be composed with:

&nbsp; - languages/elixir.md when applicable



\## Structure

\- Erlang projects SHOULD follow standard OTP layout:

&nbsp; - src/ for application code

&nbsp; - include/ for header files

&nbsp; - test/ for test code

\- Applications MUST define clear supervision trees.

\- Public APIs MUST be separated from internal modules.



\## File Decomposition

\- Application modules:

&nbsp; - MUST define startup behavior and application lifecycle.

\- Supervisors:

&nbsp; - MUST define child specifications and restart strategies.

\- Workers:

&nbsp; - MUST encapsulate isolated state and behavior.

\- Configuration:

&nbsp; - MUST be environment-specific and externalized.

\- Tests:

&nbsp; - MUST validate behavior, concurrency, and failure handling.



\## Application Rules

\- Supervision rules:

&nbsp; - All long-lived processes MUST be supervised.

&nbsp; - Restart strategies MUST be intentional and documented.

\- Concurrency rules:

&nbsp; - Avoid blocking operations in gen\_server callbacks.

&nbsp; - Use separate processes for long-running or async work.

\- Pattern matching rules:

&nbsp; - Handle unexpected messages explicitly.

\- Configuration rules:

&nbsp; - Runtime configuration MUST be loaded at startup.

\- Security rules:

&nbsp; - Validate and sanitize external inputs.

\- Verification rules:

&nbsp; - Unit tests MUST cover critical logic.

&nbsp; - Failure scenarios MUST be tested.

&nbsp; - Violations of these standards MUST be treated as defects.



