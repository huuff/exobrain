# Cursor methods
Some methods can also be called on cursors, and these have a fluent interface, so they can be chained in a nice, expressive way. Some examples are `limit`, `skip`, `sort`:

### Example
```js
db.foo.find()
  .skip(100)
  .limit(10)
  .sort({ "age": -1 })
```
