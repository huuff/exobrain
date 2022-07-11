---
tags: caveat
---

# Replication lag spikes in an underloaded system
If you check logs of an underloaded system (one that processes very few writes), you might find spikes in [[replication-lag]]. This doesn't actually mean that replication is suddenly slow, but that actually a lot of time happens between every write.

Since the lag is defined as the difference between the last write on the leader and on the follower, this means that when these take minutes apart, the lag will equivalently be minutes long.
