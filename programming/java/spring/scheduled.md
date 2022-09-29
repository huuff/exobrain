# `@Scheduled`
This annotation runs the annotated method in a schedule

### Example
This prints the `Hello World!` every 2 seconds:

```java
@Scheduled(fixedDelay = 2000)
public void helloWorld() {
  System.out.println("Hello world!")
}
```
