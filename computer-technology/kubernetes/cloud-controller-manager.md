# Cloud Controller Manager
It defines the interface between Kubernetes and the cloud provider. This allows seamlessly using cloud provider resources from the cluster in an agnostic way. Some such resources might be:
* Adding or removing nodes through the [[cluster-autoscaler]]
* Provisioning [[load-balancer]]s
