# Two-Way Binding
The act of binding some [[html]] to a [[javascript]] variable such that changes to the HTML are reflected in the object and changes to the variable are reflected in the HTML.

### Example
In [[vue]] we can use `v-model` such as

```html
<input type="text" v-model="inputString">
```

Then in the javascript code, `inputString` always contains the content inputted by the user into the input, and also, we could empty the input element just by running:

```js
inputString = '';
```
