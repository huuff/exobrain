---
tags: caveat, how-to
---

# Wrong resolution of property expression methods in repositories
Spring Data's algorithm for solving how a certain property is obtained might fail. Consider the following repository method:

```java
List<Customer> findByAddressZipCode(ZipCode zipCode);
```

This will work if there's a property named `address` in `Customer` that contains a `zipCode` property... but what if there's also an `addressZip` property in `Customer`? The algorithm might try to go down that path and fail because it can't find a `code` property.

### Solution
You can explicitly define traversal points with an underscode (`_`). The following definition is unambiguous:

```java
List<Customer> findByAddress_ZipCode(ZipCode zipCode);
```
