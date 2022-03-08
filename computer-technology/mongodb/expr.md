# `$expr`
The expressive query, it uses [[operator|aggregation syntax]] and allows for referring to values in the same document.

## Example
If we want a trip with a duration longer than `1200` seconds and whose end station is the same as the start station then our query document would be:

```json
{ "$expr": {
    "$and": [
      { "$gt": [ "$tripduration": 1200 ]},
      { "$eq": [ "$end station id", "$start station id"]}
    ]
  }
}
```
