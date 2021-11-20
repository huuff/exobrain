# Reactivity of the `props` object in the [[composition-api]]
The `props` object is reactive, but its contents aren't. This may result in subtle gotchas.

### Example
```js
export default {
  props: [ 'user' ],
  setup(props) {
    watch(props.user, newValue => {
      // This will only fire once, because props.user is not reactive
    });
  },
};
```

## Solutions
### `toRefs`
Using `toRefs` can make the contents of an object reactive so:

```js
export default {
  props: [ 'user' ],
  setup(props) {
    const { user } = toRefs(props);
    watch(user, newValue => {
      // This fires every time user changes
    });
  },
};
```

### Watching a function
This would only work for this specific use-case, but you can also watch a function:
```js
export default {
  props: [ 'user' ],
  setup(props) {
    watch(() => props.user, newValue => {
      // This also works
    });
  },
};
```
