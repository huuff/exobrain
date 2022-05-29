# Pod priority
It's used to:

* Schedule pods with the highest priority first
* In case of resource starvation, kill the pods with the highest priority last

To use it, you first have to create a `PriorityClass` and then assign it to a pod through the `priorityClassName` property.

### Example
```yaml
apiVersion: scheduling.k8s.io/v1
kind: PriorityClass
metadata:
  name: high-priority
value: 1000
globalDefault: false
description: This is a very high priority Pod class
---
apiVersion: v1
kind: Pod
metadata:
  name: random-generator
  labels:
    env: random-generator
spec:
  containers:
    - image: k8spatterns/random-generator:1.0
      name: random-generator
  priorityClassName: high-priority
```
