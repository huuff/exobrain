# Enums
These have some quirks:

* For a number-valued enum, any number is assignable to that type, even though it's not included in the type.
* String-based enums are not structurally typed, but nominally. An string of the same exact value cannot be assigned to an enum type that contains it
* `const enum` are completely erased at runtime, so a number-based enum is compiled to just numbers.
