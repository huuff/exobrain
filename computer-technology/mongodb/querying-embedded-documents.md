# Querying embedded documents
There are two ways of querying embedded documents and it's important to know the difference

* Querying the exact document: If you specify an object as the query
* Querying some field of the document: You use the name of the embedded object, followed by a dot, followed by the name of the key you want to query

## Example
If you issue the following query
```js
db.persons.find({"birthDate": { "year": 1994 }})
```

You're actually querying for a person whose `birthDate` key only contains the `year` 1994, not for any person whose birth year is 1994, for any day or month, therefore the following wouldn't match:

```js
{
  "name": "Francisquito",
  "birthDate": {
    "year": 1994,
    "month": 1,
    "day": 19
  }
}
```

The correct query would be

```js
db.persons.find({"birthDate.year": 1994})
```

![[subdocument-query-key-order-matters]]
