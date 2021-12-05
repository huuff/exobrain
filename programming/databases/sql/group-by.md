# `GROUP BY`
It aggregates the [[relational-model/tuple]]s of the selections into groups that have the same value for the given attribute

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
```

Returns
|dept_name|SUM(salary)|
|---------|-----------|
|History  |52000      |
|Biology  |32000      |

## Attributes allowed in the `SELECT` clause
Only the attributes in the `GROUP BY` clause may appear freely in the `SELECT` clause (`dept_name` in the example), any other attributes must be under an [[aggregation-function]] (`SUM(salary)` in the example)
