# Object hierarchy
To enable more granular separation of relations, relational databases define a hierarchy of objects:

* Catalogs: The top level of the hierarchy (also called **databses**)
* Schema: Groups of relations or tables, the middle level
* Relation: The lowest level, the tables.

When referencing a specific relation, it must be done as:

`catalog.schema.relation`

Unless some specific catalog or/and schema is selected as current, then we can omit it.
