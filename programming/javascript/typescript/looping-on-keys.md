---
tags: caveats, how-to
---

# Looking on keys of an object makes the values `any`
Consider the example:

```ts
function calculateLength(v: Vector3D) {
  let length = 0;
  for (const axis of Object.keys(v)) {
    const coord = v[axis];
      // Error: Element implicily has an 'any' type

    length += Math.abs(coord);
  }

  return length;
}
```

Source: Effective TypeScript.

## Why does this happen
TypeScript types are "open", that means that `v` could be exactly a `Vector3D` or it could be any type that is [[assignability|assignable]] to it. Thus, you might be indexing with a key that does not belong to `Vector3D` and thus, to any type of value.

## Pseudosolutions
* I've seen something about declaring `axis` as `keyof Vector3D`, but that's no different to a [[type-assertion]] and would still be troublesome if `v` is not exactly a `Vector3D`
* Maybe filter the keys with a [[type-guard]] as `keyof Vector3D`? This is an actual solution, but cumbersome.
