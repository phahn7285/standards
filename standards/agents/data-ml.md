=========================================================

agents/data-ml.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# data-ml Standards



\## Standards

\- Data and ML pipelines MUST be reproducible, deterministic where applicable, and version-controlled.

\- Training, evaluation, and inference concerns MUST be explicitly separated.

\- Data sources, transformations, and features MUST be documented and traceable.

\- Models MUST be versioned, immutable once released, and associated with training data and code versions.

\- Experiments MUST be repeatable and MUST record parameters, metrics, and artifacts.

\- Evaluation MUST include offline metrics and MUST define pass or fail thresholds.

\- Models MUST be validated against data leakage, bias, and overfitting risks appropriate to the domain.

\- Inference code MUST be testable and MUST handle malformed or adversarial inputs safely.

\- Pipelines MUST handle partial failures and MUST support restartability.

\- Pipelines MUST define resource limits and MUST avoid unbounded execution.

\- Data ingestion MUST validate schema and quality before use.

\- Feature computation MUST be consistent between training and inference.

\- Model outputs MUST be validated and sanity-checked before downstream use.

\- Model performance and data drift MUST be monitored in production.

\- Sensitive data MUST be handled per agents/privacy.md and agents/security.md.

\- Dependencies used in data and ML workflows MUST follow agents/dependencies.md.

\- All data and ML code MUST be tested per agents/tests.md.



\## Scope

In scope:

\- Data ingestion, cleaning, and transformation pipelines

\- Feature engineering and feature storage

\- Model training, tuning, and evaluation

\- Batch and online inference pipelines

\- Model packaging, release, and promotion

\- Data quality checks and validation

\- ML experimentation and tracking

\- Monitoring of model performance and data drift



Out of scope:

\- LLM application orchestration and prompt engineering (agents/ai-application.md, ai/\*)

\- Front-end and UI concerns (agents/frontend.md)

\- API gateway and contract definition (agents/api-contracts.md)

\- Infrastructure provisioning details (agents/devsecops.md, platforms/\*)

\- Database engine internals (databases/\*)



Assumptions:

\- Data pipelines may run in batch or streaming modes.

\- Models may be classical ML or deep learning models.

\- Systems may operate in regulated environments.



\## Responsibilities

\- Data scientists and ML engineers:

&nbsp; - Design features, models, and evaluation strategies

&nbsp; - Ensure reproducibility and traceability

&nbsp; - Validate model quality and risks



\- Data engineers:

&nbsp; - Build and maintain data ingestion and transformation pipelines

&nbsp; - Ensure data quality and schema enforcement



\- Reviewers:

&nbsp; - Verify correctness, reproducibility, and standards compliance

&nbsp; - Reject changes that introduce data leakage or untracked experiments



\- DevSecOps:

&nbsp; - Ensure pipelines run reliably and securely

&nbsp; - Ensure model artifacts and data are stored and accessed appropriately



\## Usage

\- Apply this file when:

&nbsp; - building or modifying data pipelines

&nbsp; - training or retraining models

&nbsp; - adding or modifying inference workflows

&nbsp; - changing feature definitions or data sources

\- This file MUST be composed with:

&nbsp; - agents/tests.md

&nbsp; - agents/security.md

&nbsp; - agents/privacy.md

&nbsp; - agents/observability.md

&nbsp; - agents/reliability.md

&nbsp; - agents/dependencies.md

&nbsp; - relevant languages/\* standards files

\- When APIs are exposed for inference, compose with agents/api-contracts.md.



\## Structure

\- Data and ML repositories SHOULD separate:

&nbsp; - ingestion/ for raw data ingestion

&nbsp; - processing/ or transform/ for data transformations

&nbsp; - features/ for feature definitions and computation

&nbsp; - training/ for model training code

&nbsp; - evaluation/ for metrics and validation

&nbsp; - inference/ or serving/ for inference logic

&nbsp; - experiments/ for experiment configuration and tracking

&nbsp; - artifacts/ for stored models and outputs

\- Configuration MUST be externalized and environment-specific.



\## File Decomposition

\- ingestion/:

&nbsp; - MUST validate schema and basic data quality.

&nbsp; - MUST handle missing, late, or malformed data.

\- processing/ or transform/:

&nbsp; - MUST be deterministic where possible.

&nbsp; - MUST be versioned and testable.

\- features/:

&nbsp; - MUST define features in a single authoritative location.

&nbsp; - MUST ensure consistency between training and inference.

\- training/:

&nbsp; - MUST record parameters, data versions, and code versions.

&nbsp; - MUST produce versioned model artifacts.

\- evaluation/:

&nbsp; - MUST compute metrics and compare against thresholds.

&nbsp; - MUST include checks for overfitting and leakage.

\- inference/ or serving/:

&nbsp; - MUST validate inputs and outputs.

&nbsp; - MUST enforce timeouts and resource limits.

\- experiments/:

&nbsp; - MUST track configurations, metrics, and artifacts.

\- artifacts/:

&nbsp; - MUST store immutable, versioned outputs.



\## Application Rules

\- Reproducibility rules:

&nbsp; - Random seeds MUST be controlled where applicable.

&nbsp; - Training runs MUST be reproducible given the same inputs.

\- Data quality rules:

&nbsp; - Pipelines MUST fail or alert on schema violations.

&nbsp; - Data quality checks MUST be explicit.

\- Evaluation rules:

&nbsp; - Models MUST NOT be promoted if thresholds are not met.

&nbsp; - Evaluation metrics MUST be appropriate to the use case.

\- Deployment rules:

&nbsp; - Only approved models MAY be deployed.

&nbsp; - Rollback to prior models MUST be supported.

\- Monitoring rules:

&nbsp; - Model performance and data drift MUST be monitored.

&nbsp; - Alerts MUST be defined for significant degradation.

\- Security and privacy rules:

&nbsp; - Sensitive data MUST be minimized and protected.

&nbsp; - Training data MUST comply with retention and usage policies.

\- Verification rules:

&nbsp; - Unit tests MUST cover transformations and logic.

&nbsp; - Integration tests MUST cover pipeline execution paths.

&nbsp; - Changes MUST be reviewed and validated before promotion.



