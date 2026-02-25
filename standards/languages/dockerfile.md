=========================================================

languages/dockerfile.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# dockerfile Standards



\## Standards

\- Dockerfiles MUST produce deterministic, reproducible images.

\- Images MUST be minimal and contain only required dependencies.

\- Multi-stage builds MUST be used to reduce final image size.

\- Base images MUST be explicit, pinned by digest or immutable tag, and approved.

\- Dockerfiles MUST avoid latest tags.

\- Secrets MUST NOT be baked into images.

\- Build-time secrets MUST use secure mechanisms.

\- Runtime configuration MUST be externalized via environment variables or mounted files.

\- Containers MUST run as non-root users unless explicitly justified.

\- File system permissions MUST be least privilege.

\- Images MUST define explicit entrypoints and commands.

\- Health checks MUST be defined where supported.

\- Caching layers MUST be optimized for rebuild efficiency.

\- Package managers MUST clean caches after install.

\- Images MUST include only required ports and exposed services.

\- Dockerfiles MUST be linted and validated.

\- Dockerfile usage MUST align with agents/devsecops.md and agents/security.md.



\## Scope

In scope:

\- Dockerfile authoring and structure

\- Image layering and optimization

\- Build and runtime configuration

\- Security hardening practices

\- Multi-stage build usage



Out of scope:

\- Container orchestration configuration (languages/kubernetes-yaml.md, languages/helm.md)

\- CI pipeline logic (agents/ci-cd.md)

\- Application code standards



Assumptions:

\- Images are built in CI and deployed automatically.

\- Images may run in shared or multi-tenant environments.

\- Image immutability is required.



\## Responsibilities

\- DevSecOps engineers:

&nbsp; - Author and maintain Dockerfiles

&nbsp; - Enforce security and size constraints

&nbsp; - Manage base image selection and updates



\- Developers:

&nbsp; - Ensure application compatibility with containerized execution

&nbsp; - Avoid assumptions about runtime environment



\- Reviewers:

&nbsp; - Validate Dockerfile correctness and security

&nbsp; - Reject unsafe or bloated images



\## Usage

\- Apply this file when:

&nbsp; - creating or modifying Dockerfiles

&nbsp; - containerizing applications or services

\- This file MUST be composed with:

&nbsp; - agents/devsecops.md

&nbsp; - agents/security.md

&nbsp; - agents/repo-hygiene.md

&nbsp; - agents/ci-cd.md

\- Platform-specific deployment standards MUST be composed from platforms/\* when applicable.



\## Structure

\- Dockerfiles SHOULD be located at repository root or within service directories.

\- Multi-stage builds SHOULD separate build and runtime stages.

\- Comments SHOULD explain non-obvious steps.



\## File Decomposition

\- Base image:

&nbsp; - MUST be minimal and pinned.

\- Build stage:

&nbsp; - MUST compile or assemble artifacts only.

\- Runtime stage:

&nbsp; - MUST include only runtime dependencies.

\- Configuration:

&nbsp; - MUST define entrypoint, command, and environment variables.

\- Health checks:

&nbsp; - MUST define application health where applicable.



\## Application Rules

\- Security rules:

&nbsp; - Containers MUST NOT run as root by default.

&nbsp; - Unused packages and tools MUST be removed.

\- Determinism rules:

&nbsp; - Dependency versions MUST be pinned.

\- Size rules:

&nbsp; - Unnecessary layers and files MUST be removed.

\- Configuration rules:

&nbsp; - Environment-specific values MUST NOT be hard-coded.

\- Verification rules:

&nbsp; - Dockerfiles MUST be linted and built in CI.

&nbsp; - Images SHOULD be scanned for vulnerabilities.

&nbsp; - Violations of these standards MUST be treated as defects.



