---
tags: how-to
---

# Matching with spelling errors
Surrounding your search term with `%` will allow you to match any text that resembles the one searched by leveraging the [[levenshtein-distance]]

### Example
```
FT.SEARCH users-idx %adres%
```

Will match the correct spelling `address`
