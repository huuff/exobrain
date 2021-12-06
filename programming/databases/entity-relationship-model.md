# Entity-Relationship Model
An data representation model designed to aid in the design of [[relational-model|relational databases]]. It adds some more real-world-compliant structures that might reduce the [[impedance-mismatch]]. An entity-relantionship model also has a convenient corresponding diagram representation which eases the communication of the data model with non-technical staff.

## Usage
I fear that these are just a byproduct of the ivory tower of academia and not really used that much in the real world. Heavy data-model design is associated with a previous less agile era of [[bduf]], and maybe in these coming times of microservices designs are not big or permanent enough to warrant its usage (database experts can really embed the design easily into the relational-model without the intermediate entity-relationship step).

However, I think ORM at least draw some of these concepts for their representations, at least [[hibernate]] uses [[entity]]es, and [[relationship|relationship cardinality]], since the impedance mismatch is reduced in the entity-relationship model.

## Concepts
* [[entity]]
  * [[weak-entity]]
* [[attribute]]
* [[relationship]]

## Mapping to the [[relational-model]]
There's a defined procedure for converting an entity-relationship model into a relational model. Some concepts of the relational model are used without modification in the entity-relationship model, such as [[primary-key]]s.

The procedure for converting each type of entity-relationship object into the relational model is described in their own notes.
