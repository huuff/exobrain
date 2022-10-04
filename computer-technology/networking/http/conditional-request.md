# Conditional request
Requests can be made to a resource only if it has been changed in some period of time. This spares us from having to retransmit the whole body of the resource again. A condition is specified on a [[http/validator|validator]] such as the document's `Last-Modified` or [[etag]] header. The conditional headers are:

* `If-Modified-Since: «date»`: Only retrieve the resource if it has been modified since the specified date.
* `If-Unmodified-Since: «date»`: Only retrieve the resource if it **hasn't** been modified since the specified date.
* `If-Match: «ETag»`: Only retrieve it if the ETag matches the passed value
* `If-None-Match: «ETag»`: Only retrieve it if the ETag doesn't match the passed value

### To prevent lost updates
From RFC 9110:
> Conditionals can also be applied to state-changing methods, such as PUT and DELETE, to prevent the "lost update" problem: one client accidentally overwriting the work of another client that has been acting in parallel
