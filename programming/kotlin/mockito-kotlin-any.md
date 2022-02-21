---
tags: how-to
---

# Mockito matchers with Kotlin
Mockito matchers are hard to work with using Kotlin because of the strong nullability guarantees of Kotlin (elaborate?).

A famous issue is the `any() must not be null` when using the `any()` matcher.

A solution for this is simply using `mockito-kotlin` and import its `any()` instead of Mockito's one.
