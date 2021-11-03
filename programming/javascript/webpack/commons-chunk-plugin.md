# CommonsChunkPlugin
==TODO: I think this is deprecated, check SplitChunksPlugin==
This [[plugin]] takes the parts common to several [[bundler|bundles]] and deduplicates it to a bundle with the name `name`:

```js
plugins: [
  new webpack.optimize.CommonsChunkPlugin({
    name: 'vendor'
  })
]
```
