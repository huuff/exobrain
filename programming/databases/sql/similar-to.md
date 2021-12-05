# `SIMILAR TO` operator
It allows full RegEXP functionality and pattern matching in SQL.

## Example
```sql
SELECT *
FROM instructor
WHERE instructor.name SIMILAR TO '(W|M)%'
```

Returns all instructors whose name start with `W` or `M`
