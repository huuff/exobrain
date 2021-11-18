# `@` in import
Using [[vue]] I found that some imports are used like:

```js
import Home from '@/components/Home'
```

Apparently the `@` is just `src` and this is nothing magical and comes from some default [[webpack]] config:

```js
resolve: {
    extensions: ['.js', '.vue', '.json'],
    alias: {
      'vue$': 'vue/dist/vue.esm.js',
      '@': resolve('src'),
    }
  },
```

I know literally nothing about how any of this works, but [here's my source](https://www.jerriepelser.com/blog/til-at-symbol-javascript-import/)
