---
tags: how-to
---

# Fixing dropdown menu showing under content
No real solution, the best is to set a lower `z-index` on the items that appear above it

```css
z-index: 1;
```

[Here](https://github.com/jgthms/bulma/issues/1655)'s the issue and it doesn't look like it'll ever get fixed.
