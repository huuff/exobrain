---
tags: pattern
---

# Allowing a containers to use the Docker API in the host
This is a recurring pattern for containers that may monitor or manage other containers in the same host. It requires two things:

* Run the container as an user that can access the Docker api, such as `root` or `docker`
* Mount the hosts' Docker API socket into the container like: `-v /var/run/docker.sock:/var/run/docker.sock`
