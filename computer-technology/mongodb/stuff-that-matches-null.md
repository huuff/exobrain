---
tags: caveats
---

# Stuff that matches `null`
`null` on a query matches any document where the requested key is either `null` or not present, which might be unexpected. If we want to match only exact `null` values, we must include `"$exists": true` in our query:

```js
db.c.find({"z", {"$eq": null, "$exists": true}})
```
