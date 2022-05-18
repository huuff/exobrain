---
tags: tip, how-to
---

# Replace a config resource you keep as non-YAML files
You might store your [[config-resources]] as the actual files that compose them and not as YAML, since that might be cumbersome. The following recipe allows easily replacing them:

```sh
kubectl create «config resource type» «config resource name» \
  --from-file=«filename» \
  --dry-run -o yaml | kubectl replace -f -
```
