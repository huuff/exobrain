# `WWW-Authenticate`
This header provides an authentication challenge to a client in a response. As given by section 11.6.1 of RFC 9110, this header is mandatory for a `401` response. It may contain:

* An authentication scheme along with a realm. e.g.: `Basic realm="simple"`
* A key-value pair such as `type=1`

### Realms
A realm is simply a way of distinguishing several authentication domains, where privileges may be split among them or they require different authentication schemes.
