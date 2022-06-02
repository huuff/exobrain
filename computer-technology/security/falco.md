# Falco
Falco is a CNCF project to detect intrusions (an  [[ids]]) on [[cloud-native]] projects such as [[kubernetes]]. It comes with a long list of predefined rules but more can also be specified

Falco gets its information from two sources:
* Kubernetes audit logs
* Linux system calls

That information is then matched against the rules in the Falco engine to check for any suspicious behaviour.
