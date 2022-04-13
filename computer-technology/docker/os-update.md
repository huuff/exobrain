# Updating the OS in Docker
I've seen around it being called an antipattern:

> Don't run commands like `apt-get -y update` or `yum -y update` in your Dockerfile

This requires crawling the repository index every time a build is run. This causes some inconveniences:
* The output of the build will change if the repositories change
* Refreshing the repositories takes time
* Refreshing the repositories creates a cache that will create the image heavier. Check out [[removing-package-manager-cache]]

So it seems like sound advice, doesn't it?

## But you fucking have to
Coming from [this StackOverflow question](https://askubuntu.com/questions/1050800/how-do-i-remove-the-apt-package-index):

> When you're building a docker image you try to keep it the smallest possible. So who builds an image installing a package removes the cache to keep il small. The consequence is that you must run `apt-get update` if you want to install any package.

## The "solution"
I've seen it around a couple books already

> Base your image on another that already has the updates installed and where the versions are in a known state. It will be faster and more repeatable

Seems like how to do it is left as an exercise to the reader. This solution seems very hacky when compared with [[nix]]. I really don't know if there's any solution for `apt` or `yum` that will let you pin versions of dependencies declaratively in a single source that will be easy to check or modify.
