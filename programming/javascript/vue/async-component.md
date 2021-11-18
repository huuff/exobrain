# Async Component
Using [[dynamic-import]] we can load a module lazily so [[vue]] will only download it when it is needed. To do it we just have to import the component with `defineAsyncComponent`:

```js
import { defineAsyncComponent } from 'vue';

const TheDialog = defineAsyncComponent(() => import(./TheDialog.vue));
```

## Not recommended for routing
Turns out that it's **NOT recommended** for routing. (This a (sic) quote from Maximilian Schwarzmüller's course, but no more info is provided on why). For routing change the syntax to:

```js
const TheDialog = () => import('./pages/coaches/CoachDetail.vue');
```
