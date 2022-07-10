# Tagging
There are two ways of tagging a release:

* The `tagDatabase` [[change-type]]
* The `tag` command: doesn't need to specify a [[change-log]] because it always tags the last row in [[databasechangelog]]

When running `rollback <tag>`, all changes made after `tag` are rolled back

Tagging is not possible for SQL changelogs.

