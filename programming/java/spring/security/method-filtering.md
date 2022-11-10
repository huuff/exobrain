# Method Filtering
This Spring Security feature allows us to filter lists at run-time depending on the authentication of the user. For example, this method will remove all products passed to it that don't belong to the currently authenticated user.

```java
@PreFilter("filterObject.owner == authentication.name")
public void sellProducts(List<Product> products) {
  ...
}
```

Some notes:
* On the other hand `@PostFilter` filters the returned objects instead of the parameter
* This can only be applied to methods that take or return collections
* The filtered elements are removed from the collection, so it needs to be mutable
