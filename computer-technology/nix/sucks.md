---
tags: sucks
---

# What sucks about Nix
* There seems to be no way yet to share secrets with declarative [[nixos-container|containers]] without making them world-readable. The container user will be different to the one that owns the secrets outside of it, and the owner can't be remapped inside the container. There's [this solution](https://gist.github.com/aszlig/87ada90a76c9ba0faa4a1b4a087eb8a9) but that's rather complex.
