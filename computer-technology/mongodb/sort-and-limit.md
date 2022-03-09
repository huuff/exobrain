# MongoDB always assumes that when using both `sort` and `limit` you mean to use `sort` first
Therefore `db.foo.find().limit(10).sort()` is the same as `db.foo.find().sort().limit()`. It's nice I guess?
