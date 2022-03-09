# Compund index
Indexes can also be declared on several fields, so these queries can be faster

In general, the first field in the index can be used to index even queries that don't use all of the fields.

In general, it should be designed so that the first field should be the one that's most likely to be used in equality filters, and those that are likely to be used in multi-valued filters then ==why?==

### Example
```js
db.students.createIndex({"class_id": 1, "student_id": 1})
```
