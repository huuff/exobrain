# Single Abstract Method (SAM) Interfaces
The name is pretty descriptive: an interface with only one method. These can be directly transformed to a lambda.

## Example
```java
public interface OnClickListener() {
  void onClick(View v);
}
```

A method that accepts an `OnClickListener` can also be called with a lambda:

```java
public void event(OnClickListener listener) {
  ...
}

...

event((view) -> {
  System.out.println("Clicked!")
})
```
