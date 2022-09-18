# Locking
WebDAV allows clients to take locks on resources to prevent concurrent modifications on them through the `LOCK` and `UNLOCK` methods. WebDAV supports two usual types of locks:

* Exclusive write locks
* Shared read locks

When a lock is taken in WebDAV, the server provides the client with a unique token (an `opaquelocktoken`) that must be sent in further requests to modify the locked resource.
