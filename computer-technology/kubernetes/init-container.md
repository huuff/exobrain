# Init container
Init containers must run to completion before the main containers in their [[pod]] are started. This provides for a nice way to provide any initialization the pod needs, and also it's much more efficient than just waiting until the pod's [[readiness-probe]] signals its readiness.
