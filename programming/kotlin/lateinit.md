# `lateinit`
This declaration modifier indicates that a property will be accessed by some external mechanism (such as a getter or reflection by a framework), and even though it's initally declared as `null`, we guarantee the compiler that it'll be non-null when used.

Therefore, this allows us to declare a variable without an initial value without declaring it as belonging to a nullable type. This frees us from having to use safe-accesses (`?.`) or non-null assertions (`!!`) all the time when working on it.

Note that such a declaration must be `var` because it has to be modified at runtime

## Example

```kotlin
class MyTest {
  private lateinit var myService: MyService

  @Before
  fun setUp() {
    myService = MyService()
  }

  @Test
  fun testAction() {
    assertEquals("foo", myService.performAction())
  }
}
```
