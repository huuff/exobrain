# Priority
One benefit of HTTP/2 is being able to associate priorities to streams. Since HTTP/1 was a sequential protocol, this means that dependencies of resources were very easy to discover. The browser was careful to examine any responses, identify the most critical parts and request these first.

This, however, is not so easy for HTTP/2, since due to streaming, many requests are made in parallel and the server starts to work on them right away. HTTP/2 solves this by providing `PRIORITY` headers so a client can specify the importance of each resource it requests.

### Example
*Not so much of an example, just a small clarification*

If we have a stream with priority 2 and one with priority 1, this means we'd get two messages for the first one for each one of the second.
