# Boolean prop shorthand
A boolean prop can be set to `false` by omitting it and to `true` by adding it.

### Example
Suppose a have a component with this prop

```js
props: {
  test: {
    type: Boolean
  }
}
```

Then, we can set it to true just by using our component like:

```js
<the-component test></test>
```
