# Kubernetes has no built-in user authentication
There's only [[service-account]]s for authentication, but that's intended for machines to use, not humans. However, Kubernetes integrates well into other services such as

* Cloud provider's IAM
* LDAP
* Active Directory

Otherwise, certificates can be used to identify an user.
