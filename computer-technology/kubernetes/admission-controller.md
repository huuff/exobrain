# Admission controller
Admission controllers seem like a vaguely specified concept with too many responsibilities. They are the last step in an authentication-authorization process, however they do two very different things:

* In *validating mode*: They validate the request and, if it's acceptable, let it pass
* In *mutating mode*: They modify the request

Some examples:
* `DefaultStorageClass`: Adds a default [[storage-class]] to requests for the creation of a `PersistentVolumeClaim` that don't specify a storage class
* `EventRateLimit`: Limits flooding of the API server
* `LimitRanger`: Rejects requests that violate resource limits
* `NamespaceAutoProvision`: Creates the [[namespace]] in the request if it doesn't exist already
* `NamespaceLifecycle`: Rejects object creation requests in namespaces that are in the process of being terminated or don't exits

You can specify which admission controllers to use when running the [[apiserver]] with the `--enable-admission-plugins` flag. e.g.:

```
  --enable-admission-plugins=NamespaceLifecycle,NodeRestriction,LimitRanger,ServiceAccount,DefaultStorageClass,ResourceQuota
```

This concept vaguely reminds me of [[aspect-oriented-programming]]. Where there's also some mutating or side-effect producing aspects and also some validating aspects. It also highly decouples the code from the aspect but also can feel like dark magic.
