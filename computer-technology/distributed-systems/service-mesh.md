# Service Mesh
Service meshes work to greatly simplify usual patterns and to solve common issues in microservices-oriented architectures. It does this by decoupling some functionality from the application and outsourcing it to the network. Because of this, Service meshes are commonly referred to as [[osi-networking-model|Layer 5 software]].

## vs Libraries
Before service meshes existed, the features service meshes usually offer were provided by application libraries. That is, libraries were used by all microservices across an enterprise to provide some of this functionality, such as circuit breaking, caching, etc. This, however has some drawbacks:

* In a polyglot environment, a library is required for each language
* Updating a library means an update across all deployed microservices

## Features
This is a non-comprehensive list of features they usually add:
* End-to-end encryption for microservice communication, transparent to the application through [[mtls]], with automated certificate rotation and issuance. Much more comfortable than issuing LetsEncrypt certificates for each microservice.
* Supposedly decoupling authentication and authorization from the application and performing it at the mesh? Might be very interesting but also dangerous, kind of against [[defense-in-depth]]
* Load balancing and routing with very flexible configuration, even through inspecting HTTP headers of each request. Also client-side load balancing.
* Observability and tracing of requests, the mesh injects a header to every incoming request, and each service must forward it. Then some meshes have very nice diagrams for watching the flow of requests (such as [[kiali]])
* Some advanced capabilities such as [[circuit-breaker]], automatic retries, [[deadline]]s...
