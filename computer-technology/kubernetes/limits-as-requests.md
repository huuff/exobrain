---
tags: pattern
---

# Set the resource limits as the same values as requests
I've seen this mentioned a couple times as a best practice. Actually is only best practice if you're relatively new (or your workloads are unknown) and are unsure what appropriate limits may be.

The main advantage is that these resources will be always available and that the resource consumption of the [[pod]] will be predictable

The main disadvantage is that this precludes any possibility for overcommitment, so techniques for very optimum resource utilization are out of the question.

### Example
```yaml
resources:
  limits:
    cpu: "500m"
    memory: 1Gi
  requests:
    cpu: "500m"
    memory: 1Gi
```
