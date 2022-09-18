---
tags: tip
---

# What to log in HTTP
* HTTP method
* Resource URL
* HTTP version
* Status code of the response
* Size of the requests and responses
* Timestamp
* [http/referer] and `User-Agent` headers

Rationales:
* The method and the URL tell us what the client was trying to do
* The version strings might allow us to debug weird client/server interactions
* The status code is required for us to know how the server reacted to the request
* The sizes and timestamps might be very useful for accounting and tracing requests/responses.
* `Referer` might be useful for tracking clients
* `User-Agent` helps us debug bad interactions with specific agents.
