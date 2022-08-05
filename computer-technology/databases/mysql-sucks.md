# Things about MySQL that suck
* (As of MySQL 8) MySQL has no sequences ([Source?](https://stackoverflow.com/a/26578578/15768984)). This means that identity columns are the only option for [[autoincremented-ids]] (See issues there)
* Apparently, the code of the implementation is a big fat mess [^1]
* MySQL's implementation of [[utf-8]] is not actually UTF-8, but a proprietary alternative implementation that can't store all UTF-8 characters. MySQL never fixed this but instead released an alternative `utf8mb4` encoding [^2]

[^1]: [Leaving MySQL](https://blog.sesse.net/blog/tech/2021-12-05-16-41_leaving_mysql.html)
[^2]: [In MySQL never use `utf8`. Use `utf8mb4`](https://adamhooper.medium.com/in-mysql-never-use-utf8-use-utf8mb4-11761243e434)
