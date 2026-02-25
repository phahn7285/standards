=========================================================

languages/html.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# html Standards



\## Standards

\- HTML MUST be semantic, accessible, and maintainable.

\- HTML MUST represent structure and content, not presentation.

\- Accessibility requirements MUST be enforced.

\- Semantic elements MUST be used appropriately.

\- ARIA attributes MUST be used only when necessary and correctly.

\- Forms MUST be accessible and validate inputs appropriately.

\- Interactive elements MUST be keyboard-navigable.

\- Images MUST include appropriate alt text.

\- Headings MUST follow a logical hierarchy.

\- Document structure MUST be valid and well-formed.

\- IDs MUST be unique.

\- Markup MUST avoid invalid nesting.

\- Content MUST be internationalization-ready where applicable.

\- HTML usage MUST align with agents/frontend.md and agents/accessibility requirements within frontend standards.



\## Scope

In scope:

\- HTML markup in web applications

\- Document structure and semantics

\- Accessibility and ARIA usage

\- Forms and input elements

\- Component markup composition



Out of scope:

\- Styling rules (languages/css.md)

\- JavaScript behavior (languages/javascript.md)

\- Framework-specific component patterns (languages/react.md)



Assumptions:

\- HTML is rendered in browsers or webviews.

\- Accessibility is a non-negotiable requirement.



\## Responsibilities

\- Frontend engineers:

&nbsp; - Author semantic, accessible HTML

&nbsp; - Ensure correct structure and labeling

&nbsp; - Avoid misuse of ARIA



\- Reviewers:

&nbsp; - Enforce semantic structure and accessibility

&nbsp; - Reject invalid or inaccessible markup



\- QA engineers:

&nbsp; - Validate accessibility and usability requirements



\## Usage

\- Apply this file when:

&nbsp; - writing or modifying HTML templates or markup

&nbsp; - creating frontend components

\- This file MUST be composed with:

&nbsp; - agents/frontend.md

&nbsp; - agents/coding-standards.md

&nbsp; - agents/tests.md when accessibility tests exist

\- Framework standards MUST be composed with:

&nbsp; - languages/react.md when applicable



\## Structure

\- HTML SHOULD be organized by component or page.

\- Shared layout templates SHOULD be centralized.

\- Markup MUST avoid duplication by using components or partials.



\## File Decomposition

\- Layout templates:

&nbsp; - MUST define document structure and main regions.

\- Components:

&nbsp; - MUST encapsulate reusable markup and semantics.

\- Forms:

&nbsp; - MUST define labels, validation hooks, and error regions.

\- Content blocks:

&nbsp; - MUST be semantic and accessible.



\## Application Rules

\- Semantics rules:

&nbsp; - Use semantic tags for structure and meaning.

\- Accessibility rules:

&nbsp; - All interactive controls MUST be keyboard accessible.

&nbsp; - All inputs MUST have labels.

&nbsp; - ARIA MUST not replace semantic HTML when semantic elements exist.

\- Validation rules:

&nbsp; - HTML MUST be valid and well-formed.

\- Maintainability rules:

&nbsp; - Avoid deeply nested structures without justification.

\- Verification rules:

&nbsp; - Accessibility checks SHOULD be automated where feasible.

&nbsp; - Violations of these standards MUST be treated as defects.



