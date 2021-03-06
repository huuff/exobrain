# Attribute
The name of some property associated to an [[entity]] or [[relationship]], these map directly to [[relational-model/attribute]]s in the [[relational-model]]

## Complex attributes
These don't (as far as I know) have a direct representation in the [[relational-model]]. These can be

* **Composite**: i.e. composed by several simple attributes. A complex attribute `name` is composed by the simple attributes `first_name`, `middle_name` and `last_name`
* **Multi-valued**: Can hold more than one value, so they are like arrays, sets, or collections.
* **Derived**: These are not directly stored, but can be computed from other stored attributes. If we have a simple `birth_date` attribute, we can have a derived `age` attribute calculated by subtracting `birth_date` from the current date.

## Reduction to the [[relational-model]]
* **Composite**: Composites attributed are simply separated into simple attributes of its constitutent parts.
* **Multi-valued**: We create a new relation schema that contains an attribute that holds its value and one for each attribute of the containing [[entity]] (which is a [[foreign-key]]). Its [[primary-key]] consits of all of its attributes.
