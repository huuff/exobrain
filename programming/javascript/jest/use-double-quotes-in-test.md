---
tags: tips
---

# Use double quotes for the test name
Seems dumb to point out, but test names have apostrophes so many times, defaulting to double quotes is the sensible thing to do, compare

```js
test('it isn\t visible')
```

to

```js
test("it isn't visible")
```
