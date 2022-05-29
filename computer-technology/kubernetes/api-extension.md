# API extension
When Kubernetes-managed [[crd]]s are not enough for extensibility, Kubernetes even adds the possibility of extending the API with your own aggregation layer. You can add an `APIService` to create a new endpoint on the API, and a URL can be provided

### Example
This adds an API endpoint backed by the `custom-api-server` [[service]]

```yaml
apiVersion: apiregistration.k8s.io/v1beta1
kind: APIService
metadata:
  name: v1alpha1.sample-api.k8spatterns.io
spec:
  group: "sample-api.k8spatterns.io"
  service: 
    name: custom-api-server
  version: v1alpha1
```
