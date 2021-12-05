# `JOIN`
Merges relations on arbitrary conditions using an `ON` keyword.

## Example
```sql
SELECT *
FROM student
JOIN takes ON takes.id = student.id
```

Produces all tuples with the attributes of both `takes` and `student` such that their value of `id` are the same.

## Difference to [[natural-join]]
Besides allowing arbitrary conditions, the result of the `JOIN` repeats the column specified in the condition. Specifically for the example query, it produces two `id` columns, while a `NATURAL JOIN` would only produce one.
