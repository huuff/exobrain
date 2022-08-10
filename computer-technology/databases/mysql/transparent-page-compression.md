---
tags: definition
---

# Transparent Page Compression
InnoDB's solution for compressing [[databases/page|pages]]. A table can be declared as compressed on creation:

```sql
CREATE TABLE ... COMPRESSION="zlib";
```

Or, it can be altered to add compression

```sql
ALTER TABLE ... COMPRESSION="zlib";
```

This, however, only changes metadata, so new rows will be compressed but old rows won't. You can use `OPTIMIZE TABLE «table name»` to compress all old rows.

### Caveats
Most of the issues come from the fact that it uses [[hole-punching]] to work, and this seems to be unsupported by many filesystems and cause some issues:

* Compression must align with filesystem blocks, so if they are 4kB, a tuple that takes 8kB and is compressed to 5kB will still take 8kB on the filesystem, so we incur the performance overhead of compression while not saving any space.
* It really increases the time it takes to drop a table. Some notes are [here](https://smalldatum.blogspot.com/2015/08/first-day-with-innodb-transparent-page.html), [here](https://smalldatum.blogspot.com/2015/09/second-day-with-innodb-transparent-page.html), [here](https://smalldatum.blogspot.com/2015/09/third-day-with-innodb-transparent-page.html) and [here](https://smalldatum.blogspot.com/2015/10/wanted-file-system-on-which-innodb.html)
* The standard tools might not even be able to work correctly with the sparse files, they might show incorrect file sizes and `cp` might take huge amounts of time. [See here](https://www.percona.com/blog/2017/11/20/innodb-page-compression/)
