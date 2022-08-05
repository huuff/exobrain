# MVCC Implementations
There are mainly two different ways in which DBMS implement [[mvcc]]:
* Store multiple versions of the records on the database, and periodically garbage-collect them when they are unused (no current transaction needs them). This is what PostgreSQL and SQL Server do.
* Some other databases that have an [[undo-log]] don't actually store multiple versions of the row, instead, they store a pointer to the undo log segments that modify them, and reconstruct rows from these when needed. Oracle, and MySQL's InnoDB do it this way.

[Source](https://amitkapila16.blogspot.com/2015/03/different-approaches-for-mvcc-used-in.html)
