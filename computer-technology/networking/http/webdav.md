---
tags: standard
---

# WebDAV (RFC 2518)
*Web Distributed Authoring and Versioning*

A set of extensions to the HTTP protocol to enable collaborative creation and editing of documents and collections thereof. It uses XML extensively in the body of the requests and responses to specify further attributes/logic.

### Method extensions of WebDAV
* `PROPFIND`: Retrieves the properties of a resource
* `PROPPATCH`: Issues a modification of the properties of one or more resources
* `MKCOL`: Creates a collection of resources
* `COPY`: Copies resources between destinations
* `MOVE`: Moves resources between destinations
* `LOCK`/`UNLOCK`: Allow [[webdav/locking]] on resources.
