---
tags: how-to
---

# Advanced YAML features: Anchors, Aliases, Merge
==TODO: Note on merge, it's like a spread operator==

## Anchors
Set a value to be reused later, just prefix the value with `&«anchorname»`

```yaml
value1: &anchor abcd
```

## Aliases
Refers to an anchor and includes it, refer to the anchor like `*«anchorname»`

```yaml
value1: &anchor abcd
value2: *anchor
```

Is equivalent to:

```yaml
value1: abcd
value2: abcd
```
