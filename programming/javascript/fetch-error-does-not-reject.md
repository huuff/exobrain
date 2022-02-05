---
tags: caveats
---

# A `fetch` error response does not reject the promise
```js
const response = await fetch("urlthatdoesnotexist.com");
```

`response` will actually be successful with a `404` error.
