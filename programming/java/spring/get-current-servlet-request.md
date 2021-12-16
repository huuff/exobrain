---
tags: how-to
---

# Get current servlet request
Thanks to the power of `ThreadLocals`:

```java
HttpServletRequest request = 
        ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes())
                .getRequest();
```

It can even be autowired

```java
@Autowired
private HttpServletRequest request;
```

[Source](https://stackoverflow.com/a/1795931/15768984)
