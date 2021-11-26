# ACID
A set of properties of database transactions that guarantee data validity:

* [[atomicity]]: Transactions are treated as a unit, either they are fully commited or none of them is commited.
* [[consistency]]: Database invariants are kept (integrity constraints). A transaction can only bring a database from one valid state to another valid state
* [[isolation]]: Transactions that are executed concurrently must bring the database to the same state as if they were executed sequentially. (See [[serializable]])
* [[durability]]: A commited transaction stays commited even in the case of a crash or a system outage.
