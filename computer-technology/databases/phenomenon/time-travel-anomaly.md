---
tags: definition, index
---

# Time-travel anomaly
These are anomalies that appear under the [[serializable]] isolation level. Even though the execution of transactions appear to be in *some* serial order, this order might not exactly correspond to the one in which they were made, since the delay of the replication across several nodes in a [[distributed-systems|distributed database system]] can affect the final ordering. These are:
* [[immortal-write]]
* [[stale-read]]
* [[causal-reverse]]

[Here's an excelent introduction to this topic](https://dbmsmusings.blogspot.com/2019/06/correctness-anomalies-under.html)
