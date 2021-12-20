---
tags: tips
---

# Template method with Lombok

### Problem
I very often use the template method because it leads to very succicnt code. For example I might use `default` within interfaces: (not real code, almost pseudocode)

```java
public interface SaveService<Entity> {
  Repository<Entity> repository();
  Logger logger();

  default void save(Entity entity) {
    repository().save(entity);
    logger().info("Saved {}", entity);
  }
}
```

This allows me to define sensible method defaults to DRY my implementations, and provide specific strategies or components in the implementor. However, this leads to a lot of boilerplate to implement the overridable methods:

```java
@RequiredArgsConstructor
public class EntityService implements SaveService<EntityImplementation> {
  private final Repository<EntityImplementation> repository;
  private final Logger logger;

  @Override
  public Repository<EntityImplementation> repository() {
    return this.repository;
  }

  @Override
  public Logger logger() {
    return this.logger;
  }
}
```

### Solution
I found out I can make this much terser if I just use Lombok's `@Getter` (and name the methods accordingly):

```java
public interface SaveService<Entity> {
  Repository<Entity> getRepository();
  Logger getLogger();

  default void save(Entity entity) {
    getRepository().save(entity);
    getLogger().info("Saved {}", entity);
  }
}
```

Then in the implementor is as simple as:


```java
@RequiredArgsConstructor
public class EntityService implements SaveService<EntityImplementation> {
  @Getter private final Repository<EntityImplementation> repository;
  @Getter private final Logger logger;
}
```
