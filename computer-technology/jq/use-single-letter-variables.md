---
tags: caveat
---

# Use only single letter variables
I don't know if this is my problem or something but I never get variables longer than one letter to work.

Doesn't work:
```
jq -r --arg label "$2" '.fields[] | select(.label == $label) | .value'
```

Works:
jq -r --arg l "$2" '.fields[] | select(.label == $) | .value'
