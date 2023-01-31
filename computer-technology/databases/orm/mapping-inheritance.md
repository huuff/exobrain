---
tags: tips
---

# Mapping Inheritance
Inheritance is a main feature of object oriented languages, which is also outside of the scope of the relational model. Thus, ORM framewors must be really smart around mapping inheritance so the end result feels natural.

### Mapping Strategies
These are some of the strategies to map an inheritance model to the database.

#### Mapped Superclass
This means that all concrete classes get their own database table, and that attributes belonging to the supperclass just get added to each of the classes. This makes polymorphic queries impossible.

#### Table per Class
Similar to the mapped class strategy, but now the superclass is also an entity, allowing polymorphic queries and associations with the superclass. Associations to the parent, however, are made ad-hoc by the ORM by UNION-ing all concrete tables.

####  Single table
All concrete classes' attributes are spread over a single table. An instance of one concrete class has only the attributes belonging to that class as non-null, and all others as null. This is very efficient, but integrity constraints are much harder, specially considering we can't declare non-null attributes.

#### Joined
Each subclass gets its own table (like for Table per Class), but the superclass also gets a table. Polymorphic queries are possible by joining the tables of the subclasses.


### Choosing a strategy
You have to consider how often will polymorphic queries be needed (querying for the superclasses), whether we have associations to superclases and whether subtypes have many attributes additional to supertypes, or only differ in behavior.

* If we don't need polymorphic queries nor associations, lean towards *Table per Class*. Even though polymorphic queries won't be optimal, it'll be easy to switch to a strategy that allows them.
* If we need polymorphic queries or associations and subtypes have relatively few additional properties to their supertypes (they differ mainly in their behavior), lean towards *Single table*. This will have the least downsides if the number of nullable columns is low.
* If we need polymorphic queries or associations and subtypes may have many additional properties (they differ mainly in the data they hold), lean towards *Joined* or *Table per Class* depending on the depth and width of the inheritance hierarchy.
