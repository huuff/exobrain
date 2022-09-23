# HTTP/2 requires TLS
Even if HTTP/2 was originally envisioned to fully require HTTPS, and that was later dropped in the specification, the browsers still don't support HTTP/2 without HTTPS anyway. This is for several reasons and has some nuances:

* Not only does it require TLS, but also very specific ciphers.
* HTTP/2 also requires TLS to be negotiated between a client and a server, through [[alpn]]
* This comes also from some ideological purity that HTTPS everywhere should be standard.
* Wrapping HTTP/2 into HTTPS packets made them more opaque to proxies that tended to break compatibility with HTTP/1, so encryption helps to combat [[ossification]]
