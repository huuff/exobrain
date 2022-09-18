# `Vary`
The `Vary` header specifies what headers from a request were used during [[content-negotiation]] to choose an appropriate response. 

This may be especially useful for intermediate proxies and caches, since they may receive requests similar to the ones that made a response to be cached, but they must make a decision on what document to return. If the cache knows exactly what headers were used to take the decision by the server, it can take that decision itself.

### Example
A client might send a request with headers
```
Accept-Language: en
User-Agent: Firefox
Accept: text/plain
```

And the server might ignore most of them and only take the `User-Agent` into account. Then it may reply with a `Vary: User-Agent` header.

This way, a cache can know to return this same response for any requests with the same `User-Agent`, as other headers were ignored.
