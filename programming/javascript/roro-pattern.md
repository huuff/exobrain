# RORO pattern
> Receive an object, return an object

The name is pretty self-descriptive. It takes advantage of [[destructuring]] to give some powerful features.

### Example
Simply put

```js
function doStuff({ firstInput, secondInput }) {
  return { firstOutput: something1, secondOutput: something2 };
};
```

## Benefits
### Multiple returns (as in Go)
```js
const { result, isCached } = fetchStuff();
```

### [[named-parameters]] (And thus, position-independent)
```js
sort({ collection = [ 5, 7, 2], order = "decreasing"});
```

(First example that came to mind, but actually having `"decreasing"` as an argument makes it very clear what it does even when unnamed)

### It promotes [[defensive-copying]] through [[destructuring]]
Not actually enforced, but the pattern promotes the use of [[destructuring]] (since that makes the code shorter), and since [[destructuring]] creates a copy of the destructured values, it promotes [[defensive-copying]].

```js
function showRole({ role, username }) {
  role = role.toLowerCase();
  console.log(`${username}'s role is ${role}'`);
};

```

Since we use [[destructuring]], even though we change `role`, the passed object is unchanged.

### [[default-parameters]] in any position
Consider this example without **RORO**:

```js
function sort(collection, comparator = (x, y) => x - y, removeDuplicates = false);
```

(Arguably a terrible function, but some of these features make working with terrible functions easier (which may be an anti-feature), so these make good examples).

Now to call it, if we want to have the default comparator but remove duplicates we have to:

```js
sort([2, 7, 5], undefined, true);
```

If we defined it with RORO:

```js
function sort({ collection, comparator = (x, y) => x - y, removeDuplicates = false });
```

The previous usecase would just be:

```js
sort({ collection: [2, 7, 5], removeDuplicates: true});
```

[Source](https://www.freecodecamp.org/news/elegant-patterns-in-modern-javascript-roro-be01e7669cbd/)
