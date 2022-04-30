# Secrets
These are like [[config-resource]]s, but they have some mechanisms to prevent unsafe access. A service's ID is used to determine whether it can access or not a specific secret. They are by default encrypted both in-transit and at-rest, which is already a much better default than Kubernetes' [[kubernetes/secret]].
