---
tags: caveat
---

# When MongoDB fails to index an element
In some cases MongoDB is unable to index an element. Index buckets are of limited size and if an entry exceeds it, MongoDB will simply not index it without any error or indication. This causes confusion as these entries will simply not appear in indexes query results and seem to be "invisible".

For example, if a key is bigger than 8KB, MongoDB will not index it. Thus if you have declared a unique index, this key will not be subjected to it and thus you'll be able to store identical keys.
