---
tags: tip, thought
---

# Use infix functions to remove any appearance of an operand owning the operation
For example, in Kotlin, the `zip` function (classical `zip` functional programming function) can be used as an infix function. When not used as such, the operation looks like:

`operand1.zip(operand2)`

Note that this makes it look like `zip` is a method of `operand1` that's being applied with an argument of `operand2` (which is not wrong), so `operand1` owns the operation. However, the result of `operand2.zip(operand1)` is very similar (not exactly the same, since the order of the resulting pair is different) and likely interchangeable. Using it as an infix makes it look like both operands have the same degree of importance on the operation and therefore one must not worry about which one comes first:

`operand1 zip operand2`
