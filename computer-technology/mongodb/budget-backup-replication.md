---
tags: how-to, tip
---

# How to get a budget backup replication server
Sometimes you just want to have a backup replication, but you remember you have to follow [[always-odd-nodes]] so 2 nodes is out of the question, but 3 is too expensive. Consider having a primary server and a replica with the following configuration:

* `priority: 0`: This node can't become a primary and thus you satisfy [[always-odd-nodes]]
* `hidden: true`: This node is weaker and you never want it to receive reads (see [[hidden-replica-set-member]])
* `buildIndexes: false`: This server is weaker and you don't want to read from it, so not having indexes reduces its load. If you ever need to restore from it, you'll have to rebuild indexes.
* `votes: 0`: Don't give it any votes so the primary can stay primary.
