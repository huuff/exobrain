---
tags: caveat, wtf
---

## Big caveat
Querying for the exact document actually takes into consideration the order of the keys!!! WTF!! I don't even think JavaScript cares about that, and I'm pretty sure it's against the JSON specification. This means that this query won't match the preceding "Francisquito" document:

```js
db.people.find({"birthDate": {
  "day": 19,
  "month": 1,
  "year": 1994,
}})
```

The best choice is to use the other query type:

```js
db.people.find({
  "birthDate.day": 19,
  "birthDate.month": 1,
  "birthDate.year": 1994,
})
```

