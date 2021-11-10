# Declaration hoisting
Some languages (notably [[javascript]] and [[python]]) **hoist** declarations. Which means that they move them to the top of the scope, making the declared name available before the code that actually declares it is reached.

### Example
This works fine in [[javascript]]:

```js
x = 5;
console.log(x); // Outputs 5
var x;
```

Since it gets transformed into:

```js
var x;
x = 5;
console.log(x);
```
