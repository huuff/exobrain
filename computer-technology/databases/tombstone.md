---
tags: definition
---

# Tombstone
A special value used in a [[log-structured-storage-engine]] to mark a key for deletion. Since records are never actually deleted, this special value is used as a guard for the reader to know that all previous values of that key are no longer valid.
