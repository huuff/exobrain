# Kotlin compilation of primitives
Kotlin doesn't have make distinction between primitives and wrapper types (e.g. `int` vs `Integer`). Instead, Kotlin uses its own versions of Java primitives, and tries to compile them to actual Java primitives whenever possible, but falls back to wrappers when not possible, for example:

* If the type is nullable
* If it's used as a generic type parameter
