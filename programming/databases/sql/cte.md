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

==TODO: explain it a bit more maybe use [this article](https://www.essentialsql.com/recursive-cte/)==
