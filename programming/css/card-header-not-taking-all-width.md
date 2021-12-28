---
tags: caveats
---

# Card headers not taking the full width
Actually, this happened to me both in [[bootstrap]] and [[bulma]] and the origin is that I usually put the `col` or `column` classes on an element marked with `card`, and this adds some padding. If I want to prevent this, I should put a separate `col` or `column` element around the card.
