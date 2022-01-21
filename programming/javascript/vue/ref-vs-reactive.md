---
tags: comparison, tip
---

# `ref` vs `reactive`
* `ref` must be used for primitives
* Accessing a reactive value created by `ref` requires using the property `value`, eg: `const reactiveVal = ref(reactiveObj).value`
* `reactive` can be used with objects and makes all writes and reads reactive without needing `value`

## `ref`
+ It's more consistent since it can be used with both primitives and objects
+ It makes it clear when we are accessing a reactive value since we have to use `value`
+ Allows us to swap the whole object by using `reactiveObj.value = newValue`
- It changes the interface of the object
- It's more verbose since we have to use `value` all the time

## `reactive`
+ It doesn't change the interface and it's thus transparent, however this has caused me issues in the past because of [this TypeScript issue](https://github.com/microsoft/TypeScript/issues/18499)
- But it can only be used with objects
- It doesn't make it clear when a value is reactive

### Prefer `ref` to `reactive`
I'd say `ref` si the winner simply because it makes it clear when we are using a reactive value.
