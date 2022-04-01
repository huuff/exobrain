---
tags: tip
---

# Prefer using `@JsonIncludeProperties` to any alternatives for declaring Jackson's serialization
There are many ways in which you can declare which properties are included in the JSON using Jackson such as:
* `@JsonInclude`
* `@JsonIgnore`

and

* `@JsonIncludeProperties`

I find the last to be the best of them because:

* If go with `@JsonIgnore`, you have to put it in every new property you add, even if it's only an utility property you added in a pinch. This is easy to forget and may quickly break non-forward-compatible clients
* If you go with `@JsonInclude` you have to spread all of these across all declarations

There are some special implications of using `@JsonIncludeProperties`:
* All declarations that go into the JSON are at the top of the file so it's easier to see
* Also I think it's the only way to prevent declarations from using Kotlin's [[kotlin/delegation]] from going into the JSON
