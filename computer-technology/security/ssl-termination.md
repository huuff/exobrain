---
tags: definition
---

# SSL Termination
When the [[tls]] encrypted connection to a service is provided by a [[reverse-proxy]] in front of it.

## Pros
* The service is decoupled from the management of TLS. You can make any changes to TLS configuration without touching the service itself, which will make it much easier when managing lots of services with different toolings and frameworks

## Caveats
* It might be easy to forget that probably you also want to encrypt the connection to the actual service. Otherwise, an attacker that can get into the private network can capture the unencrypted traffic. There are two solutions to this: [[ssl-re-encryption]] and [[ssl-passthrough]]
