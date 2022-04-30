# Image scanning
A great tool for providing security for docker images. Image scanners scan all packages available inside an image and alert of any vulnerable ones.

## Integrating them
There are many steps at which you could integrate them such as
* At build-time in your CI process
* At run-time, for example as a [[admission-controller|Kubernetes admission controller]]

But the best solution is to integrate them with the image registry. This is because new vulnerabilities are constantly discovered, and by they time they are found, your container is already built and running, so a repository integration provides constant check even for older (but maybe still used) images.
