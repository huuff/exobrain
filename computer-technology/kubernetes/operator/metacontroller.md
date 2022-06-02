# Metacontroller
A tool for developing [[operator]]s, it's like the [[kube-controller-manager]], but instead of running the built-in kubernetes controllers, it delegates functionality to other controllers defined through [[crd]]s using the Operator Framework.

## Using it
We just have to provide a function that only contains the business logic specific to our controller. The metacontroller interacts with the Kubernetes API for us:

* It runs a reconciliation loop while watching the API for events
* Calls your function with a webhook with a well-defined payload describing the events on which you should act
* You return the definitions of objects that should be created, updated or deleted in the API

