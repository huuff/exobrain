---
tags: trivia, caveat
---

# Differences in how spaces are handled between JSX and HTML
Classical criticism of HTML usually mentions how its handling of newlines messes up the result, even if used only for formatting the code. JSX, on the other hand, does not do this.

### Example
```html
<div>
  <span>My</span>
  name is
  <span>Carlos</span>
</div>
```

In HTML, this would result in `My name is Carlos`, but in JSX this is `MynameisCarlos`.

### Solution
A classical solution to it is adding spaces through JS inside braces:
```jsx
<div>
  <span>My</span>
  {' '}
  name is
  {' '}
  <span>Carlos</span>
</div>
```
