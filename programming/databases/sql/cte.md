# Common Table Expression
A temporary [[view]] that is defined along with the query, these can be used to simplify queries. They were introduced in SQL:1999.

### Example
```sql
WITH cte (first_column, second_column, third_column)
AS (SELECT innertable.first, innertable.second, innertable.third
    FROM innertable
),
cte2 (first_column, second_column, another_column)
AS (SELECT innertable_2.first, innertable_2.second, innertable_3.third
  FROM innertable_2
)
SELECT *
FROM cte1
NATURAL JOIN cte2;
```

Along with each CTE, the definition of the table that it returns is given in patentheses.

## Recursive CTEs
Also called **hierarchical queries** in Oracle. These are views that can look into themselves.

### Definition
The following quirks apply:

* These must have a `UNION` (or `UNION ALL`?) operation of two tables:
  * The base table
  * The recursive one, built from that one
* Can't use aggregates inside these.

### Example
This ([[postgresq]]) query selects all numbers from `1` to `50`

```sql
WITH RECURSIVE cte
AS (
  (SELECT 1 AS n)
  UNION ALL
  (SELECT n + 1
  FROM cte
  WHERE n < 50)
)
SELECT n
FROM cte
```

[Source](https://www.essentialsql.com/introduction-common-table-expressions-ctes/)
