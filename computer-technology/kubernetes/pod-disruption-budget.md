# `PodDisruptionBudget`
A kind of resource that tries to limit the number of [[pod]]s unavailable at any point in time. It ensures that a percentage of pods are not evicted voluntarily, that is, through scaling down or draining a node (`kubectl drain`)

### Example
```yaml
apiVersion: policy/v1
kind: PodDisruptionBudget
metadata:
  name: random-generator-pdb
spec:
  selector:
    matchLabels:
      app: random-generator
  minAvailable: 2 # at least two pods must be available at all times, a percentage such as 80% can be specified too
```
