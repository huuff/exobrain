# `min()` and `max()` cursor methods
If you are using a range query you can specify the minimum and maximum indexes to scan so it's more efficient, for example:

```js
db.test.find({"x": { "gt": 10, "lt": 20 }}).min({"x": 10}).max({"x": 20})
```
