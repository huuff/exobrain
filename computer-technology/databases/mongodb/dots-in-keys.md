---
tags: caveat
---

# You can't put dots in document keys
It's important to remember that dots in queries are used to access subdocuments, therefore MongoDB won't allow you to put dots in document keys. A hacky solution is to use a different symbol and do a replace on insertion and on retrieval. Though that's lame.
