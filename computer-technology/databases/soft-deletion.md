---
tags: pattern
---

# Soft Deletion
A pattern where a record in a database isn't actually deleted, but marked as deleted.

### Purpose
There are some benefits:

* Higher auditability: not only can you read older, deleted records, but you can also check when they were deleted. When deleting data permanently, it's just deleted and nothing of it remains.
* Rollbacks: getting the data back is just as easy as removing the deletion mark.

### Technique
You would just add a `deleted_at` column (in an RDBMS) or field (in a document store). And then:

* When deleting: Just add the time of deletion to the field.
* When reading: Ignore those who have a deletion time.
* When un-deleting: Just make the field `null`

### Downsides
* It has some code leakage, your application data must always be aware of it, lest you incorrectly use deleted data.
* [[foreign-key|Foreign keys]] might become more complex. You might delete a customer but their invoices are also there, so you should also add the deletion mark to all the invoices. In any case, for [[one-to-one]] relationships, if one part of the relationship is deleted while the other isn't, what's the appropriate action with the foreign key?
  * Deleting it means auditability is lost (we can no longer connect the orphaned record to its older owner, and thus we can't undelete it either), and it might even not be possible if the field is required.
  * Keeping it means the relationship cannot be modified.
* As usual, this might make regulatory compliance harder. Like complying with [[gdpr]] where all of a user's data must be completely removed from our systems.
