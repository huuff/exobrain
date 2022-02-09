# `for` loop
Kotlin does not have an equivalent to the classical C loop like

`for (int i = 0; i < 10; i++)`

Instead, Kotlin only has a foreach loop, used like `for ... in`. The canonical way of doing the same as with old C loops is using ranges. (This seems like a good idea, it doesn't need to mutate a variable or even use arbitrary complex checks for finalization)
