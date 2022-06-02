---
tags: tip
---

# You can act on several resources using `kubectl` at once
Just separate them by commas, such as

```
kubectl delete svc,deploy -l app=myapp
```
