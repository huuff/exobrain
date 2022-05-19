# `CustomResourceDefinition`
This is an extension point for the Kubernetes API. You can specify a new `Kind` of resource and manage it through the same mechanisms as you do for any predefined resource kinds. It even allows you to add an [[openapi]] specificaton to validate resources.

## `.spec.names`
A field that allows for defining names to call the resource by, this includes:

* `plural`
* `singular`
* `kind` (the one you use for specifying a resource, under `Kind`)
* `shortNames` a list of short names, for example for quick `kubectl` commands.
