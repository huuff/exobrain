---
tags: caveats
---

# If you want narrowing to work, only put a [[type-assertion]] on an `if` condition
(This is true as of TypeScript 4.5)

You'd think that if you have a type like

```ts
type Execution = Attack | Steal | Escape;
```

That then given this code

```ts
function isEscape(execution: Execution): execution is Steal {
  // Pretend it's implemented
}

if (isEscape(execution) && execution.isSuccessful) {
  escape();
} else {
  // You'd expect `execution`'s type to be `Attack | Steal` here
}
```

But you'd be wrong! Turns out TypeScript is not that smart, so the correct way to get the type narrowed in the `else` branch is:

```ts
if (isEscape(execution)) {
  if (execution.isSuccessful)
    escape();
} else {
  // `execution`'s type is `Attack | Steal` here
}
```
