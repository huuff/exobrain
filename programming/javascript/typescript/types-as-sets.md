---
tags: tips
---

# Think of types as sets of allowed values
This helps a lot in building an appropriate mental model:

```ts
type T = 1 | 2 | 3;
```

Using set theory notation this is understood as

$$$
\{1, 2, 3\} \in T
$$$$

It's pretty useful to understand operations like union and intersection
