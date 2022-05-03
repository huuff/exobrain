# Readiness gates
Even when a [[readiness-probe]] succeeds and the [[pod]] is itself ready, all the supported infrastructure might not be so:
* External [[load-balancer]]s might not be setup yet
* The [[network-policy]] might not have been realized

The `Pod ready++` proposal addresses this situation with the *readiness gates* feature. You can specify any special conditions you need under `readinessGates` in your pod's spec.
