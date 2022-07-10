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
The role of a relationship might be specified as an annotation on the lines that represent it

### [[diagram-standards|IDEF1X]]
The entities are connected by lines, the specific symbol at the ends of the connection depend on the cardinality and the participation type.

### [[diagram-standards|Chen's notation]]
Relationships are represented as a diamong with its name in the middle. Lines connect the diamond with the participanting entities, the specific symbols at the end of the lines depend on the cardinality and participation type.

## Reduction to the [[relational-model]]
Let $R$ be a relationship in whose entities $A$ of [[primary-key]] $a_1, a_2, \ldots, a_m$ and $B$ of primary key $b_1, b_2, \ldots, b_n$ participate. We reduce $R$ as a schema with a primary key of:

$$\{a_1, a_2, \ldots, a_m\} \cup \{b_1, b_2, \ldots, b_n\}$$

Also, if the relationship has any descriptive attributes, these are also added to the schema. Check the notes on each individual cardinality type for further optimizations.
