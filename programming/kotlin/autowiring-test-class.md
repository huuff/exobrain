---
tags: how-to
---

# How to autowire beans in a test class
Declare a constructor and annotate it as `@Autowired` like in:

```kotlin
internal class UserRolesTest @Autowired constructor(
    val userRepository: UserRepository,
    val roleRepository: RoleRepository,
    val userRoleRepository: UserRoleRepository,
) {
  ...
}
```
