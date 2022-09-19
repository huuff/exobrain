# Server Push
Server push is an HTTP/2 technique that might have a really high-ceiling of possible performance improvements: the server can send resources that the client never asked for, in the *prevision* that the client will need them later. 

This has the improvement of requiring one less request from the client: it's spared of having to realize it needs that resource and requesting it. On the other hand, this might waste bandwith: the resource might not be finally needed or maybe the client actually had it cached.
