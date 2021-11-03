# chunkhash
Adds a to a generated [[bundler|bundle]]. Useful for implementing [[cache-busting]]

## Usage
In `webpack.config.js`, add `[chunkhash]` to the output's name.

```js
module.exports = {
  output: {
    path: path.join(__dirname, "dist"),
    filename: '[name].[chunkhash]'.js,
  },
};
```
