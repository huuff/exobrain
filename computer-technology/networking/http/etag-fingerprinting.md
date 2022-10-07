# E-Tag Fingerprinting
It goes like this:

* A server provides an [[etag]] that doesn't actually represent the resource, but that it's uniquely generated for a specific user
* The server serves it with a very long freshness parameter, so that the client caches it for a long time
* Every time a client makes a [[conditional-request]] using that E-Tag, the server can uniquely identify it
