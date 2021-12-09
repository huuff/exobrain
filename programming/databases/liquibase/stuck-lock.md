# Stuck lock
A lock in [[databasechangeloglock]] can get stuck if, for example, one system goes down abruptly in the middle of an update. Then, [[liquibase]] won't be able to update because of being locked and some solution is in order.

Manually updating [[databasechangeloglock]] is not recommended. The best solution is to run the command `liquibase --changeLogFile=dbchangelog.xml releaseLocks` (Is the changelog necessary? Why? But the example in the docs state it so)
