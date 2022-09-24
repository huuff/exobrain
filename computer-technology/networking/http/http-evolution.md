---
tags: history
---

# HTTP Evolution

### HTTP/0.9
It was the first release. It was really barebones, only containing `GET` methods to specific resources that contained no media, only HTML. There were no response status codes and any error had to be communicated in the body of the response.

The spec was about one page long.

### HTTP/1.0
Some added feaures:

* [[http/headers]]
* Response codes
* Redirects
* Errors
* [[conditional-request|Conditional requests]]
* Content encoding
* More request methods

This one pushed the specification to 60 pages, but it still contained some ciritical flaws such as the lack of ability to do [[virtual-hosting]] and to keep a connection open.

![[http1.1]]

### HTTP-NG
It was a project to improve on HTTP/1.1. ==I've lost my highlights on this one...==

### SPDY
An initiative by google to replace HTTP. It included many of the features that made it into HTTP/2.

### [[http-2]]
It mainly included features that increased performance such as:

* Adressing the [[head-of-line-blocking]] issues of HTTP/1.1
* Multiplexing of [[tcp]] connections so multiple connections to the origin server were not necessary
* Header compression
