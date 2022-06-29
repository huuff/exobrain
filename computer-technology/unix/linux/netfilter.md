# `netfilter`
`netfilter` is a kernel module that allows to define rules about what to do with a packet depending on its [[osi-networking-model|layer 3 information]], such as performing load-balancing, NAT translation or firewalling. There are two main ways of operating it:

* [[iptables]]
* [[ipvs]]

## Hooks
* `NF_IP_PRE_ROUTING`: Triggers when a packet arrives from an external system. It corresponds to [[iptables]]' `PREROUTING` chain rule.
* `NF_IP_LOCAL_IN`: Triggers when a packet's destination IP address matches the machine. It corresponds to [[iptables]]' `INPUT` chain rule
* `NF_IP_FORWARD`: Triggers for packets where neither source nor destination matches the machine IP, so, packets this machine is routing on behalf of others. It corresponds to [[iptables]]' `NAT` chain rule
* `NF_IP_LOCAL_OUT`: Triggers when a packet originating from the machine is leaving it. It corresponds to [[iptables]]' `OUTPUT` rule.
* `NF_IP_POST_ROUTING`: Triggers when any packet (regardless of origin) is leaving the machine. It corresponds to [[iptables]]' `POSTROUTING` rule.
