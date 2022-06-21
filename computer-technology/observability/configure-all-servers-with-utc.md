---
tags: best-practice
---

# Configure all servers to use UTC time
You might want to use time in your specific time zone to make it easier to understand logs but refrain from it! In the case your application gets distributed worldwide, you'll have servers running on different time zones and:
* There might be other people diving into the logs in time zones different to yours
* You might be subject to daylight saving
* You might forget setting a server to the correct time zone

All of these will make understanding logs much harder, and even might cause finding log events from the future, or with intermingled times from different servers.

It's best to settle on UTC as an standard and get used to the difference from your developer machine.
