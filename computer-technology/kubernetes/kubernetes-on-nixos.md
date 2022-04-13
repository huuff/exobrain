# Installing Kubernetes on NixOS
Most of it is in [this guide](https://nixos.wiki/wiki/Kubernetes) but there are some caveats:
* It specifies port `6443` in the master and then uses `443` in the worker. Both should be the same
* Something about `certmgr` and `etcd` fail, but it works after just rebuilding

Ironically, (considering it's NixOS), every misconfiguration leaves a lot of cruft behind, and that'll prevent you from getting it right the next time. You have to:

* Remove all mutable configuration files: `rm -rf /var/lib/kubernetes /var/lib/etcd /var/lib/cfssl /var/lib/kubelet /etc/kube-flannel /etc/kubernetes`
* Comment out all Kubernetes config in your `configuration.nix`
* Rebuild the system so everything related to Kubernetes is removed
* Uncomment the configuration (and make any necessary amends)
* Rebuild the system again
