# `ImageStream`
An OpenShift resource that references one or more container images. It's similar to a Docker repository.

OpenShift maps an actual tagged image to an `ImageTagStream` resource. This extra layer of abstraction allows OpenShift to emit an event when an image is updated in the registry for an `ImageTagStream`, so builds or deployments can listen to these changes and trigger a new rebuild or deployment.
