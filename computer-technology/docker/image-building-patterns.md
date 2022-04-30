# Image building patterns
In order of level of sophistication, you can find three types of images:

* *All-in-One*: The image contains all of the build tools along with the runtime application. This can be very wasteful of space
* *Build Plus Runtime*: Using a [[multi-stage-build]], one stage builds the application, and another only contains the image runtime, optimizing more space.
* *Build Plus Multiple Runtimes*: Using a [[multi-stage-build]], one image builds the application and then several images can depend on it to create variations of it with different configurations such as dev, prod, staging, etc. By default in a multi-stage build, the final container is made of the latest stage, but you can specify which stage you want to use with the `--target` flag.
