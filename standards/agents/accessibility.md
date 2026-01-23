=========================================================

agents/accessibility.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# accessibility Standards



\## Standards

\- Accessibility MUST be treated as a functional requirement.

\- All user-facing interfaces MUST be accessible to keyboard-only users.

\- All interactive elements MUST have an accessible name.

\- Focus order MUST be logical and match visual order.

\- Focus visibility MUST be clear and persistent during keyboard navigation.

\- Tab traps MUST NOT exist.

\- Content MUST be usable at 200% zoom without loss of functionality.

\- Color MUST NOT be the only means of conveying information.

\- Text contrast MUST meet WCAG AA minimums for normal text and large text.

\- Headings MUST form a correct hierarchy and reflect page structure.

\- Landmark regions MUST be used where appropriate.

\- Form inputs MUST have associated labels.

\- Form validation errors MUST be programmatically associated with the related input.

\- Error messages MUST be clear and actionable.

\- Required fields MUST be indicated in a non-color-only way.

\- Images MUST have appropriate alt text or be explicitly marked as decorative.

\- Icon-only buttons MUST have accessible names.

\- Links MUST have meaningful text that indicates destination.

\- Dynamic updates MUST be announced appropriately to assistive technologies.

\- ARIA MUST be used only when semantic HTML cannot represent the behavior.

\- ARIA roles, states, and properties MUST be valid and consistent.

\- Custom components MUST implement expected keyboard interactions.

\- Modals MUST trap focus within the modal and restore focus on close.

\- Non-modal dialogs MUST NOT steal focus unexpectedly.

\- Animations MUST respect reduced motion preferences.

\- Media MUST provide captions and transcripts where applicable.

\- Automated accessibility checks MUST run in CI where feasible.

\- Manual accessibility verification MUST be performed for major UI changes.

\- Accessibility requirements MUST align with agents/frontend.md, agents/tests.md, and agents/qa.md.



\## Scope

In scope:

\- Web UI accessibility requirements

\- Mobile UI accessibility requirements when applicable

\- Component library accessibility

\- Forms, navigation, and interactive controls

\- Content structure and semantics

\- Automated and manual accessibility verification



Out of scope:

\- Legal interpretation or compliance certification

\- Third-party platforms where code changes are not possible



\## Responsibilities

\- Frontend engineers:

&nbsp; - Implement accessible UI patterns and semantics

&nbsp; - Ensure keyboard and screen reader support



\- Mobile engineers:

&nbsp; - Implement platform accessibility APIs and semantics



\- QA engineers:

&nbsp; - Validate accessibility in critical user flows

&nbsp; - Report and track accessibility defects



\- Reviewers:

&nbsp; - Enforce accessibility standards during code review



\- DevSecOps:

&nbsp; - Integrate automated checks and reporting into CI



\## Usage

\- Apply this file when:

&nbsp; - building or modifying any user-facing interface

&nbsp; - creating or modifying UI components and design systems

\- This file MUST be composed with:

&nbsp; - agents/frontend.md

&nbsp; - agents/tests.md

&nbsp; - agents/qa.md

&nbsp; - languages/html.md and languages/css.md for web UIs

&nbsp; - languages/react.md or languages/reactnative.md when applicable



\## Structure

\- Accessibility requirements MUST be applied at:

&nbsp; - component level

&nbsp; - page or screen level

&nbsp; - end-to-end user flow level

\- Shared accessibility utilities SHOULD be centralized.

\- Accessibility test helpers SHOULD be centralized.



\## File Decomposition

\- Semantics:

&nbsp; - Applies to markup structure, headings, landmarks, labels.

\- Interaction:

&nbsp; - Applies to keyboard behavior, focus management, and input handling.

\- Perception:

&nbsp; - Applies to contrast, text resizing, reduced motion, and media alternatives.

\- Assistive technology:

&nbsp; - Applies to screen reader announcements and ARIA usage.

\- Verification:

&nbsp; - Applies to automated checks and manual validation.



\## Application Rules

\- Keyboard rules:

&nbsp; - Every interactive element MUST be reachable and operable by keyboard.

\- Screen reader rules:

&nbsp; - Names, roles, and values MUST be conveyed correctly.

\- ARIA rules:

&nbsp; - Use semantic HTML first; ARIA is a last resort.

\- Forms rules:

&nbsp; - Label, error association, and validation messaging MUST be implemented.

\- Visual rules:

&nbsp; - Contrast and non-color cues MUST be enforced.

\- Verification rules:

&nbsp; - Automated checks MUST run in CI where feasible.

&nbsp; - Manual verification MUST cover critical flows and custom components.

&nbsp; - Accessibility regressions MUST be treated as defects.



