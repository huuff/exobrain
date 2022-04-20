# You can't ping a service IP
It's important to remember:

> A service IP is not reachable by ping since it is a virtual IP just used as a routing handle for the iptables rules setup by kube-proxy, therefore a TCP connection works, but ICMP not. You can ping a pod IP though, since it is assigned from the overlay network.
