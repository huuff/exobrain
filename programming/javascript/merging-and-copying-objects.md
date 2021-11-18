# Merging and copying objects

## After ES2015 (ES6)
Use `Object.assign()`:

### Copy `obj1` to `obj2`
```js
const obj2 = Object.assign({}, obj1);
```

### Merge `obj1` and `obj2` into `obj3`
```js
const obj3 = Object.assign({}, obj1, obj2)
```

The properties of `obj2` take precedence over those of `obj1`.
## After ES2018 (ES9)
Using the [[spread-operator]]:

### Copy `obj1` to `obj2`
```js
const obj2 = {...obj1};
```

### Merge `obj1` and `obj2` into `obj3`
```js
const obj3 ={...obj1, ...obj2};
```

The properties of `obj2` take precedence over those of `obj1`.

## Differences
The use of the [[spread-operator]] is not only more succint, but also better since it's [[immutability|immutable]] by default. `Object.assign`, on the other hand, merges into the first argument the properties of the rest of its arguments. That's why we use `{}` as the first argument.

## Deep copy
The previous methods unfortunately only do a *shallow copy*, which means that nested objects or arrays are still references that point to their original values, The problem of getting a *deep copy* can be solved in a rather lame way by:

```js
const copy = JSON.parse(JSON.stringify(original));
```

Or you could use [Lodash](https://lodash.com)'s `_.cloneDeep`.
