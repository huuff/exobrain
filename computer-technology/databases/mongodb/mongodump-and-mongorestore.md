# `mongodump` and `mongorestore`
`mongodump` is a tool for creating dumps of a MongoDB database which can then be used to restore it in another machine.

You can use with a running server:

`mongodump -p «port»`

Or even with an offline server, by just pointing to the database file:

`mongodump --dbpath /data/db`

