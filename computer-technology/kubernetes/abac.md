# Attribute Based Access Control (ABAC)
An authorization mode where requests are allowed by validating them against attributes of the request. It can be enabled with the `--authorization-mode=ABAC` flag to the API server, and the policies can be passed through the `--policy-file=«path»` argument, where each line must be a JSON specification of a policy.

Nowadays, it's been superseded by [[rbac]] as the preferred authorization method. It's recommended against specially because it's controlled by an external file that must be uploaded to every single master node, and also, any updates to the policy will require restarting all nodes, causing an outage.

### Example

```json
{
  "apiVersion": "abac.authorization.kubernetes.io/v1beta1",
  "kind": "Policy",
  "spec": {
    "user": "kubelet",
    "namespace": "",
    "resource": "pods",
    "readonly": true
  }
}
```
