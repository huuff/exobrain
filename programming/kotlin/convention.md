# Convention
Kotlin conventions are specially named methods that can be used with a special syntaxis, they require the `operator` modifier to work as such. Examples

* `plus` -> `+`
* `minus` -> `-`
* `equals` -> `==`
* `plusAssign` -> `+=`
* `get` -> `[]` as in `list[0]`. Note that you can also use several arguments so it's possible to do `object.get(x, y) -> object[x, y]`
* `component1`, `component2`, ... `componentN` allow destructuring an object into its first `N` components. Standard library's containers allow this up to the first 5 components.

## Precedence
The precedence of operators is the same as for the regular ones (PEMDAS?)
