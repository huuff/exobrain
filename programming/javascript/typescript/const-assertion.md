# Const assertion
The `as const` construct can make an inferred type to be as narrow as possible:

```ts
let enabled = "enabled" // inferred type is string
let disabled = "disabled" as const // inferred type is "disabled"
```

## Naming
I've seen it named this way in Effective TypeScript, this actually parallels the syntax since it looks like a regular [[type-assertion]], but I don't like how both are conflated since this is actually a much much safer construct than [[type-assertion]]s
