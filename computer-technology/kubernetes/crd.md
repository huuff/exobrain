# `CustomResourceDefinition`
This is an extension point for the Kubernetes API. You can specify a new `Kind` of resource and manage it through the same mechanisms as you do for any predefined resource kinds. It even allows you to add an [[openapi]] specificaton to validate resources.

## `.spec.names`
A field that allows for defining names to call the resource by, this includes:

* `plural`
* `singular`
* `kind` (the one you use for specifying a resource, under `Kind`)
* `shortNames` a list of short names, for example for quick `kubectl` commands.

## Subresources
* `scale`: With this property a CRD can specify how it manages its replica count. You can provide the following properties through JSON paths:
  * The property that holds the desired number of replicas
  * The property that holds the actual number of replicas
  * A label selector that can be used to find copies of the resource. This is usually optional, but required if you want to use your custom resource with the [[hpa]]
* `status`: When this subresource is provided, the API provides an endpoint to check and change the status of a resources. This endpoint can be secured individually and used to manage the resource outside of a [[controller]]
