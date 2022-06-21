# Bound Service Account Token
Service account tokens that implement the [[jwt]] specification, and thus contain useful information like expiry date and [[jwt/audience]]. These are rotated, created by the API server and requested by the [[kubelet]]. The `NodeAuthorizer` [[admission-controller]] ensures the `kubelet` can only request tokens for the [[pod]]s it actually runs.

This really limits the [[security/blast-radius]] of a stolen token, and the `NodeAuthorizer` prevents a compromised node from stealing tokens from pods it isn't running.

==TODO: Example, how to use it?==
