# Webpack's code splitting
To use [[javascript/code-splitting]] in [[webpack]], we use the `System.import()` call. Webpack actually scans the files for calls to this function and then splits the [[bundler|bundle]] accordingly.

## Using `System.import()`
[[webpack]] scans our files for calls to this function and then splits the [[bundler|bundle]] accordingly. This way is useful when splitting our own code.

### Example
Given a module like
```js
export default () => {
  console.log("test");
};
```

We can import it using code splitting as:
```js
button.onclick = () => {
  System.import('./splitted').then(module => {
    module.default();
  });
}
```

Which will ensure that the code of the function is only downloaded by the client when the button is clicked.

## Directly in `webpack.config.js`
Specify several different bundles in the config. This is useful for implementing [[vendor-splitting]]

```js
const VENDOR_LIBS = [
  "react", "lodash", "redux", "react-redux", "react-dom", "react-input-range", "redux-form", "redux-thunk"
];

module.exports = {
  entry: {
    bundle: './src/index.js',
    vendor: VENDOR_LIBS
  },
  output: {
    path.join(__dirname, 'dist'),
    filename: '[name].js',
  },
}
```

The keys of `entry` are the names of the bundles that will be generated. Using `[name].js` generates the output dynamically from the entries.

To ensure that the code isn't present in both bundles, you'll need the [[commons-chunk-plugin]]
