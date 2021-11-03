# Loader
A [[webpack]] **loader** is a tool that preprocesses the files before making the final [[bundler|bundle]]

## Usage
These are added under `module.exports.module.rules` in `webpack.config.js`. This takes an array of objects that associate a regexp (`test`) with one or more loaders (`use`). The regex will be run for every filename in the project to decide which loader to apply

```js
module.exports = {
  module: {
    rules: [
      {
        test: /\.css$/i,
        use: ["style-loader", "css-loader"],
      },
    ],
  },
};
```

Loaders are applied from right to left, thus, `css-loader` is required before `style-loader` (see below)

## Examples
* `css-loader`: Allows importing [[css]] files from [[javascript]].
* `style-loader`: Loads the [[css]] files into [[html]] from the bundle.
* `babel-loader`: Loads [[babeljs]] configuration.
