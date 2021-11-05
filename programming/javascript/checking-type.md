# Checking the type of a variable in Javascript
Infuriatingly, [[javascript]] has two very different ways of checking the type of a variable:

### `typeof`
Returns a string describing the type, instead of an object or other type reification. It works only on "simple builtin types" (string, number, boolean, ...) since it returns `"object"` for anything else

```js
typeof "test"
> "string"
typeof new Date()
> "object"
```

### `instanceof`
Like in [[java]] it tests whether something is a subtype of something else. The right-hand side is the [[constructor-function]] and it only works for "complex types"

```js
> new Date() instanceof Date
true
> "test" instanceof String
false
```

