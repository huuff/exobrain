# Literal type
This [[typescript]] feature blew my mind.

A string can be a type, which means that:
```ts
const x: "test";
```

There, `x` can have only one value: `x`.

## Why?
One might think that this is such a weird feature to have, but thinking twice about it, there are so many cases in [[javascript]] were things are [[stringly-typed]], for example

```js
const div: HTMLDivElement = document.createElement("div");
```

We express the type of element we want to create by passing a string. Thanks to literal types, typescript can check that the argument passed is one of the appropriate inputs for the function, and also decide what type to return, thus sparing us the need to cast the return type to the appropriate `HTMLElement` and also ensuring us at compile-time.

## It's even better than that
Arguably most of the power of typescript's type system comes from this:

* [[keyof]]: Since object keys are always strings in typescript, we can declare a type that can only contain valid keys for an object.
* [[template-literal-type]]: A whole 'nother level.
