# [[full-text-search|Full text index]] partitioning
You can optimize a full text index by *partitioning* it by creating a compound index that first filters by some other criteria, which makes them much faster if you are likely to query full text only for some specific ranges of other field.

## Example
This example would make it much faster to do full text searches for specific date ranges:

```js
db.blog.createIndex({ "date": 1, "post": "text" })
```
