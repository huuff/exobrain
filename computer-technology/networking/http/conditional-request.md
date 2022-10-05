# Conditional request
Requests can be made to a resource only if it has been changed in some period of time. This spares us from having to retransmit the whole body of the resource again. A condition is specified on a [[http/validator|validator]] such as the document's `Last-Modified` or [[etag]] header. The conditional headers are:

* `If-Modified-Since: «date»`: Only retrieve the resource if it has been modified since the specified date.
* `If-Unmodified-Since: «date»`: Only retrieve the resource if it **hasn't** been modified since the specified date.
* `If-Match: «ETag»`: Only retrieve it if the ETag matches the passed value
* `If-None-Match: «ETag»`: Only retrieve it if the ETag **doesn't** match the passed value

While `If-Modified-Since` and `If-None-Match` are useful with `GET` requests for avoiding data transfers for resources that are already cached, `If-Unmodified-Since` and `If-Match` are useful with state-modifying requests to avoid [[lost-update|lost updates]] : a client can modify some resource if and only if someone else hasn't modified it between the time it was read and the time the state-modifying request was sent.

