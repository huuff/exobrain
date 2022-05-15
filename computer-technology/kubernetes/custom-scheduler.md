# Custom scheduler
Kubernetes is so extensible, you can even use a scheduler different from [[kube-scheduler]], and even only for some specific pods. This is done simply by populating the `spec.schedulerName` field.
