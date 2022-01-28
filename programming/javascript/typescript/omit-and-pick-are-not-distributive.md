---
tags: caveats
---

# Distributive types
Please note that `Omit` (and `Pick`) are not *distributive*. If we have a [[discriminated-union]]:

```ts
type Example = { type: 'A', a: 'a', c: string } |
               { type: 'B', b: 'b', c: string }
```

If we use `Omit<Example, 'c'>` we get

```ts
{ type: 'A' | 'B' }
```

Which is not a discriminated union. If it were distributive, we'd expect:

```ts
{ type: 'A', a: 'a' } |
{ type: 'B', b: 'b' }
```

[source](https://github.com/microsoft/TypeScript/issues/31501)

## The solution
Apparently, the mere application of [[conditional-types]] [makes a type distributive](https://www.typescriptlang.org/docs/handbook/2/conditional-types.html#distributive-conditional-types), therefore this new omit:

```ts
type OmitBetter<T, K extends keyof any> = T extends any ? Pick<T, Exclude<keyof T, K>> : never;
```

Does the job fine. Why the `extends any`? It seems weird. I guess it's just so the type is conditional and thus distributive.
