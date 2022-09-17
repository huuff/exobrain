# `Content-MD5`
Even though HTTP is built on top of a reliable protocol such as [[tcp]], there are many ways in which a message can be modified in-transit, such as by an intercepting proxy. The `Content-MD5` header is sent by the server with the MD5 hash of the contents of the body of the message so the client can verify its integrity.

Also, it can be useful for storing contents in a hash table, using the hash as the key.
