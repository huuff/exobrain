# What sucks about JPQL
Mostly everything! Most query languages that abstract over SQL suck
* No nested constructor expressions, which makes it pretty unsuitable for any mapping and any alternative is hell (check [[dto-projections]])
* No string interpolation! If you receive a parameter, you can't use `attribute LIKE '?1%'`, but rather have to use `attribute LIKE CONCAT(?1, '%')`
* Doesn't even have `LIMIT`!
