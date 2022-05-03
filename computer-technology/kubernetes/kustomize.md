# `kustomize`
An utility to configure your manifests without heavy templating (like [[helm]] does). It take a valid manifest (base) and customizes it by applying patches (overlays). All are valid YAMLs and there are no templates.

The process is controled by a `kustomization.yaml` file. Any directory that contains one is considered a root.

### Example `kustmization.yaml`
```yaml
apiVersion: kustomize.config.k8s.io/v1
kind: Kustomization
namespace: staging
commonLabels:
  environment: stating
bases:
  - ../base
patchesStrategicMerge:
  - hue-learn-patch.yaml

resources:
  - namespace.yaml
```

You can then run `kubectl kustomize` on your root directory to get the results of applying the *kustomizations*
