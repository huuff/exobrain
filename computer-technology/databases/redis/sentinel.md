# Sentinel
Redis sentinel is a tool that monitors different Redis instances (a master and its replicas), to detect the failure of a master and initiate an election to choose a new master (a [[distributed-systems/failover]])

Some configuration options:
* `sentinel monitor slave2master «slave node» «quorum»`: specifies the replica to monitor and the required quorum to promote a node to a master
* `sentinel down-after-milliseconds slave2master «time»`: time after which a master is declared dead if it doesn't respond
* `sentinel failover-timeout slave2master «time»`: maximum time for a failover before it's considered failed
* `sentinel parallel-syncs slave2master «number of slaves to reconfigure»`: the number of slaves that are reconfigured simultaneously after a failover. This might have an impact if we're reading from slaves, as synchronizing them will make them unavailable.
