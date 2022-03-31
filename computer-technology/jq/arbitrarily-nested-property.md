---
tags: how-to
---

# Get an arbitrarily nested property in a JSON file by name (using `jq`)
The incantation is:

```sh
cat file | jq ".. | .<propertyName>? // empty"
```

The `?` prevents errors with values that are not equal to `propertyName` and `// empty` removes empty results
