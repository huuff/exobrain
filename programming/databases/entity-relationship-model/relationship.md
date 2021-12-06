# Relationship
An association between [[entity]]es. Relationships are grouped in *relationship sets*

## Concepts
* [[participation]]
* The function that an entity plays in a relationship is said to be its **role**
* A relationship might have own [[attribute]]s, called **descriptive attributes**

## Types by cardinality
* [[one-to-one]]
* [[one-to-many]]
* [[many-to-many]]
* It's also possible to specify cardinality with specific numbers, such as `1..*` for a one-to-many, total relationship or `1..1` for a one-to-one, total cardinality.

## Diagrammatic representation
The participating entities are connected by lines, in some representations (I don't know exactly which), a diamond represents the relationship (with its name inside) and the entities are connected through it. The role of the entity might be specified in the lines, if necessary. Other details are explained in each cardinality type.
