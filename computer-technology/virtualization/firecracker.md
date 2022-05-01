# Amazon Firecracker
The open source tool Amazon uses for their FaaS offering. It enables virtual machines to be booted up as quickly as a container, so it provides the isolation benefits of a VM without the startup costs. I've read about how it manages so from two different sources and both mention different things with no mention of the other:

- Firecracker can take a snapshot of a VM in a perfectly ready state (all packages installed, all necessary software already started, etc.) and then start it up really fast.
- Firecracker removes kernel functionality that's not needed for a VM to function, mainly removing most of the generic device functionality and just leaving the bare minimum of it.

[Learn more in this article](https://webapp.io/blog/github-actions-10x-faster-with-firecracker/)
