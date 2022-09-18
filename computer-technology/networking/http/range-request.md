# Range request
A client can request only a specific range of bytes from an entity. Some interesting use cases for it:

* Failed downloads: The client can take note of what's the last byte it has received and request only the bytes from that one and onwards to the server to resume the download
* Parallel downloads: A client may request several different servers for different ranges of bytes for the same document and then merge them.

A server can tell its clients that it accepts range requests with the `Accept-Ranges: «unit»` header. (Where `«unit»` is most typically `«bytes»`)

### Example
Use the `Range` header with a range of `bytes`:

```
GET /bigfile HTTP/1.1
Host: www.joes-hardware.com
Range: bytes=4000-
```

This only request bytes from the 4000th one onwards from the server for the `/bigfile` resource.
