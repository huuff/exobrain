---
tags: caveat
---

# Clients that do not support getting multiple responses for one request
This is a real problem with older clients for processing newer optimization techniques such as [[103-early-hints]] with a `preload` [[http/link]] header or using [[http2/server-push]]. If a client is unable to process getting more than a single response for a request, there is a real risk that the whole transaction gets broken.
