---
tags: how-to
---

# Solving a slow `Collapse`
Sometimes a `Collapse` gets slow and the animation isn't smooth. I've found that surrounding the content in a `div` and collapsing that `div` instead solves the issue.

This is slow:
```html
<div class="card">
  <div class="card-header">
    <h5>
      Debug
    </h5>
  </div>
  <div class="card-body collapse">
      <p>Test text</p>
  </div>
</div>
```

This, however, is fast:
```html
<div class="card">
  <div class="card-header">
    <h5>
      Debug
    </h5>
  </div>
  <div class="collapse">
    <div class="card-body">
        <p>Test text</p>
    </div>
  </div>
</div>
```
