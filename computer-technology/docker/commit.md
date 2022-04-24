# `commit`
An imperative command for creating images, might be useful sometime but a Dockerfile is generally better. Using `commit` you create a container, perform some changes and then `commit` them to create a new image that includes these changes.

You can also provide some flags:
* `-a` to set an author
* `-m` to set a commit message
