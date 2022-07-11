# Aggregation Framework
The aggregation framework is a set of tools within MongoDB that allows doing complex operations on documents on one or more collections.

The aggregation framework uses the concepts of pipelines and stages to organize operations, a series of documents are passed through the pipeline through each of the stages, each of which transforms or filters the documents in some way. Contrary to normal queries, that use `.find`, the aggregation framework uses `.aggregate` with an array of stages

## Example
```js
db.people.aggregate([
  { $match: { $age: { $gte: 18 }}},
  { $project: { name: 1 }}
]);
