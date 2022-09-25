# Server Push
Server push is an HTTP/2 technique that might have a really high-ceiling of possible performance improvements: the server can send resources that the client never asked for, in the *prevision* that the client will need them later. 

This has the improvement of requiring one less request from the client: it's spared of having to realize it needs that resource and requesting it. On the other hand, this might waste bandwith: the resource might not be finally needed or maybe the client actually had it cached.

**UPDATE**: Seems like server push support was removed by Chrome in 2018, and thus, basically killed. It's a shame since it enabled for [some cool patterns](https://evertpot.com/h2-push-for-apis/). Its currently suggested alternative is [[103-early-hints]]

### Wasted bandwidth
An important problem to keep in mind about server push is that it wastes bandwidth: if the server sends a resource the client doesn't need (e.g., already has it in its cache), the transfer is completely unnecessary. A client can prevent the server from sending it with a `RST_STREAM` frame, but by the time the client decides to send it, and the time it takes for it to get to the server, chances are the server either already pushed the resource or at least part of it.

#### Solutions

##### Server-side tracking
A server could keep track of which resources it has already pushed (maybe at the connection or IP level) to prevent wasting bandwidth, but of course, this isn't without its problems:

* Load balanced servers must have a way to find out wether other server pushed the resource
* The browser cache might have been cleared

##### Cookie tracking
The server could send a [[http/cookie]] with the pushed resource, so whenever the client provides that cookie, the server knows it has the resource pushed. 

![[cache-digests]]
