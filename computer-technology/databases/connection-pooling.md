# Connection pooling
A typical strategy when dealing with database connections. Instead of actively opening an closing database connections, a number of connections are kept open in a pool and:

1. When a connection is requested the pool looks for unallocated connections
2. If the pool finds one, it is handled to the client
3. If there is none available, the pool tries to grow to its maximum size
4. If the maximum size is reached, it will try again several times before giving up
5. When the client closes the *logical* connection, instead of closing the *physical* connectiom, it is just marked a free for the next client that requests it.

## Benefits
* This process can be monitored by the application layer rather than the database and thus helpful statistics related to connection usage can be collected closer to where they are actually used.
* The connection acquisition time is reduced since the *physical* connections don't need to be actually closed and opened constantly.
* The pool acts as a buffer of connections, thus if there is a spike in demand, the pool will level it instead of overwhelming the database's resources.
