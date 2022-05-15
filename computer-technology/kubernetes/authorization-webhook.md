# Authorization webhook
The same mechanism as for the [[authentication-webhook]]. You only specify the `--authorization-webhook-config-file` to the API server.

Every time Kubernetes needs authorization, it sends a manifest to the webhook containing:
* The requested API group
* The namespace
* The resource on which was acted
* The used verb such as `get`, `create` or `delete`
