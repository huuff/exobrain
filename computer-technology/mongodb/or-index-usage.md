# `$or` uses an index for each clause
As of MongoDB 4.2 (unsure about later versions), only one index can be used for a query. The only exception are `$or` queries, because each clause in it executes a separate query and the results are then merged.
