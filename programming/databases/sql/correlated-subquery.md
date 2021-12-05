# Correlated subquery
A subquery that uses some attribute from the outer query. Knowing the name of this concept has helped me look for help in google in the past.

## Example
```sql
SELECT name
FROM instructor
WHERE dept_name IN (
  SELECT dept_name
  FROM department
  WHERE budget < instructor.salary
)
```

Returns the names of the instructors whose salary is greater than the budget of their department. The correlated attribute is `salary`
