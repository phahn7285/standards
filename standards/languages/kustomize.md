=========================================================

languages/kustomize.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# kustomize Standards



\## Standards

\- Kustomize MUST be used for Kubernetes manifest customization where selected.

\- Base manifests MUST be environment-agnostic.

\- Overlays MUST define environment-specific customization only.

\- No templating logic MUST be embedded in base manifests.

\- Overlays MUST be minimal, explicit, and intentional.

\- Resource names MUST remain deterministic across overlays.

\- Patches MUST be targeted and narrowly scoped.

\- Secrets MUST NOT be embedded in plaintext and MUST reference secure secret mechanisms.

\- Labels and annotations MUST be applied consistently.

\- Generated resources MUST be predictable and reviewable.

\- Kustomize builds MUST be deterministic.

\- Kustomize usage MUST align with agents/devsecops.md and agents/security.md.



\## Scope

In scope:

\- Kubernetes manifest customization

\- Environment-specific overlays

\- Resource patching and composition

\- Configuration and secret references

\- Validation and build practices



Out of scope:

\- Kubernetes resource authoring rules (languages/kubernetes-yaml.md)

\- Helm templating (languages/helm.md)

\- CI pipeline logic (agents/ci-cd.md)



Assumptions:

\- Base Kubernetes manifests already exist.

\- Multiple environments require controlled customization.

\- Manifests are applied via automated pipelines or GitOps.



\## Responsibilities

\- DevSecOps engineers:

&nbsp; - Author and maintain Kustomize bases and overlays

&nbsp; - Ensure deterministic and secure customization

&nbsp; - Prevent environment leakage into base manifests



\- Developers:

&nbsp; - Ensure applications support configuration via manifests

&nbsp; - Avoid embedding environment assumptions in code



\- Reviewers:

&nbsp; - Validate overlay minimalism and correctness

&nbsp; - Reject overly broad or unsafe patches



\## Usage

\- Apply this file when:

&nbsp; - customizing Kubernetes manifests across environments

&nbsp; - managing environment-specific configuration

\- This file MUST be composed with:

&nbsp; - agents/devsecops.md

&nbsp; - agents/security.md

&nbsp; - agents/repo-hygiene.md

&nbsp; - languages/kubernetes-yaml.md

\- Platform-specific standards MUST be composed with platforms/\* when applicable.



\## Structure

\- Kustomize projects MUST follow standard layout:

&nbsp; - base/ for environment-agnostic resources

&nbsp; - overlays/ for environment-specific customization

\- Each overlay MUST correspond to a single environment.



\## File Decomposition

\- Base:

&nbsp; - MUST define core Kubernetes resources.

\- Overlays:

&nbsp; - MUST define patches, name prefixes, or configuration changes.

\- kustomization.yaml:

&nbsp; - MUST explicitly list resources and patches.

\- Patches:

&nbsp; - MUST target specific resources and fields.



\## Application Rules

\- Separation rules:

&nbsp; - Environment-specific values MUST NOT appear in base.

\- Patch rules:

&nbsp; - Avoid patching entire resources when partial patches suffice.

\- Naming rules:

&nbsp; - Name prefixes and suffixes MUST be consistent.

\- Secret rules:

&nbsp; - Secrets MUST be referenced, not defined.

\- Validation rules:

&nbsp; - kustomize build MUST succeed without warnings.

\- Verification rules:

&nbsp; - Rendered manifests MUST be reviewed before application.

&nbsp; - Violations of these standards MUST be treated as defects.



