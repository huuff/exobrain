# Primitive wrappers
You can call methods on JavaScript primitives because actually the JavaScript runtime wraps it in a wrapper, calls the method and throws it, that's why you can do this:

```js
"primitive".charAt(3)
```

This has some caveats though, and using wrappers explicitly should be avoided (only use them for the convenience of methods like the example). Some of these are:

* Since the wrapper object is just ditched after use, any properties you [[monkey-patching|monkey-patch]] to it are lost:

```js
x = "hello"
x.language = "english"
x.language // undefined
```

* Wrappers are equal only to themselves so

```js
new String("hello") === new String("hello") // false
```
