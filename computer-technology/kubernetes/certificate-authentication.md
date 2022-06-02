# x509 Certificate Authentication
This is the main way of user authentication used in Kubernetes. The API server has a list of valid certificate authorities (CA), and certificates signed by them are authenticated to the cluster.

The `common name` (CN) property of the certificate is often used as the username for the request, and the `organization` (O), as the group.
