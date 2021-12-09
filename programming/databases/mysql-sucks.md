# Things about MySQL that suck
* (As of MySQL 8) MySQL has no sequences [Source?](https://stackoverflow.com/a/26578578/15768984). This means that identity columns are the only option for [[autoincremented-ids]] (See issues there)
* Apparently, the code of the implementation is a big fat mess [^1]

[^1]: [Leaving MySQL](https://blog.sesse.net/blog/tech/2021-12-05-16-41_leaving_mysql.html)
