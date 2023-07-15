---
tags: mental-model
---

# Git actions as moves between trees
Git commands can usually be summarized as moves between trees (for another view on this mental view: see [[three-trees]]). The following table will make this easier to see:

|From             |To               |Command    |
|-----------------|-----------------|-----------|
|Working Directory|Staging Area     |`add`      |
|Staging Area     |Local Repository |`commit`   |
|Local Repository |Remote Repository|`push`     |
|Remote Repository|Local Repository |`fetch`    |
|Local Repository |Working Directory|`checkout` |
