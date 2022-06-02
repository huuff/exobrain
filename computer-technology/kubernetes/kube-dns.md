# `kube-dns`
It was the old (now deprecated) way of providing DNS services to the cluster. It was composed of three containers:

* `kube-dns`: Used SkyDNS to provide DNS resolution services
* `dnsmasq`: To cache DNS responses
* `sidecar`: To provide health and metrics for `kube-dns`

It's now superseded by [[coredns]] because of security vulnerabilities in `dnsmasq` and performance issues in SkyDNS
