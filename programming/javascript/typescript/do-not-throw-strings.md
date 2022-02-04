---
tags: antipattern
---

# Do not `throw` a `string`
Some code does stuff like

```ts
if (errorOcurred) {
  throw "some error occurred";
}
```

Apparently, `Error` keeps the stack trace and thus this would lose it completely.
