---
tags: standard
---

# Hit Metering (RFC 2227)
Content being served by intermediate caches might be useful for end-users, but might also make vendors and ad-providers angry if they can't track statistics of their served content. This might result in harmful techniques of [[cache-busting]].

This standard allows caches to provide hit information to the origin server. It includes a single header, `Meter` that can take many values to signify how a cache might report statistics to the origin server:

### Header values for the cache
* `will-report-and-limit`: The cache reports that it's able to report and follow usage limits that the origin server requires
* `wont-report`: The cache will obey usage limits, but wont report on usage.
* `wont-limit`: The cache will report usage, but not obey limits
* `count`: Main directive to report, specifies a `uses/reuses` pairs of integers to the sirver, such as `count=2/4`

### Header values for the server
* `max-uses`: Maximum times the server allows a cache to serve a resource
* `max-reuses`: Maximum number of times the resource might be reused
* `do-report`: The server requires usage report
* `dont-report`: The server does not want usage report
* `timeout`: A specification of the server to tell the cache how much time to wait before sending reports
* `wont-ask`: The server does not want any metering information
