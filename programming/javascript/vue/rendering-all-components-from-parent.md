---
tags: antipattern
---

# Rendering all components from parent
(I might need a better name for this one)

Lately as I've been working on a Vue component library I've been using a pattern where most components are just empty data-holders:
```vue
<template>
<slot></slot>
</template>

<script setup lang="ts">
const props = defineProps<{
  textContent: string;
}>
</script>
```

So these components don't actually render anything ([[renderless-component]]s?), instead, the parent reads their contents and renders whatever appropriate:

```vue
<template>
<render></render>
</template>

<script setup lang="tsx">
import { useSlots } from "vue";
import Child from './Child.vue';

const slots = useSlots();
const render = () => slots.default().map(node => {
  if (node.type === Child)
    return <p> { node.props.textContent } </p>
});
</script>
```

So this means that the children can only be used within the parent and the parent decides how to render it:

```vue
<parent>
  <child textContent="first" />
  <child textContent="second" />
  <child textContent="third" />
</parent>
```

Which would render

```html
<p>first</p>
<p>second</p>
<p>third</p>
```

## So this turned to be a massive antipattern and I'm ashamed to have done it
Being fair, I already guessed it was an antipattern, but I knew no alternative and it hadn't bit me yet. But it causes some issues:

* All rendering must go through the parent: every time a new type of child is added, it goes to the parent's code, bloating it. 
* What's worse, in the final DOM there is no child component at all! We can use the props to render it correctly, but we can only emit events from the parent, so things like two-way binding are impossible.
