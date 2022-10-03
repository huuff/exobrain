# `Expect`
The `Expect` header might be sent by a client to indicate that's about to send a request and needs a confirmation by the server before doing so. It's used with the `100-continue` value, so as to indicate that it expects to receive a `100 Continue` [[interim-responses|interim response]] before beginning to send the content.

This can be used to avoid wasting bandwidth in a potentially large request when there is no guarantee that the server might be able to process it.

### Example
When sending a request with credentials not yet validates, the client might send an initial request without contents and an `Expect: 100-continue` header. The server can respond with either `401 Unauthorized` or `100 Continue`.
