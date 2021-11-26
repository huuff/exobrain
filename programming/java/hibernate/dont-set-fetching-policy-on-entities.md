---
tags: advice
---

# Don't set the fetching policy on the entity
Even though we can set up the fetching policy directly on an entity attribute:

```java
@Entity
class Post {
  
  @OneToMany(fetch = FetchType.EAGER)
  private final Set<String> tags;
}
```

This is almost always a terrible decision since:

* Each business case has different data access requirements and one policy can't anticipate all of these.
* The `EAGER` type especially, can't be overriden then on a per-query basis.
* These might require a cartesian product and thus grow very largely in time when the set grows.
