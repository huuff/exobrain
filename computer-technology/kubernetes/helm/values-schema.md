---
tags: how-to
---

# Enforcing a schema on [[values]]
Use a `values.schema.json` file alongside the `values.yaml` file. This file contains a [[json-schema]] specification for the `values.yaml` file.

### Example
Consider the following `values.yaml`:

```yaml
image:
  repository: ghcr.io/masterminds/learning-helm/anvil-app
  pullPolicy: IfNotPresent
  tag: ""
```

The schema would be

```json
{
  "$schema": "http://json-schema.org/schema#",
  "type": "object",
  "properties": {
    "type": "object",
    "properties": {
      "pullPolicy": {
        "type": "string",
        "enum": [ "Always", "IfNotPresent" ],
      },
      "repository": {
        "type": "string"
      },
      "tag": {
        "type": "string"
      }
    }
  }
}
```
