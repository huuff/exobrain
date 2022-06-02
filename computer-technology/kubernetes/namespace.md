# `Namespace`
A resource kind that defined a slice of the cluster. This is especially useful to keep your resources organized and to tailor [[rbac]] rules for users according to namespaces.

You can create a namespace through `kubectl create namespace «name»`, and then every `kubectl` commands needs a namespace specified with the `-n` flag such as `kubectl -n «namespace» get pods`
