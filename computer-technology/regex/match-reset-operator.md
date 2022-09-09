---
tags: tip
---

# Match reset operator (`\K`)
This discards anything that has matched up to this point. This is pretty useful as a "lookbehind".

### Example
The following regex I found online to get only the contents of an `h1` html tag:

```bash
grep -oP '<h1(?:\s[^>]*)?>\K.*?(?=</h1>)' Email.txt
```

The `\K` here removes anything before it, that is, the opening tag.
