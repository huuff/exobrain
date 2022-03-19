# Time-To-Live Index
A TTL Index allows you to set a timeout for each document in a collection. When the document reaches that age, it's deleted. These type of indexes can be especially useful for caching.

### Example
```js
// 24 hour timeout
db.sessions.createIndex({"lastUpdated": 1}, { "expireAfterSeconds": 60*60*24})
```
