# Callbacks vs Promises
Referring to the issues mentioned in [[callback-hell]]:

* A [[future|promise]] can allow us to chain sequential computations without deeper nesting
* It can also declare a global `catch` function that just resolves the error for the whole chain.
* Using `then`, the execution order is the same as the code order.

### Example
Given this sequence of computations using [[callback]]s:

![[callback-hell-example]]

It can be translated using promises (given that `getFromServer1` is a promise) to:

```js
getFromServer1
  .then(validate)
  .then(sendToUser)
  .catch((validationError) => {
    getFromServer2.then(sendToUser);
  });
```

Which does not have the aforementioned issues.

==TODO: But does it work? Check my understanding of promises==
