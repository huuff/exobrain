# `kube-proxy`
Its job is to route network traffic to the load-balanced [[service]]s in the cluster.

## Modes
### User space proxy mode
The `kube-proxy` edits the [[iptables]] rules to allow routing traffic to pods. In this mode, the `kube-proxy` uses a [[round-robin]] algorithm for routing by default.

There are several downsides to this mode:
* `iptables` rules must be evaluated sequentially, this adds hugely for large clusters where the performance gets really impacted
* Since traffic is forwarded into the user-space, it means that packets must be marshalled to the user-space and then back to the kernel space on every trip through the proxy

### [[iptables]] proxy mode
It offloads the work to [[netfilter]] and `kube-proxy` becomes responsible only for updating the `iptables` rules.

This solves the problem of marshalling packets to the user space and back but introduces error handling problems: if the first pod that is tried to reach the service is unavailable, the connection will fail, while in user space mode, `kube-proxy` will know to try a different one.

### [[ipvs]] proxy mode
It's a perfect match for Kubernetes since [[ipvs]] is designed for load balancing. This solves the issue with [[iptables]] rules being evaluated sequentially.

