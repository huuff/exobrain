# Property Descriptor
An object that describes a property in an object (duh). You can get it by calling `Object.getOwnPropertyDescriptor(object, "propertyName")`

It contains:
  * `writable`: Whether or not this property can be changed
  * `enumerable`: Whether or not can be looped in a [[for-in]]
  * `value`: The current value (function if property is a method)
  * `configuration`: Property definition can be changed and property can be deleted ==TODO: ???==
