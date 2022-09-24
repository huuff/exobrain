# `Connection: Keep-Alive`
An extension to HTTP/1.0, where a connection was immediately closed after it finished sending data. This header indicates that the client intends to keep the connection open to keep sending data. This header was no longer necessary for [[http1.1]] because the connection was persistent by default.
