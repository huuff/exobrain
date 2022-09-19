---
tags: sucks
---

# What sucks about HTTP/1 (HTTP/1.0 and HTTP/1.1)
* [[head-of-line-blocking]]: even with [[http/pipelining]], a slow message blocks the rest of the messages in line.
* Inefficient use of [[tcp]]: connections were subjected to TCP handshakes, TLS handshakes and TCP's [[slow-start]]. To deal with [[head-of-line-blocking]] browsers used to do several parallel connections which meant several delays of these types, often making downloading a small resource over a concurrent connection much slower.
* Fat message headers: HTTP being a stateless protocol means that the client must resend a lot of information on each request, specifically headers. Big headers such as [[cookie]]s and [[csp]] were the biggest offender. HTTP/1 had support for body compression through the `Content-Encoding` [[http/header]], but no such mechanism for Headers. For smaller assets, the headers were the fattest part of the content.
