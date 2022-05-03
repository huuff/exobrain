# Readiness probe
A readiness probe is a command that, when exiting with a 0 status code, ensures that the pod on which is executed is ready to accept connections. When a readiness probe fails, the pod is removed from the [[endpoint]]s of any [[service]] that uses it, so as to not overwhelm the failing pod with requests it can't process.
