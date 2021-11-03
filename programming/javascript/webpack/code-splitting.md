# Webpack's code splitting
To use [[javascript/code-splitting]] in [[webpack]], we use the `System.import()` call. Webpack actually scans the files for calls to this function and then splits the [[bundler|bundle]] accordingly.

## Example
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
