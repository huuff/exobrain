# HTTP/2 Layers
In order to ensure compatibility with HTTP/1 while providing performance gains, the HTTP/2 protocol is separated into two orthogonal layers:

* The framing layer is the one that enables low-level multiplexing of connections and all the cool performance gains
* The data layer is the one that conains all the classical HTTP logic such as verbs, headers, status codes, etc.
