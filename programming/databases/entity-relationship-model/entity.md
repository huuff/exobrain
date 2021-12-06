# Entity
Represents a real-world "thing" or "object" that is distinguishable from all others. These are grouped into *entity sets*. An entity whose identity depends on another entity is a [[weak-entity]], otherwise it's an **strong entity**

## Diagrammatic representation
A divided box, with a shaded top part that contains the name of the entity, and a larger one that contains the [[attribute]]s. The [[primary-key]] is underlined.

```mermaid
erDiagram
  instructor {
    string ID
    string name
    numeric salary
  }
```

It's usual that when some entity is repeated across several diagrams, the [[attribute]]s are only shown in the first one and omitted in the subsequent ones.

## Reduction to the [[relational-model]]
These are the easiest object to reduce to the relational model: The attributes are equivalent as-is to relational attributes, and the entity is equivalent to a relation. Also the primary key stays the same.
