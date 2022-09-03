# `$lookup`
This is an [[aggregation-framework]] stage that allows us to perform an operation similar to a [[sql/join|relational database join]]

==TODO: This syntax is older... it's easier now with `localField` and `foreignField`==

### Syntax
```js
{
  "$lookup": {
    from: «joined collection»,
    let: {
      «variable introduced»: «field in current collection»
      ...
    }
    pipeline: [
      «pipeline that filters/projects the documents we want to join»
    ]
    as: «field on which the result will be introduced for this collection»
  }
}
```

Note that the variables introduced by `let` must be referenced by prefixing them with two dollar signs (`$$`) in the `pipeline` part.

### Example
The following `$lookup` will join a movie with its comments:

```js
db.movies.aggregate([
  {
    "$lookup": {
      from: "comments",
      let: { "id": "$_id"},
      pipeline: [
        {
          "$match": {
            "$expr": { "$eq": [ "$movie_id", "$$id" ] }
          }
        }
      ],
      as: "movie_comments"
    }
  }
])
```
