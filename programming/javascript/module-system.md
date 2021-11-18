# Modules
There are quite some ways of declaring modules in [[javascript]]. I'll name the two I've used:

## Node's CommonJS
Uses `require` to import and `modules.exports` to export. I think these are being phased out for ES6 modules.

### Example
A module can export a function like

(In file `lib/func.js`)
```js
function exportedFunc() {
  console.log("test");
}

module.exports = {
  func: exportedFunc
}
```

And it can be imported like

```js
const importedFunc = require('lib/func').func;
```

## ES6 Modules
These are native. Take into account that each module is downloaded separately in the browser if no [[bundler]] is used.

### Example
One would export a function (in `lib/func.js`) like this:

```js
export function exportedFunc() {
  console.log("test");
}
```

And then we could import it using [[destructuring]] like:

```js
import { exportedFunc } from 'lib/func';
```

Also, we could alias it like

```js
import { exportedFunc as func } from 'lib/func';
```

### Default exports
We can also export unnamed objects as "default", which allows us to import them without [[destructuring]] giving them any name we want. I think these are recommended against anyway, but not entirely sure why.

#### Example
Export like
```js
export default function() {
  console.log("test");
}
```

And import like
```js
import func from "lib/func";
```
