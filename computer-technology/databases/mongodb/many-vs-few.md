---
tags: tip
---

# Many-to-few, many-to-many, one-to-few, one-to-many
A useful conceptual distinction to make when modelling a MongoDB schema is differentiating between "many" and "few" relations.

Usually, for relational databases a "many" side of a relationship might mean any cardinality from 2 instances to infinite. For MongoDB, this distinction is important since a One-to-few might be more efficiently modeled as embedded subdocuments, and a One-to-a-lot might be better modeled as a document reference. Check out [[embedding-vs-referencing]]
