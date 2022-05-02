# `iptables`
A way of configuring packet-handling rules that are dealt with the Kernel's [[netfilter]]. There are several types of table types but the two most important are:

* filter: for deciding whether to drop or forward packets
* nat: for translating addresses

The problem with `iptables` is that they can be fairly complex, and read sequentially. This quickly resulted in problems with large-scale [[kubernetes]] clusters. [[ipvs]] improves on this since the rules are read using a hash table.
