# HTTP/2 features
* Contrary to HTTP/1, it's a binary protocol, which makes it easier to parse by machines, but becomes humanly unreadable.
* Header compression, which solves the classical HTTP/1 problem of fat headers being constantly resent
* Multiplexed: A single connection is reused for all transactions, avoiding the problem of multiple handshakes and TCP's [[slow-start]]
