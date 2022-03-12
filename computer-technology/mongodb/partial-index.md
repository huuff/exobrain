# Partial index
A partial index is one that is only created on some subset of data. 

## Example
You can use it for example when you want to only index fields whose value is not `null`, because if you do, all documents where the field is missing would be on the same bucket and defeat the purpose of an index.

```js
db.users.ensureIndex({"email": 1}, { "unique": true, "partialFilterExpression": { email: { $exists: true }}})
```

## Caveat
Be aware that when a query uses a partial index, those documents that are not in the index will simply not appear in the result set.
