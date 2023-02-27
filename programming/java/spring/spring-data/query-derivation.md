---
tags: definition
---

# Query Derivation
Spring Data's repository automatically derive queries from method names based on the traversal of properties of your entities.

### Example
```java
List<Customer> findByAddressZipCode(ZipCode zipCode);
```

This method will create a query like

```sql
SELECT * FROM customer AS c JOIN address AS a ON c.address_id = a.address_id WHERE a.zip_code = ?1
```
