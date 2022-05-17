---
tags: index
---

# Config resources
Kubernetes has two types of config resources:
* [[config-map]]
* [[secret]]

## Using config resources
There are three ways:
* Environment variables: The value extracted from the config resource will be available to the process running inside the container as an environment variable
* Command-line argument: Actually the same as an environment variable, as you'll need to first add the environment variable, and then interpolate it as an argument using `$(VARIABLE)`
* As a mount: Usually the best. For [[secret]]s, you have to consider that [[secrets-as-environment-variables|passing secrets in environment variables is an antipattern]]. Also, mounts are the only way that the container can pick up changes to the config resources without needing recreation.
