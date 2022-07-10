# Operator
An operator specifies an operation to perform, they start with a `$`, some examples are `$and`, `$or` or `$push`

## Syntax
There are two:
* Standard: `{ «field»: { «operator»: «value» }}`. e.g. `{ "popultion": { "$gt": 10000 }}`
* Aggregation: `{ «operator»: [ «field», «value» ]}`
