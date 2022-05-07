# Maximum Transmission Unit (MTU)
Determines how big packets can be. MTU size must be carfully balanced to get optimal usage:

* The bigger it is, the greater the ratio of content-to-headers is, which means that more useful information is sent on every packet.
* However, the bigger the packet is, the bigger the minimum latency is, since more information must be transmitted. Also in the case of a network error, more information has to be transmitted.

In ethernet networks, the MTU is 1500 bytes
