# `sessionAffinity`
An attribute that can be set on [[service]]s. By default, Kubernetes services will route a request to a random pod, but using this setting you can ensure these requests are routed in a more intelligent way.

* Setting `sessionAffinity: ClientIP` will ensure that all requests from the same client go to the same [[pod]]
