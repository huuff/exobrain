---
tags: how-to
---

# Hide `Collapse` at start
(Valid for Bootstrap 5.0)

You have to pass an object `{ toggle: false }` to the creation like:

```js
new bootstrap.Collapse(element, { toggle: false })
```

Isn't toggle a terrible name? It could mean toggle-hidden or toggle-shown. Also the docs state

> Toggles the collapsible element on invocation

Which is unhelpful. I didn't even know what toggle did until I tried it.
