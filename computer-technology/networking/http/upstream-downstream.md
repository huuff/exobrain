---
tags: definition
---

# Upstream/Downstream
In networking (HTTP?), a designation to define the sender of a request and the receiver of it. As stated by RFC 9110

> All messages flow from upstream to downstream

Therefore:
* In an HTTP request, the user agent is upstream and the [[web-origin]] is the downstream.
* In the HTTP response to the request, the [[web-origin]] is the upstream and the user agent is the downstream.

This contrasts to the [[inbound-outbound]] definitions in that these are static through the request/response and through multiple proxies along a chain of requests/responses.
