# `$where`
An [[operator]] that allows you to execute arbitrary [[javascript]] on the query result, if the function returns true, then it matches, or else doesn't. This allows doing almost anything but there's a lot of downsides

### Example
Suppose we want to match documents where any two keys have the exact same value:

```js
db.foo.find({"$where": function() {
  for (var current in this) {
    for (var other in this) {
      if (current != other && this[current] == this[other]) {
        return true;
      }
    }
  }

  return false;
}});
```

## Caveats
* Can become really hard to understand
* Executing arbitrary logic can cause security problems
* It's much slower than regular queries, since the BSON of the document must be converted to JavaScript
* Indexes cannot be used.

## How and when to use it
Preferably only when strictly necessary, after filtering the results as much as possible, [[expr]] is a more efficient and preferred option.
