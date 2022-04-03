# Caveats
These are some caveats I've gotten from Nigel Poulton's Docker Deep Dive book, which I'm not sure they are still happening but it's nice to know about them:

* The default scheduling algorithm is `spread`, which evenly distrbutes replica across nodes without any consideration for resource usage
* The `docker service rm` command removes all replicas of any service from all nodes in the cluster without asking for any confirmation
