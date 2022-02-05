# `for ... in` and `for ... of`
[[javascript]], in its usual fashion of having more than one of every type of keyword, has two iteration statements:

## `for ... in`
Loops over the properties of an object:


### Example
```js
const obj = {
  one: 1,
  two: 2
}

for (let prop in obj) {
  console.log(prop);
}
```

Prints `one` and `two`

## `for ... of`
Loops through an [[iterator]] (if the object to the right of the `of` has one)

### Example
```js
const arr = [ 1, 2, 3];

for (let x of arr) {
  console.log(x);
}
```

Prints `1`, `2` and `3`

## Performance differences
Apparently, `for .. of` is several orders of magnitude faster than `for ... in`. (Source: Item 16 of Effective Typescript)
