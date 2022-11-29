---
tags: tip
---

# Prefer decorators for observables
Observables in MobX can be declared in two ways:

* Just by calling the `observable` function on an object.
* Creating a class and annotating observable properties with the `@observable` annotation.

The second one is preferred because:

* There are some subtle pitfalls around the [[javascript/this]] binding. If you use arrow functions with objects wrapped in an `observable` function, the `this` gets bound to the lexical scope of the contents of the function, but that's different from the `this` of the actual context where the function will actually execute.
* You can tweak the depth of the observation (e.g. with `@observable.shallow`) for each item, whereas for the wrapper function the depth is the same for the whole object.
* You can mix observed state with unobserved one. (==But is this good?==)
