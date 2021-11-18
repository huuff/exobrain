# Composition API
A new API for defining components in [[vue]] 3.

![[options-api-vs-composition-api]]

## What changes and what doesn't
The **composition API** merges four of the options of the [[options-api]] (`data()`, `methods`, `computed` and `watch`) into a single one: `setup()`. This also means that other options are left unchanged (`props`, `emits`)
