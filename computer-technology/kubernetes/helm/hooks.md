# Hooks
Hooks allow taking some action as part of some event in the release/upgrade/uninstall process of helm. Hooks are regular [[template]]s and the action to run is provided as a container that will be run on the cluster. A resource (such as a [[pod]]), can be specified to be a hook by adding an [[annotation]]:

```yaml
annotations:
  "helm.sh/hook": «events»
```

Where `«hooks»` are the events on which the hook will be executed, such as `pre-install`. `post-install`, `pre-delete`, `pre-uprade`, etc. Several of these may be separated by commas

## Weight
Hooks can be ordered by specifying a weight: the lower the weight, the earlier it will run.

```yaml
annotations:
  "helm.sh/hook-weight": "1"
```

(Note that the weight must be a numeric string)

## Deletion policy
There can be a policy for deleting the created resource. These are specified with the `helm.sh/hook-delete-policy` annotation. Acceptable values are:

* `before-hook-creation`: Delete previous resources before a new hook is launches
* `hook-succeeded`
* `hook-failed`
