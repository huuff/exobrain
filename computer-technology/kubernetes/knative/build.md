# Knative Build
Compiles source code to container images directly inside a Kubernetes cluster. AFAIK, this is superseded by [[tekton]].

The Build [[crd]] defines the concrete steps that the build [[operator]] needs to perform for a build. The main ingredients are:

* `source`: Points to the location of the application source code
* `steps`: Required for turning the source code into a runnable container image. Each step refers to a builder image to perform its job, and can access a `/workspace` volume shared among all steps.

### Example
```yaml
apiVersion: build.knative.dev/v1alpha1
kind: Build
metadata:
  name: random-generator-build-jib
spec:
  source:
    git:
      url: https://github.com/k8spatterns/random-generator.git
      revision: master
  steps:
    - name: build-and-push
      image: gcr.io/cloud-builders/mvn
      args:
        - compile
        - com.google.cloud.tools:jib-magen-plugin:build
        - Djib.to.image=registry/k8spatterns/random-generator
      workingDir: /workspace
```

## `BuildTemplate`
The `BuildTemplate` is a resource kind that allows creating a template for a `Build` resource, which then uses it and replaces any arguments, following the ugly Kubernetes tradition of doing logic using templates. A template is actually the same as a `Build` but with placeholders.

A template can then be used under the `template` field of a `Build` where you can fill the replacement arguments.
