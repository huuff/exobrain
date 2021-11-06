# Event debouncing
A technique to prevent running code too frequently in events that are likely to be dispatched frequently.

### Usage
We declare an event that runs its logic in a `setTimeout` and also clears the previous timeout every time.

### Example
Suppose we want to log the position of the mouse after moving it, but we don't want to flood the console with logs for every single instant of movent, only when it's finished. We would then do:

```js
let timeout = null;
window.addEventListener("mousemove", event => {
  clearTimeout(timeout);
  timeout = setTimeout(() => console.log(`(${event.pageX}, ${event.pageY})`));
});
```
