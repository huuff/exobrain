# How MongoDB achieves read-your-own-writes
The server keeps a queue of requests for each connection. Each request in the queue is guaranteed to run only after the previous one finishes, which means that if you write a document and then query for it in the same connection, you'll always see the changes.

This however does not apply to multiple different connections, so it's common to write a document and check for it in a different connection, which means you won't be able to see the change.
