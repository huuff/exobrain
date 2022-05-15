# Ingress
A configuration object that provides:
* Provide an externally visible URL to the service
* Load balance traffic
* Terminate SSL
* Provide name-based virtual hosting

It's important to have into account that, by default, there is no [[controller]] running in the cluster that manages `Ingress` objects, so it means that, without installing one, any `Ingress` object you create will be useless. You can chose among any ingress controllers such as `ingress-nginx` or `haproxy`

If you specify multiple ingress resources, all of them are merged into a single one.
