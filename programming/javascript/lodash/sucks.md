---
tags: sucks
---

# What sucks about Lodash
* (Actually about the DefinitelyTyped types for lodash) The `Dictionary` type. Some times I want to use `keyBy` to make a very specific object keyed by some property of a collection of objects and use that key as a literal, but Lodash widens it to `string` so I lose that specificity
