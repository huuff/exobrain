# Mixin
A way to share logic and data for the [[options-api]].

### Example
You can declare your mixin data and logic in a separate file (`example-mixin.js`):

```js
export default{
  data() {
    return {
      counter: 0,
    };
  },
  methods: {
    increase() {
      this.counter++;
    },
  },
};
```

Then, that definition gets automatically merged into that of another component if we just use (`another-component.vue`):

```js
<template>
...
</template>

<script>
import mixin from './example-mixin.js';

export default {
  mixins: [ mixin ],
  computed: {
    tripleCounter() {
      return this.counter * 3;
    }
  }
};
</script>
```

## Disadvantages
When we have several different mixins we have no way to know where some variable comes from unless we check them one by one.
