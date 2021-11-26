{
  description = "Exobrain - My personal Zettelkasten";

  inputs = {
    emanote.url = "github:srid/emanote/master";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, emanote, ... }:
  let
    system = "x86_64-linux";
    pkgs = import nixpkgs { inherit system; };
    emanotePkg = emanote.defaultPackage.${system};
  in with pkgs;
  {
    devShell.${system} = mkShell {
      nativeBuildInputs = [
        emanotePkg
      ];
    };

    defaultApp.${system} = {
      type = "app";
      program = "${emanotePkg}/bin/emanote";
    };
  };
}
