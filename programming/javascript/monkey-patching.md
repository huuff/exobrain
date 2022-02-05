# Monkey patching in JavaScript
Monkey patch a property (or method) by adding it to the prototype:

```js
String.prototype.lastIndex = function() {
  return this.length - 1;
}

"test".lastIndex(); // 3
```
