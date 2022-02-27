# Property delegation
Property delegation allows defining implicit [[accessor]]s on a property that call to another object to get and set the property's value. They are declared by using the `by` keyword.

## Example
If we have the following declaration

```kotlin
class C {
  var prop: Type by MyDelegate()
}
```

The `MyDelegate` object is stored and the accessors of `C` do the following:
* On `get`, the `getValue` method of `MyDelegate` is called with two arguments: `this` and a `KProperty` argument that reflects the accessed property.
* On `set` the `setValue` method of `MyDelegate` is called with `this`, a `KProperty` object and the set value. The previous example roughly compiles to the following:

```kotlin
class C {
  private val <delegate> = MyDelegate()

  var prop: Type
    get() = <delegate>.getValue(this, <property>)
    set(value: Type) = <delegate>.setValue(this, <property>, value)
}
```
