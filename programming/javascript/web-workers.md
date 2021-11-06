# Web Workers
[[javascript]] is famously single-threaded. Although it's highly concurrent, it's not parallel. **Web Workers** provide a way to do parallel computations

### Usage
We could create a file (let's call it `worker.js`) that declares an event listener of the `message` type:

```js
addEventListener(`message`, event => {
  postMessage(`some processed data from ${event.data}`);
});
```

The input data is received from the `event.data` property and the output is returned through `postMessage`. Then we use this worker as in:

```js
let worker = new Worker("worker.js");
worker.addEventListener("message", event => {
  console.log(`The worker responded: ${event.data}`)
});
```
