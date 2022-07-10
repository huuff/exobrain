# `SOME` (or `ANY`) and `ALL`
Special qualifiers for boolean expressions that specify whether the expression must be true for all tuples or for only one.

## Examples
```sql
SELECT name
FROM instructor
WHERE salary >= ALL (
  SELECT salary
  FROM instructor
)
```

Returns the name of the instructors with the greatest salary and 

```sql
SELECT name
FROM instructor
WHERE salary <= SOME (
  SELECT salary
  FROM instructor
)
```

Returns the name of the instructor with the lowest salary
