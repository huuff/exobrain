# `SELECT`
Redis has support for multiple databases through the `SELECT «dbid»` command. This, however, is deprecated and has several issues:

* Each database is exclusively identified through an integer, so, no descriptive identifiers.
* Redis is single-threaded, so if you have several disjoint sets of data that are isolated enough to run on their own database, you're better off running a separate Redis instance for each one, so you take advantage of multicore processors.
* It's hard to track resource usage when using several databases in a single Redis instance. Using separate instances, both tracking resources and adding limits/minimums are easier (e.g. with [[docker]] containers)
