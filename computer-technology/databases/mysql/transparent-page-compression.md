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
* Compression must align with filesystem blocks, so if they are 4kB, even if compression leaves 15kB free, only 12kB will be useable.
* It seems to inflict pain on filesystems, and really increase the time it takes to drop a table. Some notes on these issues are [here](https://smalldatum.blogspot.com/2015/08/first-day-with-innodb-transparent-page.html), [here](https://smalldatum.blogspot.com/2015/09/second-day-with-innodb-transparent-page.html), [here](https://smalldatum.blogspot.com/2015/09/third-day-with-innodb-transparent-page.html) and [here](https://smalldatum.blogspot.com/2015/10/wanted-file-system-on-which-innodb.html)
