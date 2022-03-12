# Multikey index
A multikey index is one that is generated on a field which contains an array for *any* document in the collection. Multikey indexes create an index entry for each element of the array. This makes them much more expensive than normal indexes because a single operation might incur in the updating of potentially much many more index entries.

You can't have a [[compound-index]] with more than one multikey index because this would lead to a huge explosion of combinations and cause performance issues.

You can find whether a multikey index was used for a query when running `.explain()`, there, the `isMultikey` field will be true. Once an index becomes a multikey index, it can never stop being so (even if arrays are no longer stored in the given fields). The only option to undo it is to drop and recreate the index.
