# `mgenerate`
A useful tool part of the `mtools` pack that generates and inserts data to our MongoDB instance by using a schema.

### Example
Given the following schema

```json
{
  "age": "$number",
  "name": { "$string": { "length": 100 }}
}
```

We can load random data by issuing `mgenerate «schema.json»`, and we get documents like the following:

```js
{
  "_id": ObjectId("58a3d2e83ca4fd510dec1ec8"),
  "age": 16,
  "name": kWoz0z...
}
```
