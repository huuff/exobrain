---
tags: tips
---

# Put as much logic as possible inside the `script` block instead of the `template` block
I've seen this around, but unfortunately without much reasoning. Some stuff I found out:

* Obviously, putting code inside a string as an attribute to an HTML element is much more likely to have bad editor support than putting it in a specialized javascript block. Volar is good at it (Vetur isn't), but it fails usually.
* Jest test coverage tool only covers the `script` block, so if all your code is in the template, it'll count as covered just by mounting it (this happened to me before)
