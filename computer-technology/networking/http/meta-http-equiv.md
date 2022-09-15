---
tags: tip
---

# `<meta http-equiv>`
An HTML tag, supposed to go into the `<head>` that allows us to specify HTTP headers for the served page. I'm unsure whether this is parsed by the web server or the browser.

### Example (tip)
We can specify a [[cache-control]] header for a single document so it never gets cached with:

```html
<head>
  <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
</head>
```
