# `HAVING`
Basically, the counterpart of `WHERE` but applies to groups (made by [[group-by]]) instead of individual [[relational-model/tuple]]s

## Example
Consider the relation `instructor`

|id|name|dept_name|salary|
|--|----|---------|------|
|1 |Mike|History  |25000 |
|2 |Bob |Biology  |32000 |
|3 |Will|History  |27000 |

Then the query

```sql
SELECT dept_name, SUM(salary)
FROM instructor
GROUP BY dept_name
HAVING salary > 50000
```

Would return

|dept_name|SUM(salary)|
|---------|-----------|
|History  |52000      |

If we also had a `WHERE` clause such as

```sql
SELECT dept_name, SUM(salary)
FROM instructor
WHERE salary > 26000
GROUP BY dept_name
HAVING salary > 50000
```

The `WHERE` would filter out `Mike`, and the aggregation would be done only with `Bob` and `Will`, thus there would be no tuple with `salary > 50000` and the resulting relation would be empty
