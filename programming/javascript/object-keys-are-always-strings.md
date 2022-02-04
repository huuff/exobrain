---
tags: caveat
---

# Object keys are always `string`
So, if you use any other type, be wary that JavaScript actually calls `toString` on it when accessing. this is demonstrated by the following code

```js
let obj = {};
obj[1] = "asdf";
obj["1"]; // Gives "asdf"
```

This might be dangerous if you try to use objects as keys since their `toString` just returns something like `[Object object]` (depending on the engine?)

[[typescript]] forces you to be explicit here and call `toString` yourself. 
