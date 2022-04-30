# Build instructions
There are only a few instructions available to a Docker build file. These must be the first word in a line, and are usually specified in all-caps for clarity, though it's not mandatory.

* `FROM`: Must be the first instruction in the Dockerfile, it specifies the base image on which to build this image.
* `RUN`: Run a build-command. This creates a new layer with the contents of the result of the execution of the command.
* `CMD`: Specifies a command to run on the execution of the container. This can then be overriden when calling the container and specifying a command. There should be only one `CMD` and be at the bottom.
* `ENTRYPOINT`: Like the `CMD` command, specifies a command to be run on execution. Contrary to the `CMD` command, it can't be overriden and will always be run, any extra arguments the user passes to the `docker run` command will be passed as arguments to the `ENTRYPOINT` command.
* `WORKDIR`: Specifies a directory on which every following command will be run
* `USER`: Specifies an user with which every following command will be run.
* `VOLUME`: Adds a [[volume]] to the container. ==What's the difference between this and the `-v` flag?==
* `COPY`: Copies a file or directory from the host to the container. Any copied files must be in the [[build-context]]. Also, any files copied will be owned by `root` regardless of whether you've used `USER` before.
* `ADD`: Like `COPY`, but can also take an URL to download a file, and also extracts `.tar`s (and maybe `.zip`s and other compression formats?). Docker determines the source is a directory if the destination ends in `/` and a file otherwise.
* `LABEL`: Adds metadata that can then be seen using [[inspect]]. Example: `LABEL maintainer=haf`. You can add several labels by separating them with whitespace
* `ARG`: Defines an argument that can be passed to the build process by using `--build-arg`. e.g. if you declare `ARG env` then you can do `docker build --build-arg env=dev`
* `SHELL`: Changes the shell that will be used to run the commands. The default is `["/bin/sh", "-c"]`
* `HEALTHCHECK`: Specifies a command that will be run periodically to check whether the container is working as intender. You can pass arguments like:
  * `--interval=10s` to control how frequently it runs
  * `--timeout`
  * `--retries`
* `EXPOSE`: Opens a port. But it still needs to be forwarded to be used on the host.
* `VOLUME`: Creates a [[volume]] definition in the image. This is more limiting than defining it at runtime (via the `-v` flag) since you can't use some options such as bind volumes or read-only volumes. The only thing this instruction does is creating the path in the image and adding the volume to the image's metadata.
* `ONBUILD`: Specifies instructions to run automatically if this image is used as a base image for another. For example you could use it define a base layer for a compiler and automatically compile any image that inherits from it: `ONBUILD RUN go build /var/myapp`. These insructions aren't run when the image containing them is built, but instead saved into the metadata (`ContainerConfig.OnBuild`) for the use of child images.


## `ENTRYPOINT` + `CMD`
You can declare an `ENTRYPOINT` for a default command that will run and every container run, and a `CMD` for its default arguments that can be overriden by the user.
