---
tags: how-to
---

# Destructure into instance variable
Surround it in parentheses:

```js
const variables = { variable: 1 };
({ variable: this.variable} = variables);
```

Why? I don't know
