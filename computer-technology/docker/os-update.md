# Updating the OS in Docker
I've seen around it being called an antipattern:

> Don't run commands like `apt-get -y update` or `yum -y update` in your Dockerfile

This requires crawling the repository index every time a build is run. This causes some inconveniences:
* The output of the build will change if the repositories change
* Refreshing the repositories takes time
* Refreshing the repositories creates a cache that will create the image heavier. Check out [[removing-package-manager-cache]]

So it seems like sound advice, doesn't it?

## Well you fucking can't (or at least, I can't)
Coming from [this StackOverflow question](https://askubuntu.com/questions/1050800/how-do-i-remove-the-apt-package-index):

> When you're building a docker image you try to keep it the smallest possible. So who builds an image installing a package removes the cache to keep il small. The consequence is that you must run `apt-get update` if you want to install any package.
