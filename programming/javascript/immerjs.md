---
tags: gem
---

# `immer.js`
One of the most beautiful wonderful things I've ever seen. `immer.js` makes immutable changes appear mutable (to me, it's like the `async`/`await` of immutability). With `immer.js` all changes are made to a mutable `draft` while the original object is freezed, then the result is obtainer by applying the changes to the mutable draft to the original object.

Also, it's much faster than the alternative because it uses structural sharing!

Redux uses it internally.

### Example
Without `immer.js`

```ts
function addOne(counter: Counter): Counter {
  const result = cloneDeep(counter); // lodash to clone the object
  result.internalCounter++;
  return result;
}
```

With `immer.js`

```ts
function addOne(counter: Counter): Counter {
  return produce(counter, draft => {
    draft.internalCounter++;
  });
}
```

My example is not very good because it's simple, but honestly, it becomes much easier and more natural when there is a series of complex mutations.
