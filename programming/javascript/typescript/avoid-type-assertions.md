---
tags: tips
---

# Avoid [[type-assertion]]s
Always prefer putting a type in a declaration (i.e. `variable: type`) to using a type assertion `variable as type`

* Even though type assertions might be true when you first write them, TypeScript won't tell you when they stop being so. If you use `expression as type` maybe after some changes in the future the type of `expression` stops being `type` and you won't notice.
* Type assertions don't trigger [[excess-property-checking]], which help preventing a whole class of errors.
