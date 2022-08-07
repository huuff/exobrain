---
tags: caveat
---

# LUA-to-redis type translation of decimals truncate to integers
Since Redis has both integers and floats and LUA only has a single numeric type, returning a number with decimals from a LUA script will make Redis truncate the decimals and convert it to an integer.

This is most likely not what you want, so your best option is to return any decimal numbers as strings from LUA.
