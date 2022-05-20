# Service discovery by environment variables
When a [[service]] is created, a pair of environment variables are made available to pods to allow discovering it:

* `«service»_SERVICE_HOST` contains the IP of the service
* `«service»_SERVICE_PORT` contains the port of the service

This, however, has several downsides to just using the provided DNS:
* Environment variables only change when the container is restarted, so changes to the IP won't be picked up dynamically
* Will couple you to these environment variables
* An attacker can easily use this to find the available services from a compromised container.
