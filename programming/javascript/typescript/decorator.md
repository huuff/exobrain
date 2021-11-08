# Decorator
These enable [[aspect-oriented-programming]] directly in the language. A decorator `decorator` can be applied to a target my annotating it with `@decorator`

## Decorators on a method, property or accessor
These receive three arguments:
* The [[prototype]] of the decorated object
* The key of the property/method/accessor on the object
* The [[property-descriptor]]

## On a parameter
Receives
* The prototype
* The key of the method
* The index of the annotated parameter

## On a class
Only receives the constructor of the class.

## Limitations
Note that decorators are run when the class is loaded and not when an instance is created, and that the first parameter is the prototype of the target and not the actual target. This means that we can't directly access the object properties' values

==TODO: add example==
