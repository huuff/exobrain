# `SORT`
Sorts data in a set, list, [[sorted-set]]. It can use other data in other sets, lists, sorted sets or hashes as a criterion for sorting.

It has a rather unusual syntax compared to other commands.

### Syntax
```
SORT «source-key» [BY «pattern»] [LIMIT «offset» «count»] [GET «pattern» [GET «pattern» ...]] [ASC|DESC] [ALPHA] [STORE «dest key»]
```

* `BY` uses data from another data structure to sort. For example, when sorting a list `a`, for each element `x` we might have a hash named `b-«x»` with a field named `field` with a value, we can sort `a` with the values from `field` in `b-«x»` in the following way: `SORT a BY b-*->field`
* In the same way, the `GET` allows specifying what value will be returned after sorting, so `SORT a GET b-*->field` would return the values stored in `field` in `b-«x»`
* `ALPHA` can be used to sort lexicographically
* `STORE` can be used to store the results in another data structure
