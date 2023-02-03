---
tags: definition
---

# Orphan Removal
When a collection (that represents a relationship to an entity) is annotated with `orphanRemoval = true` (e.g. `@OneToMany(orphanRemoval = true)`), this means that the JPA provider will persist deletions to the collection. That means, if we delete an element of the collection, it'll be deleted also from its table.
