# Callback
To my understanding, a **callback** is just a function that is passed around. However, the connotational difference is that callbacks are usually used to express a function whose execution is deferred in an [[asynchrony|asynchronous]] manner.

In this meaning, the function is passed to another that does some async work and "calls back" to the original caller by calling the function that was passed. This is better explained with an example:

### Example
In [[javascript]], callbacks are extensively used for async work:

```js
var fromServer;
server.call((result) => {
  fromServer = result;
});
```

The example is the async equivalent to a function returning `fromServer`. The `call` function does some async work (requesting the value from the server) and then returns it by "calling back" with the passed function.
