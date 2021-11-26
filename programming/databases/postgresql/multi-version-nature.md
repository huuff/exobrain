# Postgres' multi-version nature
Unlike other database systems, [[postgresql]] does not have a dedicated [[undo-log]] to enable [[mvvc]]. Instead, every database object maintains its own history of changes. Since the log doesn't need to be scanned, the rollback process becomes much lighter.

This also means that deleted rows are not instantly deleted since the previous version is still stored. This means that space needs to be reclaimed by a different process, called *vacuuming*
