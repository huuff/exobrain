# Cartesian product
The `FROM` clause produces a cartesian product of the relations listed in it. Instead of separating the relations by commas in the `FROM` clause, it can also be done using `CROSS JOIN`

### As an iterative process
The clause
`FROM relation1, relation2, relation3`

Can be thought as nested loops like

```
for each tuple1 in relation1
  for each tuple2 in relation2
    for each tuple3 in relation 3
      Concatenate tuple1, tuple2 and tuple3 into a single tuple
      Add that tuple to the resulting relation
```
