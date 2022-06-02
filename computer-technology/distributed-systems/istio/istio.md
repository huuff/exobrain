# Istio
Istio is a [[service-mesh]] by Google that extends Kubernetes. It's the default ingress/API gateway for [[knative]]. It works through injecting [[sidecar-container]]s onto every pod.

## Components
* [[envoy]]: Provides various features such as traffic proxying, sophisticated load balancing, mTLS termination, service health, circuit breaking, etc.
* [[pilot]]
* [[mixer]]
* [[citadel]]
