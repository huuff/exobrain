# Cases where you NEED a [[type-assertion]]
* Deserializing JSON with literal types. There's no choice, importing directly a JSON will always import it with the widest type, e.g, if you have a property of type `"thing"`, it'll just be deserialized as `string`. So you have to assert the correct type.
