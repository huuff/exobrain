---
tags: tip, thought
---

# Use infix functions to remove any appearance of an operand owning the operation
For example, in Kotlin, the `intersect` function (for sets) can be used as an infix function. When not used as such, the operation looks like:

`operand1.intersect(operand2)`

Note that this makes it look like `intersect` is a method of `operand1` that's being applied with an argument of `operand2` (which is not wrong), so `operand1` owns the operation. However, the result of `operand2.intersect(operand1)` is exactly the same. Using it as an infix makes it look like both operands have the same degree of importance on the operation and therefore one must not worry about which one comes first:

`operand1 intersect operand2`

This is especially important for [[commutativity|commutative]] operations, but it might also be important for operations where the order of the operands changes the result, but the change isn't very significative. (For example, with `zip`, the order of operands only changes de order of elements in the resulting tuple)
