---
tags: standard
---

# Web Origin (RFC 6454)
A web origin is composed of:

* Scheme: this allows differentiating a resource on whether it has a scheme with stricter security requirements, i.e.: `http://example.com` is a different origin from `https://example.com`
* [[http/host]]
* Port: as many mutually untrusting applications may be deployed in different ports for the same host.
