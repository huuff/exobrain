# Concatenative inheritance
The usual type of inheritance in [[javascript]] (or prototype-based OOP languages). Where an object is merged into another so that it satisfies the interfaces of both.

### Example
Using [[merging-and-copying-objects|usual mechanisms for merging objects]]:

```js
Object.assign({}, parent, child);
```

This will create an object that has the properties of the `parent` and `child` objects, with those of the child overriding those that are also present in the parent (resembling method overriding).

Of course, in this case the methods are overriden by name and not by signature, therefore we might unintentionally override some unrelated method that just had the same name by coincidence
