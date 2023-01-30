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
