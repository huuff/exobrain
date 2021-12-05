# Integrity constraints (or `CHECK` clause)
Can be used in the declaration of an attribute to specify an arbitrary condition that must be satisfied for all tuples. Theoretically (as in, part of the [[sql]] standard), any condition should be valid, even those that imply subqueries. In practice, no database system allows this.

## Example
```sql
salary NUMERIC(8, 2) CHECK salary > 0
```

Only allows positive non-zero salaries.

## `INITIALLY DEFERRED`
Sometimes, a constraint that involves several relations might be violated in the process of a transaction but supposed to be satisfied by the end of it. However, by default, this produces an error and a rollback. We can instead declare the constraint as `INITIALLY DEFERRED` to only check it by the end of a transaction
