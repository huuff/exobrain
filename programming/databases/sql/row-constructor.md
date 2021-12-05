# Row constructor
[[sql]] allows using literal tuples in clauses as `(v_1, v2, ...)` and they can be used for comparisons.

## Example
The query
```sql
SELECT name, course_id
FROM instructor, teaches
WHERE instructor.ID = teaches.ID and dept_name = 'Biology';
```

Is equivalent to the following query using a **row constructor**

```sql
SELECT name, course_id
FROM instructor, teaches
WHERE (instructor.ID, dept_name) = (teaches.ID, 'Biology');
```
