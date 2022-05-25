# Admission webhook
These allow performing arbitrary logic by calling an API on each resource that is to be admitted by the API. There are two types:

* `MutatingAdmissionWebhook` can change the resource before it gets to the API. For example [[service-mesh]] software uses it to inject proxy sidecars into every container automatically.
* `ValidatingAdmissionWebhook` a webhook that can accept or reject a resource. This is useful to implement security policies.

Note that these run sequentially and that `MutatingAdmissionWebhook`s always run before `ValidatingAdmissionWebhook`s.
