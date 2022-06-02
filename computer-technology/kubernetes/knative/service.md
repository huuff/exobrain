# Service
A Knative service combines a Kubernetes [[service]] and [[deployment]] into a single object. It makes sense since except for [[headless-service]]s, there's always a deployment behind a service.

The Knative service manages the whole lifecycle of its workload. It's responsible for creating the [[route]], [[configuration]] and [[revision]] whenever it's updated, so the user only has to deal with the service object.
