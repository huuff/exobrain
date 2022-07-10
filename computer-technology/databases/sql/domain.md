# Domain
Allows some creation of user-defined types for adding [[integrity-constraint]]s and default values

## Example
```sql
CREATE DOMAIN DDollars AS NUMERIC(12, 2) NOT NULL;
```

![[domain-vs-distinct-types]]
