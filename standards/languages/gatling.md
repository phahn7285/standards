=========================================================

languages/gatling.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# gatling Standards



\## Standards

\- Gatling MUST be used for performance and load testing of services and APIs where selected.

\- Load tests MUST model realistic user behavior and traffic patterns.

\- Test scenarios MUST be deterministic and repeatable.

\- Assertions MUST define explicit pass or fail criteria.

\- Load profiles MUST be explicitly defined and documented.

\- Tests MUST avoid hard-coded environment assumptions.

\- Sensitive data MUST NOT be embedded in test scripts.

\- Test data MUST be synthetic or anonymized.

\- Warm-up periods MUST be included where appropriate.

\- Results MUST be collected, stored, and analyzed consistently.

\- Performance regressions MUST block release when thresholds are violated.

\- Gatling usage MUST align with agents/performance.md and agents/tests.md.



\## Scope

In scope:

\- Load, stress, and soak testing

\- API and service performance validation

\- Traffic modeling and scenario definition

\- Assertion and threshold definition

\- Result collection and reporting



Out of scope:

\- Functional correctness testing

\- UI or browser-based testing

\- Infrastructure capacity provisioning

\- Production monitoring and alerting



Assumptions:

\- Performance characteristics are measurable in test environments.

\- CI or dedicated environments execute performance tests.

\- Performance targets are defined.



\## Responsibilities

\- Performance engineers:

&nbsp; - Design realistic load scenarios

&nbsp; - Define performance thresholds

&nbsp; - Analyze results and trends



\- Application engineers:

&nbsp; - Address performance regressions

&nbsp; - Optimize code and configuration



\- Reviewers:

&nbsp; - Validate scenario realism and coverage

&nbsp; - Reject inadequate or misleading tests



\- DevSecOps:

&nbsp; - Provide stable test environments

&nbsp; - Integrate Gatling into pipelines where appropriate



\## Usage

\- Apply this file when:

&nbsp; - validating service performance

&nbsp; - introducing performance-sensitive changes

\- This file MUST be composed with:

&nbsp; - agents/performance.md

&nbsp; - agents/tests.md

&nbsp; - agents/ci-cd.md

\- API contract standards MUST be composed with:

&nbsp; - agents/api-contracts.md when applicable



\## Structure

\- Gatling projects SHOULD follow standard layout:

&nbsp; - simulations/ for test scenarios

&nbsp; - data/ for feeders and test data

&nbsp; - resources/ for configuration

&nbsp; - results/ for generated reports (not committed)

\- Simulation classes MUST be named descriptively.



\## File Decomposition

\- Simulations:

&nbsp; - MUST define scenarios, injection profiles, and assertions.

\- Scenarios:

&nbsp; - MUST model realistic user journeys.

\- Feeders:

&nbsp; - MUST provide controlled and repeatable data.

\- Assertions:

&nbsp; - MUST define latency, throughput, and error thresholds.

\- Configuration:

&nbsp; - MUST define base URLs, protocols, and timeouts.



\## Application Rules

\- Scenario rules:

&nbsp; - Avoid unrealistic burst traffic unless explicitly testing stress limits.

\- Injection rules:

&nbsp; - Load ramps MUST be gradual unless otherwise justified.

\- Assertion rules:

&nbsp; - Tests MUST fail on threshold violations.

\- Data rules:

&nbsp; - Use parameterized feeders instead of hard-coded values.

\- Reporting rules:

&nbsp; - Results MUST be reviewed and retained per policy.

\- Verification rules:

&nbsp; - Performance tests MUST be reviewed regularly.

&nbsp; - Violations of these standards MUST be treated as defects.



