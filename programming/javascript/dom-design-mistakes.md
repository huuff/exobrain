# DOM Design Mistakes

* [[dom]] properties like `children` return a `NodeList` that is an array-like object but not an actual array, therefore working with these is not very consistent since we can't use conventional array methods like `slice` and `map`.
* There is no way to create a new node and immediately add attributes and children to it, so the only way is to create it and then add these through side effects, making [[dom]]-manipulation code long, repetitive, ugly and full of mutations. [[elt]] is a nice abstraction I found for working with this in the [[eloquent-javascript]] book.
