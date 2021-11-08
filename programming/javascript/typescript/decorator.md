# Decorator
These enable [[aspect-oriented-programming]] directly in the language. A decorator `decorator` can be applied to a target my annotating it with `@decorator`

## Decorators on a method, property or accessor
These receive three arguments:
* The [[prototype]] of the decorated object
* The key of the property/method/accessor on the object
* The [[property-descriptor]]

Note that decorators are run when the class is loaded and not when an instance is created.

==TODO: add example==
