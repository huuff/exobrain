---
tags: sucks
---

# Cookies' security problems
*These come from the [RFC6265](https://httpwg.org/specs/rfc6265.html)*

* Cookies are a form of ambient authority and introduce the possibility of [[csrf]] attacks.
* Cookies are stored and sent in cleartext unless the `Secure` attribute is set.
* Cookies are not differentiated at the port level. Two mutually untrusting servers on the same domain and different ports can read each other's cookies.
* Even if a cookie has a `Path` variable and limited to some specific path, there's no way to prevent a different path from overriding it. So mutually untrusting servers can't be set up in different paths either.
* It relies on DNS, so if DNS is compromised, then cookies are too.
