---
tags: how-to
---

# How to narrow a type with a `filter`
(As of TypeScript 4.5)

I find it surprising how often TypeScript is unable to narrow a type in a `filter`, for example given a type

```ts
type Action = Attack | Escape | Steal
```

One would think that if `isEscape` is a [[type-guard]] for `Escape` then `filtered` is `Escape[]`

```ts
const actions: Action[] = /* suppose there's appropriate code here */

const filtered = actions.filter(isEscape);
```

But no! (I haven't tried the example but I've found so many cases where this happens that I don't believe it works): it infers `Action[]`

What happens is that the compiler infers `isEscape` simply as a `boolean` function and not a [[type-guard]], so we have to annotate it as such

```ts
const filtered = actions.filter((a): a is Escape => isEscape(a))
```

And now `filtered` is of type `Escape[]`
