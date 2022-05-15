# `Endpoint`
An object that comes with the [[service]] object. It abstracts away the specific IP of each [[pod]] that serves the service. It just contains all IPs of each pod. The service manages it dynamically attaching new IPs for created pods or removing pods that fail the [[readiness-probe]]
