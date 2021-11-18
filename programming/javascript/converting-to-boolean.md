# Converting a value to boolean
Sometimes we might need an actual boolean instead of a truthy/falsy value. This achives it:

```js
!!value
```

It works like this:
* The first negation turns it to a boolean opposite of its truthy/value
* The second one brings it into its actual boolean equivalent
