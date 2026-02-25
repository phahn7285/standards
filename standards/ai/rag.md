=========================================================

ai/rag.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# rag Standards



\## Standards

\- Retrieval-augmented generation MUST ground outputs in retrieved source material.

\- Retrieval and generation concerns MUST be explicitly separated.

\- Retrieved content MUST be validated before use in generation.

\- RAG systems MUST define and enforce relevance thresholds.

\- Source documents MUST be versioned and traceable.

\- RAG pipelines MUST handle missing, incomplete, or low-relevance retrieval safely.

\- Retrieved content MUST be constrained to approved data sources.

\- RAG outputs MUST cite or reference retrieved context when required.

\- RAG systems MUST prevent hallucination beyond retrieved context where grounding is required.

\- Embedding generation MUST be deterministic for the same input and configuration.

\- Vector indexes MUST be versioned and reproducible.

\- RAG systems MUST be observable and testable.

\- RAG systems MUST enforce security, privacy, and access controls.

\- RAG systems MUST align with ai/evaluation.md and ai/guardrails.md.



\## Scope

In scope:

\- Document ingestion and preprocessing

\- Embedding generation

\- Vector storage and indexing

\- Retrieval strategies and ranking

\- Context assembly for generation

\- Grounded generation workflows

\- RAG evaluation and validation



Out of scope:

\- Model training and fine-tuning (agents/data-ml.md)

\- Prompt authoring specifics (ai/prompts.md)

\- Application orchestration logic (agents/ai-application.md)

\- Vendor-specific vector database internals



Assumptions:

\- Retrieved context improves accuracy and grounding.

\- Source data may evolve over time.

\- Retrieval quality directly impacts generation quality.



\## Responsibilities

\- Application engineers:

&nbsp; - Implement RAG pipelines and retrieval logic

&nbsp; - Ensure grounding and validation of outputs

&nbsp; - Handle fallback behavior when retrieval fails



\- Data and ML engineers:

&nbsp; - Manage embeddings, indexes, and ingestion pipelines

&nbsp; - Ensure data quality and versioning



\- QA engineers:

&nbsp; - Validate retrieval relevance and grounding behavior

&nbsp; - Test edge cases and failure modes



\- Reviewers:

&nbsp; - Verify RAG correctness, safety, and standards compliance

&nbsp; - Reject changes that weaken grounding guarantees



\## Usage

\- Apply this file when:

&nbsp; - building or modifying RAG-based AI systems

&nbsp; - integrating document or knowledge retrieval with LLMs

\- This file MUST be composed with:

&nbsp; - agents/ai-application.md

&nbsp; - ai/data-handling.md

&nbsp; - ai/guardrails.md

&nbsp; - ai/evaluation.md

&nbsp; - agents/security.md

&nbsp; - agents/privacy.md

&nbsp; - agents/observability.md

&nbsp; - agents/tests.md



\## Structure

\- RAG systems SHOULD be organized by pipeline stage:

&nbsp; - ingestion/

&nbsp; - embeddings/

&nbsp; - index/

&nbsp; - retrieval/

&nbsp; - generation/

&nbsp; - evaluation/

\- Configuration MUST be externalized and environment-specific.



\## File Decomposition

\- Ingestion:

&nbsp; - MUST validate source documents.

&nbsp; - MUST normalize and chunk content deterministically.

\- Embeddings:

&nbsp; - MUST use approved models and configurations.

&nbsp; - MUST version embeddings and metadata.

\- Index:

&nbsp; - MUST support reproducible builds.

&nbsp; - MUST enforce access controls.

\- Retrieval:

&nbsp; - MUST rank and filter results by relevance.

&nbsp; - MUST enforce top-k and threshold limits.

\- Generation:

&nbsp; - MUST restrict output to retrieved context where grounding is required.

\- Evaluation:

&nbsp; - MUST validate retrieval accuracy and answer grounding.



\## Application Rules

\- Grounding rules:

&nbsp; - Outputs MUST be based on retrieved content when grounding is required.

\- Relevance rules:

&nbsp; - Low-relevance retrieval MUST trigger fallback behavior.

\- Security rules:

&nbsp; - Retrieval MUST respect data access permissions.

\- Privacy rules:

&nbsp; - Sensitive documents MUST be protected and minimized.

\- Monitoring rules:

&nbsp; - Retrieval quality and latency MUST be observed.

\- Verification rules:

&nbsp; - RAG behavior MUST be evaluated and tested.

&nbsp; - Violations of these standards MUST be treated as defects.



