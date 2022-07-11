# Querying arrays
## Scalar-like queries
To make arrays easier to query, a single element matches the whole array. For example the document:

```js
{ "fruit": [ "apple", "banana", "peach"]}
```

Matches the query:

```js
db.food.find({"fruit": "banana"})
```

If you want to match only when all occurrences match, you have to use `"$all"`:

```js
db.food.find({"fruit": {"$all": [ "apple", "banana", "peach"]}})
```

## Querying clauses
When specifying several clauses when querying for a scalar value (non-array), it must match all clauses, however, for arrays, it's sufficient that some element matches each of the clauses. Therefore

```js
db.test.find({"x": {"$gt": 10, "$lt": 20}})
```

Would match

```js
{"x": [ 5, 25]}
```

This makes range queries useless against arrays. The solutin is to use `"$elemMatch"`:

```js
db.test.find({"x": { "$elemMatch": { "$gt": 10, "$lt": 20}}})
```

The preceding query would not match the preceding document.
