# `Host`
The `Host` header was added in HTTP/1.1 to address a critical flaw of HTTP/1.0: since HTTP/1.0 only sent the relative path of a resource, providers had it very hard to do any form of [[virtual-hosting]]. The `Host` header carries the fully qualified domain of the host so the server can use it to discern what virtual host the request is targeted to.

For these reasons, the `Host` header is mandatory for all requests in HTTP/1.1

### Example of the flaw
Suppose a server is hosting both sites `joes-hardware.com` and `marys-antiques.com`. Using HTTP/1.0, it might receive a request `GET /index.html`, and there's no way to know to which of the two sites it is targeted to.
