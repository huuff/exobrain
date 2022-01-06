---
tags: how-to
---

# How to fix "non-function value encountered for default slot" warning
This has appeared several times when using a render function, passing a text node as a child
```ts
h(tag, {}, child)
```

Seems to be fixed by passing the child in an object as a function for the default slot

```ts
h(tag, {}, { default: () => child })
```
