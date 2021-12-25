---
tags: tips
---

# Always use `get` over `find`, unless asserting that something doesn't exist
The difference is that `get` throws when not found, while `find` returns an `ErrorWrapper`

[Source](https://next.vue-test-utils.vuejs.org/api/#get)
