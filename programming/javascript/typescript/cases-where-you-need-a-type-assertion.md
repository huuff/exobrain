# Cases where you NEED a [[type-assertion]]
When you definitely know more than TypeScript about what the type of some value is:

* Deserializing JSON with literal types. There's no choice, importing directly a JSON will always import it with the widest type, e.g, if you have a property of type `"thing"`, it'll just be deserialized as `string`. So you have to assert the correct type.
* When interacting with the [[dom]], you might know for sure that an element with id `#suscribeButton` is an `HTMLButtonElement`, but TypeScript has no way of knowing, so you just assert it.
