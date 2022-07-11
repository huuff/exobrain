# What rocks about database-agnostic changelogs
(i.e. changelogs in YAML, JSON, XML or formats different to SQL)

* Since [[liquibase]] can generate the appropriate database-specific SQL, we can apply the same changelog to different types of databases
* For some specific changesets, [[liquibase]] can generate the required rollback commands in these changelogs. This is not true for SQL.
