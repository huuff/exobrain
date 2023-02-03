---
tags: advice
---

# DTO Projection
Simply a POJO created from a row or set of rows. It's recommended to prefer fetching **DTO projections** to [[entity|entities]] for read-only operations because:

* You can select only the attributes you need (Although there is some lazy-loading mechanism to do this with entities too in Hibernate)
* These are not managed by Hibernate, so they are not in the cache, not dirty-checked, etc. So it's faster.
* Can actually make them immutable!
* You can be closer to the native SQL query

## Ways of doing it

### JPQL's constructor expression
You can do something like:

```java
entityManager.createQuery("""
  SELECT NEW DtoProjection(
    e.firstAttribute,
    e.secondAttribute,
    e.thirdAttribute
  ) FROM Entity
""", EntityProjection.class).getResultList()
```

### Receiving a tuple

```java
var tuples = entityManager.createQuery("""
  SELECT NEW EntityProjection(
    e.firstAttribute AS fa,
    e.secondAttribute AS sa,
    e.thirdAttribute AS ta
  ) FROM Entity
""").getResultList()

var dtoProjections = tuples.
                        .stream()
                        .map(tuple -> new DtoProjection(tuple.get("fa"), tuple.get("sa"), tuple.get("ta"))
                        .toList();
```

### `ResultTransformer`
An interface that makes me nauseous.

* Has an useless method (can derive the `transformList` simply by iterating by `transformTuple`)
* `transformList` returns and receives a raw generic type! This was literally the first time I've seen that in a library
* `transformTuple` receives and returns object arrays! No type safety at all

## The ugly
Even though it's recommended, it's basically unfeasible. Whenever your DTOs have nested objects or collections (that may represent OneToMany relations) you're screwed.

* JPQL constructor expressions are really basic, syntax-wise, and only take direct attributes. No collections of any kind, no nested constructor expressions.
* For tuples, a join for one-to-many relations returns repeated tuples. You'd have to iterate them, create the base DTO on the first one and then add the rest to the collection inside the base DTO. This is a highly awkward and imperative process.
* Won't even mention `ResultTransformer`

Honestly, I think the only way to do this right is by using [multisets with jOOQ](https://blog.jooq.org/jooq-3-15s-new-multiset-operator-will-change-how-you-think-about-sql/)
