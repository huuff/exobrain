---
tags: caveat, security-checklist
---

# Redis Security Considerations

* How fast Redis is can actually be a problem for security, since brute-forcing a weak password becomes more feasible. Avoid it by using a long password, of at least 64 bits.
* The password is sent unencrypted over the wire, so you'll have to use [[tls]] to avoid man-in-the-middle attacks.
* The password is stored unencrypted in the configuration file.
