---
tags: best-practice, pattern
---

# Versioned `ConfigMap`

## Problem
If you application uses a `ConfigMap` and passes its config as environment variables you might need to edit the `ConfigMap` to configure the application, but manually doing so (e.g. through `kubectl edit`) is not optimal:

* You won't be able to keep a history of previous configurations for rolling back
* The [[deployment]] update wont trigger for a change in a config map, so you'll have to manually delete the pods and recreate them.

## Solution
Version your config maps and append it to their names (e.g. `config-v1`, `config-v2`, etc.). Treat them as immutable and just create a new version instead of editing a previous one. This allows you to keep a history for ease of rolling back and also will trigger an update of the deployment.

## A [[helm]]-native solution
Include an annotation with a hash of the contents of the map, so it will change every time the map changes and trigger a redeployment.

```yaml
annotations:
  checksum: {{ include (print $.Template.BasePath "/config-map.yaml") . | sha256sum }}
```
