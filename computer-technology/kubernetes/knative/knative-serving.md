# Knative serving
Its scope is running services and routing traffic to them. It defines several [[crd]]s to accomplish this:

* A [[knative/service]] manages [[knative/route]] and a [[knative/configuration]]
* A configuration can have several [[knative/revision]]
* A [[knative/route]] routes traffic to a particular [[knative/revision]]
