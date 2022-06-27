# Multitenancy models
The *Kubernetes Multitenancy Working Group* defines two categories of multitenancy:

* Soft multitenancy: Tenants are trusted and allows greater flexibility and configurability. For example, in an in-company cluster, microservice teams are considered trusted.
* Hard multitenancy: Tenants are considered hostile and more stringent security measures are needed. For example, in a cluster that allows executing untrusted code to public users.
