---
tags: caveat
---

# You need to escape punctuation if you want to perform exact-matches on it
Not only when indexing it, but also when storing it in the hash.

### Example
Storing an escaped email

```
HMSET ru203:user:details:1000 first_name "Andrew" last_name "Brookins" escaped_email "a\\.m\\.brookins\\@example\\.com" user_id "1000"
```

Matching on it:

```
FT.SEARCH users-idx "@escaped_email:a\\.m\\.brookins\\@example\\.com"
```
