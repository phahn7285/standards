=========================================================

languages/kubernetes-yaml.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# kubernetes-yaml Standards



\## Standards

\- Kubernetes YAML MUST be used only for declarative resource definitions.

\- Manifests MUST be deterministic, reproducible, and idempotent.

\- API versions MUST be explicit and supported.

\- Deprecated API versions MUST NOT be used.

\- Resource requests and limits MUST be defined for all containers.

\- Containers MUST run as non-root users unless explicitly justified.

\- Security contexts MUST be defined explicitly.

\- Secrets MUST NOT be embedded in plaintext manifests.

\- ConfigMaps MUST be used for non-sensitive configuration.

\- Labels and annotations MUST be consistent and meaningful.

\- Resource names MUST be deterministic and environment-aware.

\- Health probes MUST be defined for long-running containers.

\- Liveness and readiness probes MUST be distinct and intentional.

\- Image references MUST be pinned to immutable tags or digests.

\- YAML MUST be valid, well-formatted, and schema-compliant.

\- Kubernetes YAML MUST align with agents/devsecops.md and agents/security.md.



\## Scope

In scope:

\- Kubernetes resource manifests

\- Workload definitions

\- Service and networking configuration

\- Configuration and secret references

\- Security and runtime configuration



Out of scope:

\- Kubernetes cluster provisioning (platforms/\*)

\- Helm templating logic (languages/helm.md)

\- CI pipeline logic (agents/ci-cd.md)



Assumptions:

\- Manifests are applied via automated pipelines.

\- Environments are separated logically or physically.

\- Kubernetes is the target orchestration platform.



\## Responsibilities

\- DevSecOps engineers:

&nbsp; - Author and maintain Kubernetes manifests

&nbsp; - Enforce security and resource constraints

&nbsp; - Validate API compatibility



\- Developers:

&nbsp; - Ensure applications expose health endpoints

&nbsp; - Support configurable runtime behavior



\- Reviewers:

&nbsp; - Validate manifest correctness and security

&nbsp; - Reject unsafe defaults and deprecated APIs



\## Usage

\- Apply this file when:

&nbsp; - creating or modifying Kubernetes YAML manifests

&nbsp; - deploying workloads directly via kubectl or GitOps tools

\- This file MUST be composed with:

&nbsp; - agents/devsecops.md

&nbsp; - agents/security.md

&nbsp; - agents/repo-hygiene.md

\- Platform-specific standards MUST be composed with platforms/\* when applicable.



\## Structure

\- Manifests SHOULD be organized by:

&nbsp; - application

&nbsp; - environment

&nbsp; - resource type

\- One file SHOULD define a small, cohesive set of related resources.



\## File Decomposition

\- Workloads:

&nbsp; - MUST define deployments, statefulsets, or jobs explicitly.

\- Services:

&nbsp; - MUST define stable networking interfaces.

\- ConfigMaps:

&nbsp; - MUST define non-sensitive configuration.

\- Secrets:

&nbsp; - MUST reference external secret management where possible.

\- Ingress:

&nbsp; - MUST define routing and TLS behavior explicitly.



\## Application Rules

\- Resource rules:

&nbsp; - CPU and memory requests and limits MUST be set.

\- Security rules:

&nbsp; - Privileged containers MUST be avoided.

&nbsp; - Pod security contexts MUST be explicit.

\- Image rules:

&nbsp; - Images MUST be immutable and scanned.

\- Health rules:

&nbsp; - Probes MUST reflect real application health.

\- Validation rules:

&nbsp; - Manifests MUST pass schema validation.

\- Verification rules:

&nbsp; - Changes MUST be tested in non-production environments.

&nbsp; - Violations of these standards MUST be treated as defects.



