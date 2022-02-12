# `const`
By default, top-level properties are exposed to Java by accessor methods (just like any other property). If you want to expose it as a `public static` field use the `const` modifier

```kotlin
const val UNIX_LINE_SEPARATOR = "\n"
```

This compiles to Java

```java
public static final String UNIX_LINE_SEPARATOR = "\n"
```
