# Source-to-image (S2I)
An [[openshift-build]] specific builder that takes the source code of an application and builds it directly to an image using a language-specific builder. 

An S2I builder image is a standar container image that contains S2I scripts, there are two mandatory commands:
* `assemble`: It's the script that gets called when the build starts. It takes the source code, compiles it, and copies the artifacts to the destination
* `run`: Used as an [[docker/build-instructions|entrypoint]] to the image, the `run` script provides the runtime environment for the application and runs it.


## Drawbacks
It allows incremental builds by allowing `assemble` artifacts to be used by another S2I script, however, this requires copying a lot of artifacts from one build to another and the performance benefits are usually not that significative.

Also, unfortunately a S2I built image contains the whole build environment, which isn't especially good for image size or performance. To improve on this, OpenShift also offers [[ [[chained-builds]]
