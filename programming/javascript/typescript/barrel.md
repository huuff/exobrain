---
tags: pattern
---

# Barrel
A way to conveniently put all related imports in a single file, just do

```ts
export * from "./foo";
export * from "./bar";
export * from "./baz";
```

And then you can import everything just from that file.

[Source](https://github.com/basarat/typescript-book/blob/master/docs/tips/barrel.md)
