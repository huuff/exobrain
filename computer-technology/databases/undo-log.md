---
tags: definition
---

# Undo-log
A data structure used by most databases (notably not [[postgresql]]) to enable [[mvcc]]. It contains information of all issued statements (including uncommitted ones), in case some of them might need to be rolled back.
