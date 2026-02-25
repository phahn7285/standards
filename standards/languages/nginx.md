=========================================================

languages/nginx.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# nginx Standards



\## Standards

\- NGINX MUST be used as a reverse proxy, load balancer, or edge server where selected.

\- Configuration MUST be deterministic, readable, and version-controlled.

\- Configuration files MUST be validated before deployment.

\- Default configurations MUST be secure by default.

\- Least privilege MUST be applied to worker processes and file access.

\- TLS MUST be enforced for external traffic where applicable.

\- Deprecated directives MUST NOT be used.

\- Configuration MUST avoid duplication and conflicting directives.

\- Logging MUST be enabled and structured.

\- Access and error logs MUST be defined explicitly.

\- Timeouts MUST be defined explicitly.

\- Buffer sizes MUST be defined intentionally.

\- Upstream definitions MUST be explicit and stable.

\- Secrets and private keys MUST be stored securely and referenced safely.

\- NGINX usage MUST align with agents/security.md and agents/platform.md.



\## Scope

In scope:

\- Reverse proxy configuration

\- Load balancing configuration

\- TLS termination

\- Routing and rewrites

\- Security headers and access control

\- Logging and observability configuration



Out of scope:

\- Application runtime logic

\- Container orchestration specifics (languages/kubernetes-yaml.md)

\- CI pipeline logic (agents/ci-cd.md)



Assumptions:

\- NGINX runs in production or edge environments.

\- Configuration changes are deployed via automation.

\- High availability and security are required.



\## Responsibilities

\- DevSecOps engineers:

&nbsp; - Author and maintain NGINX configuration

&nbsp; - Enforce secure defaults and performance tuning

&nbsp; - Validate configuration correctness



\- Developers:

&nbsp; - Define application routing requirements

&nbsp; - Expose appropriate health endpoints



\- Reviewers:

&nbsp; - Validate configuration safety and correctness

&nbsp; - Reject insecure or ambiguous directives



\## Usage

\- Apply this file when:

&nbsp; - creating or modifying NGINX configuration

&nbsp; - configuring reverse proxy or load balancing behavior

\- This file MUST be composed with:

&nbsp; - agents/security.md

&nbsp; - agents/platform.md

&nbsp; - agents/observability.md

\- Deployment-specific standards MUST be composed with platforms/\* when applicable.



\## Structure

\- Configuration SHOULD be modularized:

&nbsp; - main nginx.conf for global settings

&nbsp; - conf.d/ or sites-enabled/ for server blocks

\- Environment-specific configuration SHOULD be separated.

\- Includes MUST be explicit and readable.



\## File Decomposition

\- Global configuration:

&nbsp; - MUST define worker processes, logging, and security defaults.

\- Server blocks:

&nbsp; - MUST define hostnames, TLS, and routing.

\- Upstreams:

&nbsp; - MUST define backend services and load balancing strategy.

\- Location blocks:

&nbsp; - MUST define request handling and proxying rules.

\- TLS configuration:

&nbsp; - MUST define certificates, protocols, and ciphers.



\## Application Rules

\- Security rules:

&nbsp; - TLS versions and ciphers MUST be explicitly defined.

&nbsp; - Security headers MUST be configured where applicable.

\- Performance rules:

&nbsp; - Worker processes and connections MUST be tuned intentionally.

\- Routing rules:

&nbsp; - Avoid ambiguous or overlapping location blocks.

\- Logging rules:

&nbsp; - Logs MUST provide sufficient detail for troubleshooting.

\- Validation rules:

&nbsp; - nginx -t MUST pass before deployment.

\- Verification rules:

&nbsp; - Configuration changes MUST be tested in non-production environments.

&nbsp; - Violations of these standards MUST be treated as defects.



