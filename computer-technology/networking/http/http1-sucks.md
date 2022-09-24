---
tags: sucks
---

# What sucks about HTTP/1 (HTTP/1.0 and HTTP/1.1)
* [[head-of-line-blocking]]: even with [[http/pipelining]], a slow message blocks the rest of the messages in line.
* Inefficient use of [[tcp]]: connections were subjected to TCP handshakes, TLS handshakes and TCP's [[slow-start]]. To deal with [[head-of-line-blocking]] browsers used to do several parallel connections which meant several delays of these types, often making downloading a small resource over a concurrent connection much slower.
* Fat message headers: HTTP being a stateless protocol means that the client must resend a lot of information on each request, specifically headers. Big headers such as [[cookie]]s and [[csp]] were the biggest offender. HTTP/1 had support for body compression through the `Content-Encoding` [[http/header]], but no such mechanism for Headers. For smaller assets, the headers were the fattest part of the content.

### Traditional head-of-line blocking solution used by browsers
The traditional solution for HTTP/1 was to establish several concurrent connections to the same domain, so even when one gets blocked, the rest can still progress.

This means that several connections must be started, subjected to the delays of TLS and TCP handshakes, and further slowed by the effect of TCP's [[slow-start]] algorithm. This means that for a lot of cases, establishing a connection to download a single resource might take much longer than just waiting for another connection to be able to retrieve it.
