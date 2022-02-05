# Callback Hell
When using [[callback]]s for defining sequences of [[asynchrony|asynchronous]] computations it can lead to hard to follow control flow.

## Issues
![[callback-hell-example]]

### Deep nesting
Each successive computation is nested one level deeper. Even this simple example gets contrived, imagine with a few more sequential steps.

### Difficulty handling errors
Since these callbacks are asynchronous and thus executed in a different thread (at least that's the connotation I think "callback" has), we can't just throw exceptions and catch them in an outer function.

The usual pattern for handling exceptions is having a first parameter that represents the error produced by the function (as in the `validate` function). This, however, forces us to declare the possibility of an error and propagate it in every function between the one that produces it and the one that can catch and act on it.

### The execution order is obscured
Consider the following

```js
function third() {
  second(() => {
    first(() => {
      console.log("first");
    })
    console.log("second");
  })
  console.log("third");
}
```
This if these functions are asynchronous, it prints `third, second, first`, which is the opposite of the reading order.

## Solutions
* [[future|promises]] can improve on this: [[callbacks-vs-promises]]
