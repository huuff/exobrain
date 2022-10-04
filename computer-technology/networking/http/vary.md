# `Vary`
The `Vary` header specifies what headers from a request were used during [[content-negotiation]] to choose an appropriate response. 

This may be especially useful for intermediate proxies and caches, since they may receive requests similar to the ones that made a response to be cached, but they must make a decision on what document to return. If the cache knows exactly what headers were used to take the decision by the server, it can take that decision itself.

As given by section 12.5.5 of RFC 9110:

> A vary field containing a list of field names has two purposes:
> 1. To inform cache recipients that they MUST NOT use this response to satisfy a later request unless the later request has the same values for the listed header fields as the original request (Section 4.1 of [CACHING]) or reuse of the response has been validated by the origin server. In other words, Vary expands the cache key required to match a new request to the stored cache entry.
> 2. To inform user agent recipients that this response was subject to content negotiation (Section 12) and a different representation might be sent in a subsequent request if other values are provided in the listed header fields (proactive negotiation).

### Example
A client might send a request with headers
```
Accept-Language: en
User-Agent: Firefox
Accept: text/plain
```

And the server might ignore most of them and only take the `User-Agent` into account. Then it may reply with a `Vary: User-Agent` header.

This way, a cache can know to return this same response for any requests with the same `User-Agent`, as other headers were ignored.
