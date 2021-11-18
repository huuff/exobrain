# `NaN`
Unfortunately [[javascript]] has a special value `NaN` that is produced when doing wrong operations on numbers instead of throwing an exception, for example:

```js
> "asdasd" / 3
NaN
```

The biggest problem is that `NaN` just absorbs everything.

```js
> NaN + 3
NaN
```

So if at some point in your code you make a mistake that produces a `NaN`, that value might be propagated all the way even to the UI, where you might find a random `NaN` and now have to guess where did everything go wrong.
