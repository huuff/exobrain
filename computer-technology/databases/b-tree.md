---
tags: definition
---

# B-Tree
An implementation of a [[page-oriented-storage-engine]], and the default index implementation for almost all [[relational-model|relational databases]]. 

In B-Trees, key-value pairs are sorted by key which allows efficient lookups and range queries. B-Trees store the data in fixed-size [[database/page]] which corresponds roughly to a block in the underlying hardware. The tree is kept balanced so lookups only take [[logarithmic-time]]

### Reading
Each page is identified by an address, which pages can use to refer to other pages, similar to a pointer. This can be used to construct a tree of pages where one page is identified as the root, which contains only references to other pages which contain more references themselves.

Each child page is responsible for a range of keys, so to find a key we just need to follow a path until we find the page that only contains the value to the key we're looking for (the *leaf page*).

### Writing
#### Updates
Only entire pages are read and written at a time. So we must find the page that contains the target key, read it, update it in place and then write it back.

#### Insertions
We find the page that holds the appropriate range of keys and then add it there. If there is no space left, the page is split into two pages and the parent page is updated to refer to both new pages.
