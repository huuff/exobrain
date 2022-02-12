# Classes in Kotlin are closed by default
Therefore you need to set the `open` modifier to allow subclassing.

## Benefits
* It forces us to be explicit about which classes are appropriate to be subclassed
* It allows [[smart-cast]]s to work in a wider variety of situations. Smart casts only work when the compiler can know for sure that it's not possible that the object changed since the type check. For properties this means that they have to be final. If the class is subclassable, a subclass could declare an accessor for that property and break this assumptions

## Problems
* Inheritance is a real useful feature for testing, it allows to very easily mock and stub methods, which is why framewoks lime Mockito require that mocked classes are not final.
