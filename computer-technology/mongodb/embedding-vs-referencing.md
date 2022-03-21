---
tag: comparison
---

# Embedding vs Referencing
There are basically two ways of modelling relationships in MongoDB:

* Embedding related documents as subdocuments
* Storing a reference to the related document's ID in the referencing document

## When to use each one
(Copy pasted from [[mongodb-the-definitive-guide]])

|Embedding is better for...                          |Referencing is better for...                    |
|----------------------------------------------------|------------------------------------------------|
|Small subdocuments                                  |Large subdocuments                              |
|Data that does not change regularly                 |Volatile data                                   |
|When eventual consistency is acceptable             |When immediate consistency is necessary         |
|Documents that grow by a small amount               |Documents that grow by a large number           |
|Data that you'll often need a second query to fetch |Data that you'll often exclude from the results |
|Fast reads                                          |Fast writes                                     |

## Considerations against referencing
As of MongoDB 5, we cannot use `$lookup` (i.e. the MongoDB's `JOIN` equivalent) in sharded collections. So choosing referencing for a relationship might essentially preclude scalability?

Considering that sharding is the go-to solution for very large collections and that referencing is recommended for fast writes and large documents... doesn't this make it contradictory, and thus make referencing a dangerous design consideration?
