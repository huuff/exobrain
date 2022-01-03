---
tags: how-to
---

# Grouping elements with the `template` tag
I've looked for really long for a component that would allow me to apply something to a group of elements. I've always read the `template` tag is the appropriate one but still never got it to work.

Turns out it only works with some conditional? Or maybe in some other cases. Anyway, just using

```vue
<template v-if="true">
  <!-- Stuff we want to group -->
</template>
```

Makes it work.
