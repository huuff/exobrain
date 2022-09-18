# `Cache-Control`
A very powerful header that allows controlling how a request/response is to be cached.

### In requests
Some available options are:

* `no-cache`: do not return a cached document without first [[http/revalidation|revalidating it]]
* `no-store`: do not return a cached document and do not store the response
* `max-age`: the document in the cache must not be older than the specified age
* `max-stale`: the document might be stale (expired by the server-provided criteria) but not for longer than the specified value
* `min-fresh`: opposite to `max-stale`, even if the document is not stale, it cannot be older than its age plus the specified amount
* `no-transform`: the document must not be transformed before the response is sent
* `only-if-cached`: only send the document if it's in the cache, and without contacting the origin server

### In responses
* `public`: the response may be cached by any cache
* `private`: it may be cached but only in a way that it may accessed by a single client (e.g., in the browser's cache)
* `no-cache`: if accompanied by other headers: it may be cached but the listed headers must be removed. If not, then a cached response may be returned only after [[http/revalidation]]
* `no-store`: response must not be cached
* `no-transform`: response must not be transformed
* `must-revalidate`: response must be revalidated before being sent
* `proxy-revalidate`: shared caches must revalidate response before serving it. Private caches may ignore this header.
* `max-age`: maximum age during which the document may be considered fresh
* `s-max-age`: like `max-age` but specifically for shared, public caches, where it overrides `max-age`'s value. Private caches may ignore it.
