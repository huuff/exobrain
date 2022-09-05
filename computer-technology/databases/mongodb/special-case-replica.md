---
tags: pattern
---

# Special-case replica
(Not a very good name, I chose it)

You can use a secondary/replica to do some special types of queries you don't usually do on primaries, this would allow you to alleviate some read load on your primaries. This also means you can set special indexes on these secondaries for your specific requirements, and also that you must ensure they will not be elected as primaries (e.g. making them hidden). Some use-cases are:

* For analytics and reporting, you'll likely have no problem with reading data that's stale, and your queries might be very different from the ones of normal operation.
* Having a secondary with text indexes, for full-text search. This allows us to spare our primaries from the overhead of full-text indexes and full-text searches.
