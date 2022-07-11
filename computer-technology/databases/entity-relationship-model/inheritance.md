# Inheritance
An extension to the [[entity-relationship-model]]. It allows representing an "IS A" [[relationship]]. [[entity]]es inherit all [[attribute]]s defined in the parent and also can define their own attributes.

## Specialization vs Generalization
Basically the same thing, but it just defines the thought process that arrives at the inheritance

* **Specialization**: Some entities within a set are found to be quite distinct to others in some specific way, thus they are separated in a different entity set that inherits the original entity set.
* **Generalization**: Repetition is found among some entities, so these attributes are removed from them and defined in a parent.

## Example

* **Specialization**: Suppose we have an `employee(name, salary, rank, secretary_for)`, however, there are two different types of entities lumped into `employee`: instructors have a `name`, `salary` and `rank`, but the `secretary_for` attribute is always `NULL`. Secretaries have `name`, `salary` and `secretary_for` but no rank. We decide to remove `rank` and `secretary_for` and put these into two separate entities, `instructor` and `secretary`, that inherit from `employee`.
* **Generalization**: We have `employee(name, address, salary)` and `student(name, address, credits)`. Both share the `name` and `address` attributes, so we decide to make a top-level `person(name, address)` entity, remove these attributes from `employee` and `student` and make them inherit `person`.

## Types
* **Overlapping or Disjoint**: An inheritance relationship is overlapping if one entity of the parent set can be in any subentity set. Otherwise, if it can only be in one of them, it's disjoint.
* **Total or Partial**: A total inheritance relationship implies that any entity belonging to the top-level set must belong to some lower-level set. Otherwise, if we can have entities in the top set not in any lower-level set, then it's partial.

## Diagrammatic representation

### [[diagram-standards|UML]]
UML-like, subentities have an arrow pointing at parent entities with a hollow head.

## Reduction to the [[relational-model]]
Two alternatives exists

### Top-level schema
Create a schema for the higher-level entity set. For each lower-level entity set, create a schema that includes an attribute for each of its attributes plus one for the [[primary-key]], then all entities share a primary key attribute. The primary key for lower-level entities is a [[foreign-key]] for the higher-level primary key.

### Schema per entity (If disjoint and total)
We just create one schema for each lower level entity, including all attributes of the parent entity. This has some drawbacks, like the fact that we can't refer to any higher-level entity abstractly, 
