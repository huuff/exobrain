# Composition API
A new API for defining components in [[vue]] 3.

![[options-api-vs-composition-api]]

## What changes and what doesn't
The **composition API** merges four of the options of the [[options-api]] (`data()`, `methods`, `computed` and `watch`) into a single one: `setup()`. This also means that other options are left unchanged (`props`, `emits`)

## What I like about it
It feels more explicit and relies less on binding `this`. In order to use something you have to import it instead of having it magically provided in `this`. Because of [[arrow-function-this|the binding of `this` in arrow functions]] this allows us to use [[arrow-functions]] more, which can lead to terser code.
