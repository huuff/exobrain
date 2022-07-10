# `db.fsyncLock()` and `db.fsyncUnlock()`
If you need to create a copy of the data in your MongoDB database, you can just copy the files in the data directory. However, for this to work you have to stop writes from being executed. `db.fsyncLock()` does exactly that. You can then resume writes using `db.fsyncUnlock()`.

There's a caveat of interaction between `db.fsyncLock()` and authentication: If you disconnect from the database while locked, you won't be able to connect to it again locked.
