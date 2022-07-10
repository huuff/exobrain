# `NATURAL JOIN`
Operates on two relations and produces a relation formed by concatenating these two for all tuples that contain the same values on attributes of the same name

## Example
Given the relations

```
student(id, name, credits)
takes(id, course_id, section)
```

Then `student NATURAL JOIN takes` gives the relation

```
(id, name, credits, course_id, section)
```
