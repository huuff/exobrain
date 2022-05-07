# Tiller
Actually, Tiller is deprecated and it no longer exists, since [[helm-3-vs-helm-2|Helm 3 doesn't use a client-server architecture]], and only a client is needed.

But anyway, Tiller was the server component for Helm, it ran on the nodes and was responsible for:
* Listening for incoming requests from the Helm client
* Combining a chart and configuration to build a release
* Installing charts
* Tracking the [[release]]
* Upgrading and uninstalling charts by interacting with Kubernetes.
