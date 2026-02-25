=========================================================

languages/css.md

=========================================================



This file follows the Standard File Contract.

Sections and ordering are mandatory.



\# css Standards



\## Standards

\- CSS MUST be used for presentation and layout only.

\- Styling concerns MUST be separated from application logic.

\- CSS MUST be modular, predictable, and maintainable.

\- Global styles MUST be minimized and explicitly justified.

\- Class-based selectors MUST be preferred over element or ID selectors.

\- Naming conventions MUST be consistent and descriptive.

\- Styles MUST avoid unintended cascade and specificity conflicts.

\- Layout MUST use modern techniques (Flexbox, Grid) where appropriate.

\- Responsive design MUST be supported.

\- Cross-browser compatibility MUST be considered and validated.

\- CSS MUST avoid duplication and dead rules.

\- CSS MUST be linted and validated.

\- CSS MUST align with agents/frontend.md and agents/coding-standards.md.



\## Scope

In scope:

\- Stylesheets and style modules

\- Layout and positioning

\- Responsive design rules

\- Theming and design tokens

\- Animations and transitions

\- Preprocessors or postprocessors when used



Out of scope:

\- JavaScript-driven behavior

\- UI framework component logic

\- Design system ownership beyond implementation



Assumptions:

\- CSS is consumed by web or hybrid frontends.

\- Multiple developers or agents may modify styles.

\- Maintainability and predictability are critical.



\## Responsibilities

\- Frontend engineers:

&nbsp; - Author and maintain CSS

&nbsp; - Ensure styles are modular and predictable

&nbsp; - Prevent unintended side effects



\- Reviewers:

&nbsp; - Enforce naming, structure, and maintainability rules

&nbsp; - Reject unsafe global or overly specific styles



\- QA engineers:

&nbsp; - Validate visual consistency and responsiveness



\## Usage

\- Apply this file when:

&nbsp; - writing or modifying CSS

&nbsp; - styling frontend components or layouts

\- This file MUST be composed with:

&nbsp; - agents/frontend.md

&nbsp; - agents/coding-standards.md

&nbsp; - agents/tests.md when visual regression testing is used

\- Framework-specific standards MUST be composed with:

&nbsp; - languages/react.md or languages/reactnative.md when applicable



\## Structure

\- CSS SHOULD be organized by component or feature.

\- Global styles SHOULD be isolated in a dedicated file.

\- Design tokens SHOULD be centralized.

\- Preprocessor files SHOULD follow the same structure.



\## File Decomposition

\- Base styles:

&nbsp; - MUST define resets and global defaults.

\- Component styles:

&nbsp; - MUST scope styles to components.

\- Layout styles:

&nbsp; - MUST define grid and layout behavior.

\- Theme styles:

&nbsp; - MUST define colors, spacing, and typography.

\- Utility classes:

&nbsp; - MUST be limited and documented.



\## Application Rules

\- Selector rules:

&nbsp; - Avoid ID selectors.

&nbsp; - Avoid deep selector chains.

\- Cascade rules:

&nbsp; - Specificity MUST be controlled and predictable.

\- Responsiveness rules:

&nbsp; - Use relative units and media queries appropriately.

\- Performance rules:

&nbsp; - Avoid excessive selectors and heavy animations.

\- Maintainability rules:

&nbsp; - Remove unused styles promptly.

\- Verification rules:

&nbsp; - CSS MUST pass linting.

&nbsp; - Visual regressions MUST be tested when applicable.

&nbsp; - Violations of these standards MUST be treated as defects.



