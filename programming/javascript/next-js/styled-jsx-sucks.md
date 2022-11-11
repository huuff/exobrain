---
tags: sucks
---

# Things that suck about Styled JSX in Next.js
* Even though it's rendered on the server side, it gets re-rendered again once hydration occurs.
* It's impossible to cache by the browser, as it gets recreated on every request.
