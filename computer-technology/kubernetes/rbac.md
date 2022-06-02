# RBAC
RBAC is kubernetes is mainly composed through two types of objects: roles and bindings. A role is an abstract set of capabilities. A binding is an actual association of a role to an user/group/[[service-account]]. There are two types:

* `Role` and `RoleBinding` are [[namespace|namespaced]] and only apply to the namespace in which they are defined.
* `ClusterRole` and `ClusterRoleBinding` apply to the whole cluster.
