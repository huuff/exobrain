---
tags: sucks
---

# What sucks about CSS
This apparently comes from a Christopher Chedeau talk in 2014 at NationJS that I haven't been able to find.

* Global namespace: All CSS goes to a global namespace, which introduces the possibility of pollution and interference between styles for different components. A lot of work has been put into managing this (for example, [[bem]])
* It's hard to declare dependencies with plain CSS. As a developer, this means it's hard to get a picture of what CSS matters for a single component, and it'll be necessary to scan all classes to know it. As an automated process, it means it's hard to prune unused CSS.
* This also usually means CSS becomes an "append-only language". That is, nobody tries to remove existing CSS in fear of affectingthe state of the application, and instead fix it by adding new CSS. This leads to huge CSS bundles.
* CSS selectors are basically [[stringly-typed]], which means we have to resort to string manipulation tools (such as the npm `classnames` packages) to compose it, which makes it hard to minify and optimize.
* There's no way to share constants and variables between CSS and JavaScript, so all kinds of dynamic calculations must be awkwardly done in JavaScipt.
* The order of CSS application matters, which leads to non-deterministic effective styles when loading it lazily.
* (Related to the first point) It's almost impossible to fully isolate styles. Not only does pollution of the global namespace impede it, but also styles from different components might affect other components (such as margin moving them)
