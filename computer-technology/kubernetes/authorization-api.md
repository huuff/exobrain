# Authorization API
This is an API for performing checks on available permissions. It includes:

* `SelfSubjectAccessReview`: For the current user
* `SubjectAccessReview`: For any user
* `LocalSubjectAccessReview`: Like `SubjectAccessReview` but scoped to [[namespace]]s
* `SelfSubjectRulesReview`: List of actions a user can perform in a given namespace.

You can query these APIs just by creating resources, and actually, this is what [[can-i]] uses behind the scenes.

### Example
Request
```yaml
apiVersion: authorization.k8s.io/v1beta1
kind: SelfSubjectAccessReview
spec:
  resourceAttributes:
    verb: get
    resource: pods
    namespace: demo-app
```

Response
```yaml
apiVersion: authorization.k8s.io/v1beta1
kind: SelfSubjectAccessReview
metadata:
  creatingTimestamp: null
spec:
  resourceAttributes:
    namespace: kube-system
    resource: pods
    verb: get
  status:
    allowed: true
```
