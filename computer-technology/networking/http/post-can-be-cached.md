---
tags: trivia
---

# `POST` can be cached
This is a new one for me. Since `POST` is non-idempotent and non-safe, I always thought it wouldn't be cacheable, but it is. According to section 9.5 (`POST`) of [RFC 2616](http://www.faqs.org/rfcs/rfc2616.html)

> Responses to this method are not cacheable, unless the response includes appropriate Cache-Control or Expires header fields. However, the 303 (See Other) response can be used to direct the user agent to retrieve a cacheable resource.

But on the other hand, section 13 states that `POST` on a resource must invalidate the cache:

> Some HTTP methods MUST cause a cache to invalidate an entity. This is either the entity referred to by the Request-URI, or by the Location or Content-Location headers (if present). These methods are:
> - PUT
> - DELETE
> - POST

Both of these statements seem a bit contradictory: if you cache a `POST` request, the second `POST` request would be cached and not hit the resource, but then how would the server know it has to invalidate the cache? At the same time if a `POST` request is cacheable, it can create a cached representation, but as section 13 states, it must also invalidate that representation?

[RFC 7231](https://www.rfc-editor.org/rfc/rfc7231) (Which obsoletes RFC 2616), further clarifies this:

> Responses to POST requests are only cacheable when they include
explicit freshness information (see Section 4.2.1 of [RFC7234]).
However, POST caching is not widely implemented. For cases where an origin server wishes the client to be able to cache the result of a POST in a way that can be reused by a later GET, the origin server MAY send a 200 (OK) response containing the result and a Content-Location header field that has the same value as the POST's effective request URI (Section 3.1.4.2).

So a `POST` response can be used as the cached response of a subsequent `GET` request for the same resource.

([Source](https://stackoverflow.com/a/626083/15768984))
