---
tags: index
---

# Config resources
Kubernetes has two types of config resources:
* [[config-map]]
* [[secret]]

## Creating config resources
The simplest way is through the `kubectl create «configmap/secret» «name»`. There are various ways you can use that command:

* `--from-file=«filename»`: Creates the resource with the data containing only the file name as a key and its contents as value
* `--from-file=«key»=«filename»`: Creates the resource with the data as `«key»` and the value as the contents of `«filename»`
* `--from-file=«directory»`: Creates a resource with each filename in `«directory»` as a key and its contents as a value.
* `--from-literal=«key»=«value»`: Specify keys and values directly, can be used multiple times.

## Using config resources
There are three ways:
* Environment variables: The value extracted from the config resource will be available to the process running inside the container as an environment variable
* Command-line argument: Actually the same as an environment variable, as you'll need to first add the environment variable, and then interpolate it as an argument using `$(VARIABLE)`
* As a mount: Usually the best. For [[secret]]s, you have to consider that [[secrets-as-environment-variables|passing secrets in environment variables is an antipattern]]. Also, mounts are the only way that the container can pick up changes to the config resources without needing recreation.
