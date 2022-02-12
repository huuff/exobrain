---
tags: how-to
---

# Running a specific test from the command line
The format for the option is 

```
-D<task name>.single = <test name pattern>
```

### Example
Suppose you have a naming convention for Spock tests, named like `*Spec.groovy` (for example `InMemoryRepositorySpec.groovy`), then you run it like

```
gradle -Dtest.single=**/*Spec test
```
