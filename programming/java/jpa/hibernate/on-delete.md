# `@OnDelete`
This Hibernate-specific (i.e. non-JPA) annotation enables adding an `ON DELETE` behavior to an association, useful for setting a "cascade" action.

## Caveat
Even though using `@OnDelete(OnDeleteAction.CASCADE)` is more efficient than [[jpa/orphan-removal]] (a single `DELETE` statement is used for the whole collection), it has the same caveats as it has: 
* The code might have other references to the deleted elements, and these references are not magically removed, so they drift from the actual database state.
* Furthermore, the second-level cache is not automatically refreshed, so it might contain those stale references.

All in all, still using an [[embeddable]] element/[[element-collection]] is the best choice.
