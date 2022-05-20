# `kube-controller-manager`
It manages the reconciliaton control loop for the cluster. It monitors the cluster for changes through the API and tries to recondcile the actual and desired status. It comes with many built-in [[controller]]s such as:

* [[replica-set]] controller, that ensures the desired number of replicas exist.
