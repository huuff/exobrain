---
tags: definition
---

# Session
Also called "visit" or "users". A session is a collection of *requests* where a user enters your site, spends some time browsing and then exits. It goes like this:

* When a user enters your site initially, a session id is attached to them.
* Every additional request (page view, event) is attached to the same session id.
* When the user finally exits, all these actions are stitched together into a cohesive session.
