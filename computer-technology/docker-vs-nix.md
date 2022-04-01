---
tags: comparison
---

# [[docker]] vs [[nix]]
Docker and Nix are completely different tools with different goals and principles in mind, but both have an overlap when it comes to achieving reproducibility:
* An application or whole stack can be made into a Docker image and then a reproducible container can be created from it every time
* An application can be made into a Nix package ([[derivation]]) which has very high reproducibility guarantees. A whole stack can be made into a [[nixos]] `configuration.nix` which is also very reproducible.

Their approaches are also wildly different:
* Docker focuses on separating build steps onto read-only layers which can be shared among images.
* Nix has an immutable [[nix-store]] onto which packages are installed. Building a package is a greatly isolated process: networking is restricted, filesystem access is limited, environment variables are cleared...

## Pinning versions
Nix wins at this one by a lot. When using flakes, every package is pinned at the exact version it was in [[nixpkgs]] when it was built. Docker, on the other hand, depends on distribution's repositories, which are always changing. You can work in some ways of pinning dependencies, but these are wildly different from distro to distro, and also time consuming. Nix's flakes do this automatically. Also maybe [[docker/dont-update|not updating repositories helps]] but definitely not a silver bullet.

There's also some other nuances to consider:
* Docker's layer identity depends only on the command that was run. (But there is also a [[content-addressable-storage]] model by [[docker/digest]]? I don't know much about it)
* A Nix package is identified by the commands run, every environment variable, every present package in the system, their dependencies, their versions, etc. For [[fixed-output-derivation]]s, they are fully identified by their contents, so completely reproducible. Also there's some [[content-addressable-storage]] model about which I know nothing.

## Composability
Docker uses some sort of inheritance model, you can inherit from a base layer and get everything it has. But you can't inherit from several layer, and thus can't compose more complex images from simpler ones. Nix on the other hand has a full-blown programming language (which I love, but seems like I'm the only one) that allows performing any complex logic for composing a package or environment.

## Performance
I think both are on par on this one. At leas for building, they take different approaches:
* Docker shares layers between images, so only a small subset of them need to be redownloaded and rebuilt on each build
* Nix shares built packages from the Nix store (and binary caches), which is almost exactly the same, only on a more granular level. In my experience, there's no operative difference.

On the other hand, maybe Nix has better runtime performance, since a full NixOS deployment is "bare-metal" or "native", while a Docker deployment is containerized, and may be subject to overheads like:
* Docker network firewall
* [[union-filesystem]] copy-on-write overhead

In any case, this also means Docker might be more secure.

## Deployment
Maybe Docker wins here. Nix doesn't really offer any deployment features by itself, but there's [[nixops]], or a handful of other similar tools. A [[nixos]] system is reproducible so some tools simply allow deploying the configuration to a server.

Docker however offers some orchestration features like:
* `docker-compose` allows depending on services, healthchecks, linking machines by networks...
* Docker has [[swarm-mode]] which is a fully-featured orchestration ecosystem.
* Docker has its own DNS for deployed containers which allows [[service-discovery]]
* Docker has the [[ingress-netwrok]] which allows [[load-balancing]] and routing.
