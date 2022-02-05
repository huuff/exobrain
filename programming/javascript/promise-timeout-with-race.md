# Promise timeout with `race`
```js
function timeout(millis) {
  return new Promise((resolve, reject) => {
    setTimeout(() => reject("timeout"), millis);
  });
}

async function fetchWithTimeout(url, ms) {
  return Promise.race([fetch(race), timeout(ms)])
}
```
