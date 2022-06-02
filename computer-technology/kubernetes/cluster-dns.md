# Cluster DNS
A normal kubernetes installation includes a DNS [[service]] that provides service discovery for the rest of [[pod]]s. Other services will be available on the following address:

`«service».«namespace».svc.cluster.local`

As far as I know, the `cluster.local` suffix can be omitted. Also the `svc`. If the service is accessed from the same [[namespace]], then the `«namespace»` might also me omitted.
