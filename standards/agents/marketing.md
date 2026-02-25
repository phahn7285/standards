=========================================================

agents/marketing.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# marketing Standards



\## Standards

\- Marketing and SEO requirements MUST be treated as product requirements when applicable.

\- Metadata MUST be accurate, consistent, and environment-aware.

\- Page titles MUST be unique and descriptive.

\- Meta descriptions MUST be unique and reflect page content.

\- Canonical URLs MUST be defined to prevent duplicate content issues.

\- Robots directives MUST be explicit and correct.

\- Sitemap generation MUST be automated where applicable.

\- Structured data MUST be valid and follow applicable schema standards when used.

\- Open Graph and social metadata MUST be set for shareable pages.

\- Link text MUST be descriptive and avoid generic phrases.

\- Navigation MUST support discoverability without sacrificing usability.

\- Content URLs MUST be stable and human-readable.

\- Redirects MUST be explicit, minimal, and tested.

\- 404 and error pages MUST provide helpful navigation.

\- Performance MUST be optimized because it impacts SEO.

\- Accessibility MUST be preserved because it impacts user experience and SEO.

\- Analytics and event tracking MUST be privacy-aware and consent-aware.

\- A/B testing MUST be controlled, measurable, and reversible.

\- Localization MUST be supported where product requirements demand it.

\- Marketing requirements MUST align with agents/frontend.md, agents/privacy.md, agents/performance.md, and agents/observability.md.



\## Scope

In scope:

\- SEO metadata and page structure for web applications

\- Social sharing metadata

\- URL design, redirects, and canonicalization

\- Indexing controls and sitemaps

\- Structured data usage

\- Marketing analytics and attribution controls

\- Performance and UX concerns that affect search and conversion



Out of scope:

\- Paid ads platform management

\- Editorial content strategy and brand voice definition

\- Legal determinations beyond enforcement requirements in agents/privacy.md



\## Responsibilities

\- Frontend engineers:

&nbsp; - Implement SEO metadata and page structure

&nbsp; - Ensure performance and accessibility requirements are met



\- Backend engineers:

&nbsp; - Support sitemap, canonicalization, redirects, and metadata APIs where needed



\- Marketing stakeholders:

&nbsp; - Define goals, conversion events, and content requirements



\- QA engineers:

&nbsp; - Validate metadata, redirects, and tracking behavior



\- Reviewers:

&nbsp; - Enforce correctness of SEO and tracking changes



\- DevSecOps:

&nbsp; - Ensure deployment does not break indexing and routing

&nbsp; - Ensure observability covers SEO-impacting failures



\## Usage

\- Apply this file when:

&nbsp; - building or modifying public-facing web pages

&nbsp; - implementing routing, metadata, or tracking changes

&nbsp; - launching new landing pages or content-driven experiences

\- This file MUST be composed with:

&nbsp; - agents/frontend.md

&nbsp; - agents/privacy.md

&nbsp; - agents/performance.md

&nbsp; - agents/observability.md

&nbsp; - agents/accessibility.md

&nbsp; - languages/html.md and languages/css.md for web pages

&nbsp; - languages/react.md when applicable



\## Structure

\- Marketing and SEO controls SHOULD be centralized:

&nbsp; - metadata helpers

&nbsp; - routing and canonical helpers

&nbsp; - sitemap generation logic

&nbsp; - redirect configuration

\- Tracking schemas SHOULD be centralized and versioned.



\## File Decomposition

\- Metadata:

&nbsp; - Page title, meta description, canonical, robots directives.

\- Indexing:

&nbsp; - Robots rules, sitemap generation, crawl controls.

\- Sharing:

&nbsp; - Open Graph and social previews.

\- Structured data:

&nbsp; - Schema markup validation and correctness.

\- Tracking:

&nbsp; - Analytics events, attribution, consent gating.

\- Performance:

&nbsp; - Rendering speed, bundle size, and runtime stability.



\## Application Rules

\- Metadata rules:

&nbsp; - Title, description, canonical, and robots MUST be set for indexable pages.

\- URL rules:

&nbsp; - URLs MUST be stable, descriptive, and consistent.

&nbsp; - Redirects MUST be tested and avoid chains.

\- Indexing rules:

&nbsp; - Noindex MUST be used intentionally and reviewed.

&nbsp; - Sitemaps MUST be generated and updated where applicable.

\- Structured data rules:

&nbsp; - Structured data MUST be valid and tested.

\- Tracking rules:

&nbsp; - Tracking MUST be consent-aware and privacy-compliant.

&nbsp; - Event names and schemas MUST be versioned and consistent.

\- Verification rules:

&nbsp; - SEO-impacting changes MUST include validation in QA.

&nbsp; - Regressions in indexing, metadata, or tracking MUST be treated as defects.



