# Image scanning
A great tool for providing security for docker images. An image scanner scans every package inside an image and checks whether there is a published [[cve]] affecting its version and alerts the user when there are any.

Image scanners might check the following:
* Image metadata
* Image layers
* Operating system packages such as `deb`, `rpm`, `apkg`
* File data
* Application dependency packages:
  * Ruby gems
  * NPM packages
  * Java archives
  * Python packages
* File content

Two commonly used image scaners are Anchore Engine and Trivy

## Integrating them
There are many steps at which you could integrate them such as
* At build-time in your CI process
* At run-time, for example as a [[admission-controller|Kubernetes admission controller]]

But the best solution is to integrate them with the image registry. This is because new vulnerabilities are constantly discovered, and by they time they are found, your container is already built and running, so a repository integration provides constant check even for older (but maybe still used) images.

Also, scanning images at deployment time might be wasteful of resources, since the same image might be scanned multiple times.
