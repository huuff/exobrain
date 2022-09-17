# Chunked encoding
Chunked encoding breaks messages into chunks of a known size. Chunks are sent one after the other, so the total size of the full entity is not necessary to be known in advance. This can be useful when the server is not able to determine it, such as for streaming or when the entity is being generated dynamically.

Note that chunked encoding is a property of the message (since it's a [[transfer-encoding]]), not of the body. And thus, it's different from [[multipart-encoding]], which is a property of the body.

### Why is it necessary
As mentioned, the server does not need to know the size of the entity before sending it for putting it in a [[content-length]] header. This is not so much of an issue for a non-persistent connection, as the client can just read until the connection closes (but of course, this still has the issue of connections closing abruptly), but for [[persistent-connection|persistent connections]], the client needs to know where a previous message ends before processing the next one.

### Format
The server sends a response with a header of `Transfer-Encoding: chunked`.

Messages are then sent in chunks with the length of the chunk, separated from the message by a `CRLF`. The last chunk is signified by containing only a length of `0` and a `CRLF`

### Trailer
The initial server response might also contain a `Trailer` header that can indicate the properties of the last message in the response. This is useful to send information that's impossible to know before having gotten the full message, such as the message digest of it.

For example, for specifying a trailer of [[content-md5]] the server would send a `Trailer: Content-MD5` header.
