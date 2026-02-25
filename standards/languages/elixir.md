=========================================================

languages/elixir.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# elixir Standards



\## Standards

\- Elixir code MUST prioritize correctness, fault tolerance, and clarity.

\- OTP principles MUST be followed for concurrent and distributed systems.

\- Processes MUST be isolated and communicate via message passing.

\- Shared mutable state MUST be avoided.

\- Supervision trees MUST be explicitly designed and documented.

\- Failures MUST be expected and handled through supervision, not defensive coding.

\- Functions MUST be small, pure where possible, and focused.

\- Pattern matching MUST be used intentionally and safely.

\- Explicit return values MUST be used; side effects MUST be minimized.

\- Timeouts MUST be defined for external calls and long-running operations.

\- Blocking operations MUST NOT run in the BEAM scheduler.

\- Configuration MUST be externalized and environment-aware.

\- Secrets MUST NOT be hard-coded and MUST use secure configuration mechanisms.

\- Logging MUST be structured and meaningful.

\- Tests MUST be written for all non-trivial logic per agents/tests.md.

\- Elixir usage MUST align with agents/reliability.md and agents/security.md.



\## Scope

In scope:

\- Elixir application and library code

\- OTP behaviors such as GenServer, Supervisor, and Application

\- Concurrency and fault tolerance patterns

\- Configuration and runtime behavior

\- Testing and validation practices



Out of scope:

\- Erlang language specifics beyond interoperability

\- Infrastructure provisioning specifics (platforms/\*)

\- UI or frontend concerns



Assumptions:

\- Systems are expected to run continuously.

\- Fault tolerance and concurrency are core requirements.

\- Distributed execution may be required.



\## Responsibilities

\- Developers:

&nbsp; - Write idiomatic Elixir code

&nbsp; - Design supervision trees and process boundaries

&nbsp; - Avoid blocking and unsafe patterns

&nbsp; - Add tests and validation



\- Reviewers:

&nbsp; - Enforce OTP and concurrency best practices

&nbsp; - Reject designs that bypass supervision or isolation



\- DevSecOps:

&nbsp; - Ensure runtime configuration and secrets management

&nbsp; - Monitor system behavior and resource usage



\## Usage

\- Apply this file when:

&nbsp; - writing or modifying Elixir code

&nbsp; - building concurrent or fault-tolerant services

\- This file MUST be composed with:

&nbsp; - agents/tests.md

&nbsp; - agents/reliability.md

&nbsp; - agents/security.md

&nbsp; - agents/observability.md

\- Interoperability standards MUST be composed with languages/erlang.md when applicable.



\## Structure

\- Elixir projects SHOULD follow standard Mix layout:

&nbsp; - lib/ for application code

&nbsp; - test/ for test code

&nbsp; - config/ for configuration

\- Applications MUST define a clear supervision tree.

\- Public APIs MUST be separated from internal modules.



\## File Decomposition

\- Application modules:

&nbsp; - MUST define startup behavior and supervision.

\- Supervisors:

&nbsp; - MUST define child strategies and restart policies.

\- Workers:

&nbsp; - MUST encapsulate isolated state and behavior.

\- Configuration:

&nbsp; - MUST be environment-specific and externalized.

\- Tests:

&nbsp; - MUST validate behavior, concurrency, and failure handling.



\## Application Rules

\- Supervision rules:

&nbsp; - All long-lived processes MUST be supervised.

&nbsp; - Restart strategies MUST be intentional.

\- Concurrency rules:

&nbsp; - Avoid blocking operations in GenServer callbacks.

&nbsp; - Use Task or separate processes for async work.

\- Pattern matching rules:

&nbsp; - Exhaustive matches MUST be considered.

\- Configuration rules:

&nbsp; - Runtime configuration MUST be loaded at startup.

\- Security rules:

&nbsp; - Validate external inputs.

\- Verification rules:

&nbsp; - Unit tests MUST cover critical logic.

&nbsp; - Fault scenarios MUST be tested.

&nbsp; - Violations of these standards MUST be treated as defects.



