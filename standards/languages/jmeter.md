=========================================================

languages/jmeter.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# jmeter Standards



\## Standards

\- JMeter MUST be used for load, stress, and performance testing where selected.

\- Test plans MUST model realistic user behavior and traffic patterns.

\- Test plans MUST be deterministic and repeatable.

\- Assertions MUST define explicit pass or fail criteria.

\- Thread groups MUST be explicitly configured and documented.

\- Ramp-up, duration, and concurrency MUST be intentional.

\- Hard-coded environment assumptions MUST be avoided.

\- Sensitive data MUST NOT be embedded in test plans.

\- Test data MUST be synthetic or anonymized.

\- Correlation MUST be handled correctly for dynamic values.

\- Timers MUST be used intentionally and not to mask performance issues.

\- Results MUST be collected and analyzed consistently.

\- Performance regressions MUST block release when thresholds are violated.

\- JMeter usage MUST align with agents/performance.md and agents/tests.md.



\## Scope

In scope:

\- Load, stress, and soak testing

\- API and service performance validation

\- Test plan design and execution

\- Assertion and threshold definition

\- Result collection and analysis



Out of scope:

\- Functional correctness testing

\- UI browser automation

\- Infrastructure capacity provisioning

\- Production monitoring and alerting



Assumptions:

\- Performance can be measured in non-production environments.

\- Test environments approximate production behavior.

\- Performance targets are defined.



\## Responsibilities

\- Performance engineers:

&nbsp; - Design realistic JMeter test plans

&nbsp; - Define performance thresholds

&nbsp; - Analyze test results and trends



\- Application engineers:

&nbsp; - Address identified performance bottlenecks

&nbsp; - Optimize code and configuration



\- Reviewers:

&nbsp; - Validate realism and correctness of test plans

&nbsp; - Reject misleading or ineffective tests



\- DevSecOps:

&nbsp; - Provide stable test environments

&nbsp; - Integrate JMeter into CI or scheduled pipelines



\## Usage

\- Apply this file when:

&nbsp; - validating application or service performance

&nbsp; - introducing performance-sensitive changes

\- This file MUST be composed with:

&nbsp; - agents/performance.md

&nbsp; - agents/tests.md

&nbsp; - agents/ci-cd.md

\- API contract standards MUST be composed with:

&nbsp; - agents/api-contracts.md when applicable



\## Structure

\- JMeter projects SHOULD be organized with:

&nbsp; - testplans/ for .jmx files

&nbsp; - data/ for CSV or external data sources

&nbsp; - results/ for output artifacts (not committed)

\- Test plans MUST be named descriptively.



\## File Decomposition

\- Test plans:

&nbsp; - MUST define thread groups, samplers, and assertions.

\- Thread groups:

&nbsp; - MUST define concurrency and ramp-up behavior.

\- Samplers:

&nbsp; - MUST define request logic.

\- Assertions:

&nbsp; - MUST validate response correctness and performance.

\- Listeners:

&nbsp; - MUST be limited in CI to avoid overhead.



\## Application Rules

\- Load modeling rules:

&nbsp; - Avoid unrealistic spike patterns unless explicitly testing limits.

\- Correlation rules:

&nbsp; - Dynamic values MUST be extracted and reused correctly.

\- Assertion rules:

&nbsp; - Tests MUST fail on threshold violations.

\- Data rules:

&nbsp; - Use parameterized data sources.

\- Reporting rules:

&nbsp; - Results MUST be reviewed and retained per policy.

\- Verification rules:

&nbsp; - Performance tests MUST be reviewed regularly.

&nbsp; - Violations of these standards MUST be treated as defects.



