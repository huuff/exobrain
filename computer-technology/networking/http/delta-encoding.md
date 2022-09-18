# Delta encoding (RFC 3229)
A very interesting type of request: a client may send a [[conditional-request]], but also specifying that, if the file has changed, it only wants to retrieve the changes. This is done through the `A-IM` header (Accept [[instance-manipulation]]) to specify what algorithms for a delta to accept.

The request headers that can be used:

* `If-None-Match`: To make a [[conditional-request]] associated to an [[etag]].
* `A-IM`: Indication of the types of instance manipulations accepted

The response would send:

* `ETag`: The [[etag]] for the new version of the document
* `IM`: The instance manipulation used
* `Delta-Base`: The [[etag]] of the base document to which these deltas apply. This should be the one sent by the client in the `If-None-Match` header.

### Delta types:

* `vcdiff` for the vcdiff algorithm
* `gdiff` for the gdiff algorithm
* `diffe` for the [[diff-e]] UNIX command.
