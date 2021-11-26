# Optimistic locking
(A misnomer, since there is no locking involved)

A technique for ensuring [[isolation]] in [[application-level-transaction]]s. The process is kind of like:

* Database rows include a version column
* This version is increased on every modification
* Upon commiting a transaction, the application can check wether the version of the rows that it manages is the same as the one of the database:
  * If it is, then commit the transaction
  * If it isn't it means that another transaction has increased it in the meantime, and this transaction is to be rolled back.

This allows the application to be aware of a *happens-before* relationship, since it knows which data projection is older than another by checking their versions.
