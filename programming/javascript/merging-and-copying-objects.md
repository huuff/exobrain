# Merging and copying objects
Using the [[spread-operator]]:

```js
const obj2 = {...obj1};
```

Makes `obj2` a copy of `obj1`. And:

```js
const obj3 ={...obj1, ...obj2};
```

Makes `obj3` a merge of `obj1` and `obj2`, where the properties of `obj2` take precedence over those of `obj1`.
