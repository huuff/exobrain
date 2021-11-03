# Plugin
A [[webpack]] **plugin** differs from a [[loader]] in that it runs outside of the normal pipeline of the processing, and thus, have more power over the final [[bundler|bundle]]

## Usage
These are setup in `module.exports.plugins` in `webpack.config.js`.

```js
  plugins: [
    new HtmlWebpackPlugin({
      template: 'index.html'
    }),
  ]
```

## Examples
* `mini-css-extract-plugin`: Extracts [[css]] files away from the bundle so parallel loading of [[css]] and [[javascript]] of the browser can be taken advantage of
* `html-webpack-plugin`: Allows using an [[html]] template for serving to which the bundle will be injected.
* `purgecss`: Removes unused [[css]] for a smaller bundle size.
