# `v-model`
An attribute that enables [[two-way-binding]] in a form input.

* In an standard html element, it's a shortcut for `:value` (binding the input contents to the [[javascript]] data) and `@input` (binding the [[javascript]] data to the input contents)
* In a custom component, it's a shortcut for `:modelValue` and `@update:modelValue` (analogous to the standard ones).

### Example
```html
<input type="email" v-model="email">
```

Will achieve two-way binding between the form input and the `email` data in the component.
