# Async Component
Using [[dynamic-import]] we can load a module lazily so [[vue]] will only download it when it is needed. To do it we just have to import the component with `defineAsyncComponent`:

```js
import { defineAsyncComponent } from 'vue';

const TheDialog = defineAsyncComponent(() => import(./TheDialog.vue));
```
