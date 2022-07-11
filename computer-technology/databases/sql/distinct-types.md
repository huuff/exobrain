# Distinct types
Are created by using the `CREATE TYPE` command, and allows separating two types logically, giving more semantic information to them and preventing errors when comparing, adding or assigning them

## Example
We can create two distinct types, `Dollars` and `Pounds` as:

```sql
CREATE TYPE Dollars AS NUMERIC(12, 2) FINAL;
CREATE TYPE Pounds AS NUMERIC(12, 2) FINAL;
```

(The `FINAL` keyword is required by the standard, but some systems allow its omission)  

With these types, we can't incur the error of comparing dollars and pounds or assigning one value to a column of the other type without casting the types before.

![[domain-vs-distinct-types]]
