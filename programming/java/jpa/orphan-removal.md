---
tags: definition, caveat
---

# Orphan Removal
When a collection (that represents a relationship to an entity) is annotated with `orphanRemoval = true` (e.g. `@OneToMany(orphanRemoval = true)`), this means that the JPA provider will persist deletions to the collection. That means, if we delete an element of the collection, it'll be deleted also from its table.

## Caveats
If another entity has references to the entity of the collection that has orphan removal, these references will still be alive, even if the backing rows in the database have been deleted. This means that orphan removal isn't appropriate when there are shared references, which makes it kind of useless, since using [[element-collection]] would have the same semantics, but with none of the footguns, since also it prevents having shared references, since it's not an entity.
