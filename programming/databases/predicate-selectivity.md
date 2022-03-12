# Predicate selectivity
When using a database `SELECT` the **selectivity** of a predicate is given by the formula

$$ S = \frac{\text{# of matched rows}}{\text{# total number of rows}} $$

Therefore, the lower number of matched rows, the more selective the predicate gets.

## Performance considerations
Predicate selectivity affects the execution plan:

* A statement with low selectivity is faster when using an [[index-scan]], since the index narrows the result set to a much smaller space
* A statement with high selectivity is faster when using a [[sequential-scan]], since querying the index also has an overhead. If most entries are to be in the result, looking at the index and then in the actual object (row, document) is twice as much work as just adding the object directly to the result.
