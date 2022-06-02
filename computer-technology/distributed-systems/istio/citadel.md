# Citadel
It's in charge of certificate and key management. Integrates with various platforms and abstracts away their identity mechanisms:

* For [[kubernetes]], it uses [[service-account]]s
* For [[aws]] uses [[aws/iam]]
* For [[gcp]] uses [[gcp/iam]]

In [[kubernetes]] the workflow is the following:
* Creates certificates and key pairs for each service account
* Watches the API for new service accounts to provision
* Stores the certificates and and keys as [[kubernetes/secret]]s
* Mount the secrets onto each [[pod]].
* Automatically rotates the certificates
