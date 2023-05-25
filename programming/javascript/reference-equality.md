# Everything is checked using reference equality in Javascript
Therefore, two objects are equal iff they point at the same region in memory. So the following:

* `Set`'s `has()`
* `Array`'s `includes()`
* `Map`'s `has()`

Only work for checking the same instance. Since [[javascript]] nor [[typescript]] offer a top-level `equals` method like Java does, these collection methods are total fucking useless, given that needing [[reference-equality]] is much less common than needing actual equality.

Answers on Stackoverflow suggest iterating the whole collection and checking element which is a really lame solution.

### Solution?
Immutable.js seems to have full structural equality, but all objects have to be converted using `fromJS`. It's not perfect but eh, it works.
