=========================================================

agents/performance.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# performance Standards



\## Standards

\- Performance MUST be considered and validated for all user-facing and critical system paths.

\- Performance requirements MUST be explicit and measurable.

\- Systems MUST define acceptable latency, throughput, and resource usage targets.

\- Performance optimization MUST be driven by measurement, not assumption.

\- Performance regressions MUST be detected and prevented.

\- Systems MUST scale predictably under expected and peak load.

\- Resource consumption MUST be bounded and controlled.

\- Blocking operations MUST be avoided on critical execution paths.

\- Performance testing MUST be automated and repeatable.

\- Performance characteristics MUST be observable in production.

\- Caching MUST be explicit, safe, and invalidation-aware.

\- Concurrency MUST be controlled and safe.

\- Backpressure MUST be implemented where load can exceed capacity.

\- Performance tuning MUST NOT compromise correctness, security, or maintainability.

\- AI and ML workloads MUST define and enforce performance and cost budgets.

\- Performance requirements MUST align with agents/reliability.md and agents/observability.md.



\## Scope

In scope:

\- Application latency and throughput

\- Resource usage (CPU, memory, IO, network)

\- Scalability and load handling

\- Performance testing and benchmarking

\- Caching and concurrency strategies

\- Client-side performance

\- Backend and data pipeline performance

\- AI and ML inference and pipeline performance



Out of scope:

\- Infrastructure provisioning details (agents/devsecops.md, platforms/\*)

\- Vendor-specific performance tuning (platforms/\*)

\- UI design aesthetics



Assumptions:

\- Systems may experience variable load.

\- Performance constraints differ by environment and use case.

\- Performance impacts user experience and system reliability.



\## Responsibilities

\- Application engineers:

&nbsp; - Design and implement performant code paths

&nbsp; - Measure and analyze performance

&nbsp; - Address performance regressions



\- Reviewers:

&nbsp; - Evaluate performance impact of changes

&nbsp; - Reject changes that introduce unmeasured regressions



\- DevSecOps:

&nbsp; - Support load testing and benchmarking infrastructure

&nbsp; - Ensure performance metrics and alerts are available



\## Usage

\- Apply this file when:

&nbsp; - building or modifying performance-critical code

&nbsp; - introducing new components or integrations

&nbsp; - changing algorithms, data access patterns, or concurrency

\- This file MUST be composed with:

&nbsp; - agents/observability.md

&nbsp; - agents/reliability.md

&nbsp; - agents/tests.md

&nbsp; - agents/backend.md or agents/frontend.md as applicable

\- Performance tooling standards MUST be composed from languages/\* when used:

&nbsp; - languages/gatling.md

&nbsp; - languages/jmeter.md

&nbsp; - languages/k6.md



\## Structure

\- Performance tests SHOULD be organized separately from functional tests.

\- Benchmarks SHOULD be version-controlled and reproducible.

\- Configuration MUST support tuning without code changes.

\- Performance-critical paths SHOULD be clearly identified.



\## File Decomposition

\- Performance tests:

&nbsp; - MUST define scenarios, load profiles, and success criteria.

&nbsp; - MUST be repeatable and automated.

\- Benchmarks:

&nbsp; - MUST isolate specific components or algorithms.

&nbsp; - MUST record baseline results.

\- Metrics:

&nbsp; - MUST capture latency, throughput, and error rates.

&nbsp; - MUST capture resource utilization.



\## Application Rules

\- Measurement rules:

&nbsp; - Performance changes MUST be measured before and after.

&nbsp; - Baselines MUST be established and maintained.

\- Regression rules:

&nbsp; - CI SHOULD detect significant performance regressions.

&nbsp; - Regressions MUST be investigated and resolved.

\- Scalability rules:

&nbsp; - Systems MUST handle expected peak load without degradation.

&nbsp; - Load shedding or backpressure MUST exist when limits are exceeded.

\- Caching rules:

&nbsp; - Caches MUST have explicit invalidation strategies.

&nbsp; - Cached data MUST respect security and privacy constraints.

\- Concurrency rules:

&nbsp; - Concurrent access MUST be safe and controlled.

&nbsp; - Resource contention MUST be minimized.

\- AI performance rules:

&nbsp; - Inference latency and cost MUST be monitored.

&nbsp; - Long-running or expensive AI operations MUST be bounded.

\- Verification rules:

&nbsp; - Performance requirements MUST be validated before release.

&nbsp; - Violations of these standards MUST be treated as defects.



