---
tags: how-to
---

# Firewall block for Kubernetes in NixOS
```nix
firewall = {
  allowedTCPPorts = [ 6443 2379 2380 10250 10259 10257 80 443 ];
  allowedUDPPorts = [ 8285 8472 ];
  allowedTCPPortRanges = [ { from = 30000; to = 32767; } ];
};
```

Things to note:
* These are all ports for both a controller and a worker. I doubt you'll run both in the same host unless it's for testing purposes, but I prefer having it simpler in a single block and having a couple unnecessary ports open than having to keep two separate blocks (though it might change). Some of them are a bit ambiguous, I allowed the [[node-port]] range (`30000` to `32767`), but you might or might not want this open on your controller depending on whether you want to have `NodePort` services accessible via the controllers' address.
* These include the `flannel` ports (I think they are the UDP ones only?). You might use other CNI provider (But flannels enabled by default by NixOS)
* These include `80` and `443` because I run on bare-metal, don't want to pay for a pool of IPs for MetalLB and run `ingress-nginx` with `hostNetwork: true`. 
