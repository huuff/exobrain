# `kubectl auth reconcile -f`
Allows specifying a file or set of files with the [[rbac]] rules to set in the cluster. It acts like `kubectl apply -f` but it's more powerful:
* A `roleRef` is immutable, so we just can't change a role for a binding
* Creating a new binding for another role is just another binding and the old one is kept
* `auth reconcile` will ensure that only the declaratively specified roles and bindins are applied to the cluster, so it'll delete and recreate roles and bindings as needed
