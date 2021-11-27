# NixOS containers are added to hosts or whatever
I just checked that by creating a NixOS container such as

`sudo nixos-container create flake-test --flake .`

We can just access it like

`curl http://flake-test/`

Or even

`curl flake-test`

[Source](https://www.tweag.io/blog/2020-07-31-nixos-flakes/#creating-a-nixos-configuration-flake)
