---
tags: pattern
---

# Phantom token
A pattern used for passing around an user-provided token in an architecture with many different microservices.

## The problem
An user might make an authorized request to a service with their token, however, that service might need to make requests to any other number of services to function. One basic solution is to simply forward the user-provided token, but this has several drawbacks:

* Any compromised microservice can use this token to make a malicious request to any other service as the user.
* You might need [[token-introspection]] to check the token. This will have to be done at least one for each microservice, incurring additional overhead on the network. Even if you use stateless tokens like [[jwt]], you will need token introspection to check whether they are revoked.

## The solution
The phantom token pattern means exchanging an user-provided, long-lived token at the [[api-gateway]] in front of the service for a less-privileged, shorter-lived one, signed by an authority that all intended target microservices trust. This new token can be really short-lived, in the range of 30-60 seconds, since it only has to live up to fulfillment of the original request.
