---
tags: definition
---

# Unique visitors
Closely related to [[session]] (I think it's new users in Google Analytics 4?), unique visitors represents the amount of sessions where the user is new. Sessions are usually finished after some time (30 minutes maybe?), when a user starts browsing the same site again at a later time, this is counted as a new session. However, this is all from the same *unique visitor*. It's tracked like this:

* When the user first enters your site, a unique [[cookie]] is attached to their browser that uniquely identifies them.
* When the user leaves your site, this cookie is identified again by the analytics tool, and counted as the same user.

Unique visitors is always approximated, since some nuances can affect this statistic:

* Visitors that return from different devices and we're not correlating their sessions
* Visitors that have tracking disabled in their browsers
